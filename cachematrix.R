## Put comments here that give an overall description of what your
## functions do
#This function makes a matrix and and then creates the inverse of that matrix. Because the inverse can take a long time to solve,
#the matrix is cached and when needed again, is just taken from the cache.
## Write a short comment describing this function
#This function takes a matrix input and produces a matrix inverse output, but also caches the matrix inverse so that it can be recalled in a different data object.


#this function makes a matrix and its inverse and cahches it for future use outside of this function only
makeCacheMatrix <- function(x = matrix()) {
  m = NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve

}


## Write a short comment describing this function
#this function returns the cached inverse matrix if it exists, or makes it if it does not

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
}
