## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## the function checks if the matrix is a square one and stop if not
## the "cache" is set to NULL 
## three function are created: the first one retrieve the matrix
## the second one calculates the inverse of the matrix and put the result in cache
## the third one retrieve the cached data
## The three functions are saved into a list

makeCacheMatrix <- function(x = matrix()) {
 if(dim(x)[1]!=dim(x)[2]){
    message('Please insert a square matrix')
    break
  }
  m <- NULL
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function
## Set m to the element "getinverse" of the list x (a 'makeCacheMatrix' list) 
## check if it is emty or not
## if it is not empty the function will retrieve the cached inverse matrix with the relative message
## if it is empty the function will retrieve the original matrix 
## it will calculate the inverse and store it in cache

cacheSolve <- function(x, ...) {
         m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
