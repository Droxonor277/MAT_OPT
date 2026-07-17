# B0B33OPT – Optimization

This repository contains source code and solutions to programming assignments from the course **B0B33OPT – Optimization** at the Faculty of Electrical Engineering, Czech Technical University in Prague.

The projects demonstrate how mathematical optimization can be used to solve practical problems in data analysis, regression, signal processing, geometry, control, and decision-making.

## Repository Contents

### Least-Squares Regression

Implementation of linear least-squares methods for fitting mathematical models to measured data.

The assignments include:

* prediction of average gross wages from historical data,
* interpolation of daily temperatures using a periodic model,
* construction of regression matrices,
* estimation of unknown model parameters,
* evaluation and visualization of fitted models.

### Autoregressive Time-Series Modelling

Implementation of an autoregressive model for describing and predicting sampled signals.

The code estimates model parameters from measured data using least squares and recursively generates future signal values. A recorded gong sound is used as an example of time-series modelling and signal compression.

The assignment focuses on:

* autoregressive models,
* system identification,
* time-series prediction,
* signal reconstruction,
* least-squares parameter estimation.

### Circle Fitting

Implementation of several methods for fitting a circle to a set of two-dimensional points.

The project includes:

* calculation of point-to-circle distances,
* non-homogeneous algebraic circle fitting,
* homogeneous circle fitting,
* conversion between algebraic and geometric circle representations,
* comparison of different fitting criteria,
* visualization of fitted circles.

### Robust Circle Fitting with RANSAC

Implementation of the RANSAC algorithm for estimating a circle from data containing outliers.

The algorithm repeatedly selects random point triples, constructs candidate circles, identifies inliers, and returns the circle supported by the largest consensus set.

### Nonlinear Least-Squares Optimization

Iterative optimization of the geometric circle-fitting objective using nonlinear least-squares methods.

Implemented methods include:

* gradient descent,
* Gauss–Newton method,
* Levenberg–Marquardt method,
* objective-function evaluation,
* convergence analysis,
* influence of the step size and damping parameter.

### Gaussian Curve Fitting

Implementation of the Gauss–Newton algorithm for fitting a Gaussian function to measured data.

The project demonstrates:

* nonlinear model fitting,
* residual and Jacobian construction,
* iterative parameter updates,
* convergence of nonlinear least-squares methods.

### Principal Component Analysis and SVD

Implementation of dimensionality-reduction methods based on eigenvalue decomposition and singular value decomposition.

The code includes:

* fitting points with linear and affine subspaces,
* projection into lower-dimensional spaces,
* reconstruction of approximated data,
* approximation-error calculation,
* data compression,
* two-dimensional and three-dimensional visualization.

### Motion-Capture Compression

Application of PCA to motion-capture sequences.

Three-dimensional marker positions are represented in a lower-dimensional affine subspace, reducing the amount of stored data while preserving the important structure of the movement.

The project explores:

* dimensionality reduction,
* motion reconstruction,
* compression quality,
* low-dimensional trajectory visualization,
* approximation error for different subspace dimensions.

### Parliamentary Voting Analysis

Application of PCA to voting records from the Czech Chamber of Deputies.

The code projects high-dimensional voting data into a two-dimensional space, allowing voting patterns, political groups, and relationships between individual votes to be visualized and interpreted.

### Election Data Analysis

Application of principal component analysis to election results.

The project reduces high-dimensional electoral data to a small number of principal components and uses the resulting representation to identify similarities, regional patterns, and dominant trends in voting behaviour.

### Quadratic Placement

Formulation and solution of a placement problem using linear least squares.

The task finds optimal coordinates of interconnected objects by minimizing a quadratic objective. The implementation uses block matrices and solves the resulting least-squares system without explicit iterative loops.

### Linear Programming

Implementation and formulation of optimization problems with linear objective functions and linear constraints.

The projects include:

* minimax linear regression,
* guaranteed-profit betting strategies,
* fuel-control optimization,
* linear separation of datasets,
* modelling practical word problems as linear programs.

The code typically constructs the objective vector, equality and inequality constraints, variable bounds, and then solves the resulting linear program.

### Minimax Linear Regression

Implementation of an affine regression model that minimizes the maximum absolute prediction error.

Unlike ordinary least squares, the method minimizes the worst-case deviation between the fitted function and the input data. The problem is reformulated and solved as a linear program.

### Guaranteed-Win Betting Strategy

Formulation of a betting strategy as a linear optimization problem.

The program distributes available funds among several possible outcomes so that the minimum guaranteed return is maximized independently of the actual result.

### Fuel-Control Optimization

Application of linear programming to the optimal control of a dynamic system.

The project determines the control input over time while respecting system dynamics and constraints and minimizing total fuel consumption.

### Linear Separation

Use of linear programming to determine whether two datasets can be separated by an affine hyperplane.

The code formulates the separation requirements as linear inequalities and calculates the parameters of the separating decision boundary.

### Simplex Method

Implementation of the simplex algorithm for solving linear programs.

The code demonstrates:

* conversion to a suitable linear-programming form,
* basic and non-basic variables,
* pivot selection,
* tableau updates,
* feasibility and optimality conditions,
* detection of unbounded problems.

### Attracting Balls

Implementation of unconstrained nonlinear optimization for a system of mutually attracting balls.

The total potential energy combines an attractive interaction with a barrier term that prevents the balls from overlapping. Gradient-based methods are used to find configurations with low potential energy.

The project explores:

* non-convex optimization,
* gradient calculation,
* barrier functions,
* step-size selection,
* local minima,
* visualization of optimized configurations.

### Distance from a Quadric

Numerical calculation of the shortest distance between a point and a quadric surface.

The task involves formulating a constrained nonlinear optimization problem and finding a point on the surface that minimizes Euclidean distance.

### Taylor Polynomial

Construction and evaluation of Taylor approximations for multivariable functions.

The code calculates derivatives, builds local polynomial approximations, and compares the approximated values with the original function near the expansion point.

### Container Shape Optimization

Optimization of a container or drinking-glass shape under geometric constraints.

The project demonstrates how a practical design problem can be expressed using an objective function, constraints, and numerical optimization methods.

### Recommender Systems

Implementation of a basic recommender system using low-rank matrix approximation.

The code estimates missing user ratings by factorizing a partially observed rating matrix into lower-dimensional representations of users and items.

The project focuses on:

* matrix factorization,
* low-rank approximation,
* missing-value prediction,
* regularization,
* iterative optimization,
* recommendation quality evaluation.

## Main Topics

The repository covers the following optimization concepts:

* linear algebra and affine subspaces,
* orthogonal projections and QR decomposition,
* linear and nonlinear least squares,
* eigenvalue decomposition and SVD,
* principal component analysis,
* gradients and derivatives,
* unconstrained optimization,
* equality-constrained optimization,
* gradient-based iterative methods,
* linear programming and duality,
* convex sets and convex functions,
* convex and non-convex optimization,
* integer linear programming,
* Lagrangian methods.

## Technologies Used

* Python 3
* MATLAB
* NumPy
* SciPy
* Matplotlib
* numerical linear-algebra and optimization solvers

## Note

This repository contains student implementations created for educational purposes. The selection and structure of assignments may differ between course editions. The code is intended primarily for studying optimization algorithms, numerical experiments, demonstrations, and archival use.
