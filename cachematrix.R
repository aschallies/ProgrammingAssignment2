## This function computes inverse of Matrix (aschallies)

## it works

makeCacheMatrix <- function(x= matrix()) {
  inv <- NULL
  set <- function(y) {
    set <<- y
    inv <<- NULL
}
get <- function() x 
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
  


## this funtion cache the inverse of matrix (aschallies)

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
