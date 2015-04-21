#April 21, 2015 18:27 EDT
#RHD

## makeCacheMatrix This function creates a special "matrix" object 
## that can cache its inverse:
makeCacheMatrix <- function(x = matrix()) {
      
  ## olderMatrix: check for existence and create if needed    
  if(!olderMatrix) {
        ## No previous inversions may have happened
        ## Create object to store previous matrix sent for inversion
        olderMatrix <<- NULL  
        ## once inverse is computed, olderMatrix will be assigned "x"
        ## for future change checks 
      } 
  
      ## Let's compute the inverse and return it
      InverseMatrix <- cacheSolve(x, olderMatrix)
      InverseMatrix
}

## cacheSolve: This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then the cachesolve should retrieve the 
## inverse from the cache.

cacheSolve <- function(x, ...) {
        
  
        ## Check if a cache solution exists and matrix is unchanged 
        ## and return a matrix that is the inverse of 'x'
  
        if ((x == olderMatrix)&(cachedInverse)){
          ## Matrix is the same, and an inverse exisits
          ## No need to compute a new inverse, return cachedInverse
          cachedInverse
          
        } else if {
          ## Either matrix has changed or a previous cache doesn't exist
          ## Create the inverse and store it in cachedInverse 
          cachedInverse <<- solve(x)
          ## return cachedInverse object
          cachedInverse
        }
  
}