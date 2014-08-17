### Introduction

This is programming assignment 2 for rprog-006 on Coursera. It consists of two functions: one that creates a matrix storage object and another that solves for an inverse matrix, but caches the result if it's already solved that matrix before.

### Usage

```
> z <- makeCacheMatrix(matrix(c(1, 3, 5, 7), nrow=2, ncol=2))
> cacheSolve(z)
calculating inverse and returning result
       [,1]   [,2]
[1,] -0.875  0.625
[2,]  0.375 -0.125
> cacheSolve(z)
returning cached result
       [,1]   [,2]
[1,] -0.875  0.625
[2,]  0.375 -0.125

```
