## These functions were created to cache the inverse of a matrix 
## in order to save time. 

## the makeCacheMatrix is a fuction for creating a "special" matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## the cacheSolve function computes the inverse of the makeCacheMatrix and returns the stored inverse from the cache
## if the matrix hasn't changed.

cacheSolve <- function(x, ...) {
    
    ## Return a matrix that is the inverse of 'x'
        
        m <- x$getinverse()
                if (!is.null(m)) {
                        message("getting cached data")
                        return(m)
}
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m

}
