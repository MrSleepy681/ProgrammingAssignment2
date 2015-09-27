## R code designed to calculate and cache the inverse of a matrix
## Script is Composed of two functions - makeCacheMatrix and cacheSolve 

## makeCacheMatrix will create a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
       m <- NULL
       set <- function (y){
              x <<- y
              m <<- NULL
       }
       get <- function()x
       setInverse <- function(solve) m<<- mean
       getInverse <- function() m
       
       list(set = set, get = get, 
            setInverse = setInverse,
            getInverse = getInverse)
}


## cacheSolve will compute the inverse of the special "matrix" returned by makeCacheMatrix.
## If the inverse has already been calculated, then cacheSolve should retrive the inverse from cache.
cacheSolve <- function(x, ...) {
       m <- x$getInverse()
       if(!is.null(m)){
              message("getting cached data")
              return (m)
       }
       data <- x$get()
       m <- mean (data,...)
       x$setInverse(m)
       m
##Return a matrix that is the inverse of 'x'
}

