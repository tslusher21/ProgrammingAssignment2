## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function creates a "matrix" that is actually a list of 4 functions
##They do the following: set/get the value of the matrix, set/get the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
##This will calculate the inverse of the matrix created with makeCacheMatrix
##It will first check if it has already been calculated and skip if so
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data)
  x$setinverse(i)
  i
}
