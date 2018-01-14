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

cacheSolve <- function(x, ...) {
  ##Check if matrix has been inverted yet
  inv <- x$getinverse()
   # If matrix has been inverted, return inverse 
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  # Else, get the matrix, calculate inverse, set it as inverse, and return to user.
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv      
}
