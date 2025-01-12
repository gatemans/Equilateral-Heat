# Equilateral Triangle Heat Equation Solver

This MATLAB script solves the steady-state heat equation for an equilateral triangle with user-defined side length and heat source.

## Features
- Flexible input for side length and heat source value.
- Solves the heat equation using finite element analysis.
- Visualizes the temperature distribution using contour and heat maps.

This project provides a MATLAB implementation of the steady-state heat equation solver for an equilateral triangle. The solver uses the finite element method (FEM) provided by MATLAB's PDE Toolbox to compute the temperature distribution within the triangle. The script allows users to define key parameters, such as the side length of the triangle and the heat source value, making it flexible and suitable for educational and research purposes.

Key Features
Custom Geometry: Automatically calculates the vertices of an equilateral triangle based on the user-specified side length.
Steady-State Heat Equation: Solves the equation ∇²T + q = 0, where 
𝑞
q is the heat source.
Boundary Conditions: Allows fixed temperature values on each edge of the triangle.
Visualization: Generates a contour plot and heat map of the temperature distribution.
User-Friendly Input: Prompts users for side length and heat source value for easy customization.
Applications
Heat transfer analysis in triangular geometries.
Understanding steady-state solutions in 2D domains.
Educational tool for learning finite element methods and PDE solving in MATLAB.
How It Works
Input Parameters: Users define the triangle's side length and heat source 
𝑞
q.
Geometry Definition: The vertices of the equilateral triangle are calculated, and the PDE Toolbox is used to create the geometry.
PDE Specification: The heat equation is defined with appropriate coefficients.
Boundary Conditions: Fixed temperature values are applied to each edge.
Mesh Generation: A fine triangular mesh is generated to ensure accurate numerical solutions.
Solution Computation: The PDE Toolbox computes the temperature distribution using FEM.
Results Visualization: A plot of the temperature distribution is displayed, including contour and color map visualization.
