## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  a = NULL
  
  set = function (matrix) {
    
    x <<- matrix
    a <<- NULL
    
  }
  
  get = function() {
    
    x
    
  }
  
  setInverse = function(inverse) {
    a <<- inverse
    
  }
  
  getInverse = function() {
    
    a
    
  }
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  m <- x$getInverse()
  
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  
  data <- x$get()
  
  m <- solve(data) %*% data
  
  x$setInverse(m)
  
  m
}