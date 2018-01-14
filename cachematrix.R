## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# makeCacheMatrix is a function that returns a list of functions

# Its puspose is to store a martix and a cached value of the inverse of the 

# matrix. Contains the following functions:

# * setMatrix      set the value of a matrix

# * getMatrix      get the value of a matrix

# * cacheInverse   get the cahced value (inverse of the matrix)

# * getInverse     get the cahced value (inverse of the matrix)
makeCacheMatrix <- function(x = matrix()) {
  
    i <- NULL
    
    set <- function(y) {
      
      x <<- y
      
      i <<- NULL
      
    }
    
    get <- function() x
    
    setinverse <- function(inv) i <<- inv
    
    getinverse <- function() i
    
    list(
      
      set = set,
      
      get = get,
      
      setinverse = setinverse,
      
      getinverse = getinverse
      
    )
    
  }

}


## Write a short comment describing this function
## Calculate the inverse of the special "matrix" created with the above

## function, reusing cached result if it is available
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  cacheSolve <- function(x, ...) {
    
    i <- x$getinverse()
    
    if(!is.null(i)) {
      
      message("getting cached data")
      
      return(i)
      
    }
    
    m <- x$get()
    
    i <- solve(m, ...)
    
    x$setinverse(i)
    
    i
    
  }
  }
}
