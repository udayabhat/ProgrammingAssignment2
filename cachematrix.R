
## udaya bhat  functions that cache the inverse of a matrix


## udaya bhat  matrix object that can cache its inverse
makeCacheMatrix <- function( m = matrix() ) {
  
  ## Initialize
  i <- NULL
  
  ## set the matrix
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  ##  get the matrix
  get <- function() {
    
    m
  }
  
  ## set the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ## get the inverse of the matrix
  getInverse <- function() {
    
    i
  }
  
  ## Return a list of the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Write a short comment describing this function


cacheSolve <- function(x, ...) {
  
  ## Return a matrix 
  m <- x$getInverse()
  
  ## return the inverse if its already set
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  
  
  data <- x$get()
  
  ## Calculate the inverse
  m <- solve(data) %*% data
  
  ## Set the inverse 
  x$setInverse(m)
  
  
  m
}
###by udaya bhatcacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
###by udaya bhat}