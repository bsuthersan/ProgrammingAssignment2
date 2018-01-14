makeCacheMatrix <- function(x = matrix()) {
  # Initially set inverse to NULL
  inv <- NULL
  # Set the matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  # Get the matrix
  get <- function() x
  # Set the inverse
  setinverse <- function(inverse) inv <<- inverse
  # Get the inverse
  getinverse <- function() inv
  #Amalgamate into a list.
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}
