## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    #store a list of a matrix and its inverse
  xinv <- NULL
  set <- function(y){ #sets the value of the matrix in the cache
      x <<- y
      xinv <<- NULL
  }
  get <- function() {x} #retrieves the value of the matrix
  setinv <- function(inv) {xinv <<- inv} #sets the value of the matrix in the cache
  getinv <- function() {xinv}
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    xinv <- x$getinv()  
    if(!is.null(xinv)){   #if inverse already cached, get from cache
        message("Getting cached inverse.")
        return(xinv)
      }
        a <- x$get() # retrieves matrix
        xinv <- solve(a) #creates inverse of matrix
        x$setinv(xinv) #sets the inverse to the cache
        xinv #returns the inverse
  }
