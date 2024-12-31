# Linearalgebra-matlab
# MATLAB Linear Algebra and Data Analysis Toolkit

## Introduction
This repository offers a collection of MATLAB functions designed to perform various operations in linear algebra and data analysis. These functions perform matrix operations, analyze data through techniques such as polynomial fitting and principal component analysis, and determine various mathematical spaces and subspaces associated with matrices.

## Function Descriptions

### `columnSpace`
Calculates the column space of a matrix, representing all possibl outputs (linear combinations) of the matrix when multiplying it by a vector

### `dividedDifference`
Computes the divided differences for a given set of points, useful in numerical methods for polynomial interpolation

### `fundamentalSubspaces`
Determines the four fundamental subspaces of a matrix: column space, row space, null space, and left null space

### `leftInverse`
Calculates the left inverse of a matrix, if it exists, which is an inverse that can be pre-multiplied to get the identity matrix

### `leftNullSpace`
Finds the left null space of a matrix, consisting of all vectors that result in the zero vector when post-multiplied by the matrix

### `nullSpace`
Determines the null space of a matrix, containing all vectors that yield the zero vector when multiplied by the matrix.

### `orthonormalSubspaces`
Returns all the fundamental subspaces of a matrix but in an orthonormal form, ensuring that all vectors are orthogonal and of unit length.

### `polynomialFit`
Fits a polynomial of specified degree to a set of data points using the least squares method, ideal for modeling and regression analysis.

### `rankNormalForm`
Transforms a matrix into its rank normal form, outputting the transformation matrices and the rank form matrix.

### `rightInverse`
Calculates the right inverse of a matrix, if it exists, which can be post-multiplied to obtain the identity matrix.

### `rowSpace`
Finds the row space of a matrix, representing all possible linear combinations of its row vectors.

## Getting Started

### Downloading and Installing
To utilize these functions, you need to download the repository and include the files in your MATLAB environment. As long as the functions and the script you are working on are in the same folder, the functions will work. Can be downloaded either through the terminal using git clone or downloaded as a zip and dealt with manually.

## Examples
The following examples demonstrate how to use the toolkit's functions effectively. These examples can also be found in the included MATLAB live script file, `sample_usage_livescript.mlx`

### Polynomial Regression Example

**Generating and Fitting Data:**
Here, we generate sample data that fits a noisy quadratic polynomial and then use our `polynomialFit` function to fit a quadratic model to the data.

```matlab
% Clear previous environment
clear; clc;

% Generate sample data
X = linspace(-10, 10, 20)';  % 20 points from -10 to 10
Y = 5*X.^2 + 3*X + 2 + randn(size(X))*20;  % quadratic equation with some noise

% Number of coefficients (for a quadratic fit we need 3 coefficients)
numCoeffs = 3;

% Fit the polynomial using the custom function
coeffs = polynomialFit(X, Y, numCoeffs);

% Display the coefficients
fprintf('The fitted polynomial coefficients are:\n');
disp(coeffs);

% Plot the original data and the fitted polynomial
scatter(X, Y, 'filled');
hold on;
xFine = linspace(min(X), max(X), 100);  % create a dense grid for a smoother plot
yFit = polyval(coeffs, xFine);  % evaluate the polynomial at the grid points
plot(xFine, yFit, '-r', 'LineWidth', 2);
title('Polynomial Fit to Data');
xlabel('X');
ylabel('Y');
legend('Data Points', 'Fitted Polynomial', 'Location', 'Best');
hold off;
```

**Output:**
```
The fitted polynomial coefficients are:
    5.0067
    2.1751
    1.1678
```

*in the mlx file, a plot would display heret*

### Principal Component Analysis Example

**Analyzing Data:**
Perform PCA on a randomly generated dataset to find principal components that explain at least 50% of the variance:

```matlab
% Generate some random data
data = rand(100, 5);

% Perform PCA to find the components
[loadings, explainedVariance, cumulativeVariance] = principalca(data, 0.50);

% Display results
disp('Loadings (Principal Component weights) mapped to original columns:');
disp(loadings);
disp('Explained Variance by each Principal Component:');
disp(explainedVariance);
disp('Cumulative Variance explained by selected components:');
disp(cumulativeVariance);
```

**Output:**
```
Loadings (Principal Component weights) mapped to original columns:
Component 1:
    0.4003
    0.4584
    0.6490
   -0.2693
   -0.3687
Component 2:
    0.1546
   -0.6006
    0.0561
    0.3201
   -0.7140
Component 3:
    0.5547
   -0.3053
   -0.3799
   -0.6729
    0.0454

Explained Variance by each Principal Component:
    0.2448
    0.2143
    0.2038

Cumulative Variance explained by selected components:
    0.6630
```

### Rank Normal Form Example

**Matrix Transformation:**
Transform a non-invertible matrix into its rank normal form:

```matlab
% Define a non-invertible rank 2 matrix
A = [1 2 3; 4 5 6; 7 8 9];

% Get the rank normal form and associated transformation matrices
[P, Q, R] = rankNormalForm(A);
A*[1 -2 1]' % Check if right of Q is in the nullspace

% Display the transformation matrices and results
disp('Transformation matrices P, Q and the rank normal form R:');
disp(P);
disp(Q);
disp(R);
```

**Output:**
```
Transformation matrices P, Q and the rank normal form R:
P = 3×3    
         0   -

2.6667    1.6667
         0    2.3333   -1.3333
    1.0000   -2.0000    1.0000

Q = 3×3    
     0     0     1
     2     1    -2
    -1     0     1

R = 3×3    
    1.0000    0.0000   -0.0000
    0.0000    1.0000   -0.0000
         0         0         0

ans = 3×1    
     0
     0
     0
```

