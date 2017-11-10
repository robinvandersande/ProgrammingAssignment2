## This function is written for the Coursera Data Science course R programming.
## The Vector and mean functions on the assignment have been used as examples
## The function creates a special matrix that can cache its inverse like described in the assignment


makeCacheMatrix <- function(x = matrix()) { 
    inv <- NULL
    Set <- function (y){
      x <<- y
      inv <<- NULL
    }
    get <- function () x
    setinverse <- functin(inverse) inv <<- inverse
    getinverse <- funcion () inv
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
      
    }



## This function computes the inverse of the special matrix made above
## If the inverse is already calculated then cacheSolve will retrieve the inverse from the cache


cacheSolve <- function(x, ...) { 
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv} 
