
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


# cacheSolve - solves for the inverse matrix stored in makeCacheMatrix object
# if inverse has already been solved, it caches it in makeCacheMatrix and
# returns the cached solution. Otherwise, it creates the solution and
# caches the result in makeCacheMatrix
# -- takes a makeCacheMatrix object as an argument

cacheSolve <- function(x, ...) {
  # get inverse out of object
  inv_matrix <- x$getInverse()
  # check if there's an inverse that was already stored
  if (!is.null(inv_matrix)) {
    # if so, do nothing and let result be returned
    message("returning cached result")
  }
  else {
    # there is no result so we need to get the initial matrix,
    # solve it, and then store it in the makeCacheMatrix object
    message("calculating inverse and returning result")
    init_matrix <- x$get()
    inv_matrix <- solve(init_matrix)
    x$setInverse(inv_matrix)
  }
  # return either the solved or cached result
  inv_matrix
}
