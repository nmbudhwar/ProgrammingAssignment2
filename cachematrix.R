## Put comments here that give an overall description of what your
## functions do

## The first function, makeVector creates a special "vector", which is really a list containing a function to
## set and get the value of the vector
## set the get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y)
    x<<-y
  m <- NULL
  get <- function() x
  setinverse <- function(solve) m <<-solve
  getinverse <- funcrtion() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## The following function calculates the inverse of the matrix created with the above function. 
## First it will check if the inverse has already been calculated. If so, it will get the inverse matrix from 
## the cache and skips the computation. Otherwise, it calculates the inverse matrix of the data and sets the 
## value of the inverse matrix in the cache via the setinverse function.



cacheSolve <- function(x, ...) {
                                               ## Caching the Inverse of a Matrix
  m <- x$getinverse()
  if(!is.null(m)){
    message('getting cached data')
    return(m)                                  ## Return a matrix that is the inverse of 'x'
  }
  data <- x$get()
  m <- solve(data,...)
  x$setinverse(m)
  m
  
}