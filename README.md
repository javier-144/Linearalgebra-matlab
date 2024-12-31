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
