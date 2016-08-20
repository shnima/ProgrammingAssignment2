# Firstly, make a matrix by creating a set of functions and list all of them to the parent enviornment

makeCacheMatrix <- function(x = numeric()) {
      matinv <- NULL
      set <- function(y) {
            x <<- y
            matinv <<- NULL
      }
      
      ## whenever the new matrix created, the inverse of matrix will be recreated and cached into the memory
      get <- function() x
      setinv <- function(inverse) matinv <<- inverse
      getinv <- function() matinv
      list(set = set, 
           get = get,
           setinv = setinv,
           getinv = getinv)
}

## list all the funcitons above & used in the following funciton

##########################################################

cacheSolve <- function(x, ...) {
      matinv <- x$getinv()
      if(!is.null(matinv)) {
            message("getting cached data")
            return(inv)
      }
      data <- x$get()
      inv <- solve(data, ...)  ## Calculate the inverse of the matrix
      x$setinv(inv)
      inv
}

