## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# makeCacheMatrix - creates a list with setter and getter functions for
# storing a matrix and its inverse solution
# get / getInverse - get original matrix / get inverse solution (if stored)
# set / setInverse - set original matrix / get original matrix (if stored)

makeCacheMatrix <- function(x = matrix()) {
  # initializing a new matrix, inverse hasn't been calculated yet so
  # setting to NULL
  inv_matrix <- NULL
  # initialize makeCacheMatrix with matrix passed to it as argument
  # (same as calling makeCacheMatrix and then doing a $set)
  stored_matrix <- x
  # set - set intial matrix, means inverse is deleted
  set <- function(y = matrix()) {
    stored_matrix <<- y
    inv_matrix <<- NULL
  }
  # get - returns initial matrix
  get <- function() {
    stored_matrix
  }
  # setInverse - sets inverse matrix
  setInverse <- function(y = matrix()) {
    inv_matrix <<- y
  }
  # getInverse - gets inverse matrix if stored, otherwise NULL
  getInverse <- function() {
    inv_matrix
  }
  # expose functions so they can be called externally
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
