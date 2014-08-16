## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv_matrix <- NULL
  set <- function(y = matrix()) {
    stored_matrix <<- y
    inv_matrix <<- NULL
  }
  get <- function() {
    stored_matrix
  }
  setInverse <- function(y = matrix()) {
    inv_matrix <<- y
  }
  getInverse <- function() {
    inv_matrix
  }
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
