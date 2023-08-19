# Tower Crane Location Optimization Problem (TCLOP) Repository
Metaheuristic Approach

![Black and Yellow Modern Construction Company Flyer](https://github.com/TahmouresAmirt/Tower-Crane-Optimization-Problem/assets/119577235/cea49a23-f212-479e-90d4-be9c4c80e7fc)


## Overview

Welcome to the Tower Crane Location Optimization Problem (TCLOP) repository. TCLOP is an NP-hard optimization problem, and this repository aims to provide a modeling and optimization solution for TCLOP.

For a detailed understanding of the problem's mathematical modeling, we recommend referring to the paper available at the following link:

**Paper**: [Decision support system for tower crane location and material supply point in construction sites using an integer linear programming model](https://www.emerald.com/insight/content/doi/10.1108/ECAM-06-2021-0517/full/html).

## Implementation

This repository contains the implementation of the TCLOP model and the optimization algorithm for solving it. The provided instructions explain the suggested procedure for modeling and optimizing the problem using different optimization algorithms.

## Instructions

Please follow these steps to utilize the repository effectively:

1. **Model Development**: Use the ModelDeveloper to create the required vectors. If you need to develop a new model, quantify the i, j, and K vectors and identify them as separate files.

2. **Vector Persistence**: Save the vectors Csikn, Dij, Dik, Djk, and emptyCell after the model development.

3. **Genetic Algorithm Optimization**: To run the Genetic Algorithm (GA) optimizer, place the saved vectors in the GA folder.

4. **Configuration**: In the main.m file within the GA folder, specify the total number of independent runs and quantify the required vectors. The problem solution is based on the values in the Data.xlsx file.

5. **Objective Function Definition**: The objective function is defined in TCOP_Problem.

6. **GA Parameter Adjustment**: You can specify the GA parameters in the ga file and then run the algorithm.

7. **Solution Decoding**: Decode the best solution from binary to decimal.

8. **Optimum Solution Identification**: Identify the optimum solution from the emptyCell vector, considering the four types: 1) Crane type, 2) Tower location, 3) Demand point, and 4) Supply point.

For any additional information or inquiries, please contact us at the following email address:

Email: ce.tahmoursi@gmail.com

## Compatibility and Troubleshooting

This repository has been tested using MATLAB 2018 and MATLAB 2021. If you encounter any issues while running the code, please don't hesitate to reach out to us for further instructions.

We hope you find this repository helpful in modeling and optimizing the Tower Crane Location Optimization Problem.
