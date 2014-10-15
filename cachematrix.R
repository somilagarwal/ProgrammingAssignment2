
## Function to set and get from cache

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    setInverse <- function(inv) inverse <<- inv # set into cache
    getInverse <- function() inverse            # get from cache
    list(setInverse = setInverse,getInverse = getInverse)
}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        inv <- x$getInverse() # Get from cache
        if(is.null(inv)){
            inv <- solve(x) #Calculating inverse of matrix
            x$setInverse(inv) #Setting to cache
            message("getting cached data")
            #If not present in cache compute inverse and cache for future
        }
        inv #return
}
