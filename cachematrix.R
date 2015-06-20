## Put comments here that give an overall description of what your
## functions do
##Functions that makes a cache of an inverse of a matrix, in order to avoid repeating calculations
## Write a short comment describing this function
##The following function creates a "special" matrix
makeCacheMatrix <- function(x = matrix()) {
i<-NULL
  get <- function() x
  ##the following step caches the inverse from cacheSolve
  setinverse <- function(solve) i <<- solve
  getinverse <- function() i
  ##the list of functions produced by makeCacheMatrix
  list(get=get,
       setinverse = setinverse,
       getinverse = getinverse)}
}


## Write a short comment describing this function
##The following function computes or withdraw from the cached memory the inverse matrix
cacheSolve <- function(x, ...) {i <- x$getinverse()
if (!is.null(i)) {
  message("getting cached data")
  return(i)}
##when there isn't any inverse table alreaydy calculated, the next step caches its value
data <- x$get()
i <- solve(data, ...)
x$setinverse(i)
        ## Return a matrix that is the inverse of 'x'
i}
