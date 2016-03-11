## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverse1 <- NULL
        set <- function(y) {
                x <<- y
                inverse1 <<- NULL
        }
        get <- function() x
        setInverse <- function(z) inverse1 <<- z
        getInverse <- function() inverse1
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inverse1 <- x$getInverse()
        if (!is.null(inverse1)) {
                message("getting cached data")
                return(inverse1)
        }
        mat <- x$get()
        inverse1 <- solve(mat, ...)
        x$setInverse(inverse1)
        inverse1
}

