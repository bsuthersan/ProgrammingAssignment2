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
