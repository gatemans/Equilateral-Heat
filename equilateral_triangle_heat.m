% MATLAB Script: equilateral_triangle_heat.m
% Description: Solves the steady-state heat equation for an equilateral triangle
%              with user-defined side length and heat source.
% Author: [Your Name]
% Date: [Date]

% Clear workspace
clear; clc;

% Title
disp('Steady-State Heat Equation Solver for an Equilateral Triangle');

%% Input Parameters
% Get the length of the side of the equilateral triangle
side = input('Enter the length of the side of the equilateral triangle (e.g., 1): ');
if side <= 0
    error('Side length must be positive.');
end

% Get the value of the heat source
q = input('Enter the heat source value q (e.g., 10): ');

%% Geometry Definition
% Calculate the coordinates for the equilateral triangle
height = (sqrt(3) / 2) * side; % Height of the equilateral triangle
x_main = [0, side, side / 2];  % X coordinates
y_main = [0, 0, height];       % Y coordinates
geometry = [2; 3; x_main(1:3)'; y_main(1:3)']; % Define the triangle geometry
gd = decsg(geometry);          % Detailed geometry

% Create PDE model
model = createpde;

% Add geometry to the model
geometryFromEdges(model, gd);

%% Define PDE: ∇²T + q = 0
specifyCoefficients(model, 'm', 0, 'd', 0, 'c', 1, 'a', 0, 'f', q);

%% Boundary Conditions
% Fixed temperature boundary conditions
applyBoundaryCondition(model, 'Edge', 1, 'u', 100); % Edge 1: T = 100
applyBoundaryCondition(model, 'Edge', 2, 'u', 20);  % Edge 2: T = 20
applyBoundaryCondition(model, 'Edge', 3, 'u', 100);  % Edge 3: T = 100

%% Mesh Generation
% Generate a triangular mesh
generateMesh(model, 'Hmax', 0.1);  % Maximum mesh size

%% Solve PDE
results = solvepde(model);
T = results.NodalSolution;  % Temperature distribution at nodes

%% Plot Results
figure;
pdeplot(model, 'XYData', T, 'Contour', 'on', 'ColorMap', 'hot');
title('Temperature Distribution in an Equilateral Triangle');
xlabel('X');
ylabel('Y');
colorbar;

disp('Solution complete. Plot displayed.');

