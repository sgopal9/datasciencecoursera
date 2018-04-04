# In this set of code, I am attempting to create two functions that will cache the inverse of a matrix.

# Create a special matrix object that can cache its inverse

makeCacheMatrix <- function(m = matrix()) {
  
  # Assign the NULL value to a variable that will serve to initialize the inverse 
  i <- NULL
  
  # Set the value of the matrix using the <<- operator
  set <- function(matrix) {
          m <<- matrix
          i <<- NULL
  }
  
  # Get and return the value of the matrix
  get <- function() {
          m
  }
  
  # Set the inverse of the matrix
  setInverse <- function(inverse) {
          i <<- inverse
  }
  
  # Get and return the inverse of the matrix
  getInverse <- function() {
          i
  }
  
  # Generate a list of the functions
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  
}

# The inverse of the matrix will be given by the function listed above. The next function will then retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  
  # Generate a matrix that is the inverse of variable x
  m <- x$getInverse()
  
  # If the inverse has already been calculated, then return that value
  if (!is.null(m)) {
          message("retrieving from cache")
          return(m)
  }
  
  # Get the matrix
  data <- x$get()
  
  # Determine the inverse using the solve function and matrix multiplication (%*%)
  m <- solve(data) %*% data
  
  # Set the inverse and return the matrix
  x$setInverse(m)
  m
  
}