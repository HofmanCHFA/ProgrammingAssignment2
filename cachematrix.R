## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function will store the matrix in cacha to allow faster computing 

makeCacheMatrix <- function(matrix = matrix()) {
  inverse <- NULL
  setmatrix <-  function(y){
    matrix <<- y
    inverse <<- NULL
  }
  getmatrix <- function() matrix
  setinversematrix <- function(inversematrix) inverse <<- inversematrix
  getinversematrix <- function() inverse
  list(setmatrix = setmatrix, getmatrix = getmatrix, setinversematrix = setinversematrix,
       getinversematrix = getinversematrix)
}


## Write a short comment describing this function
#This function will calculate the inverse matrix of the matrix entered
#in the previous function

cacheSolve <- function(matrix, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- matrix$getinversematrix()
  #This will check if you entered a new matrix, and if it is not true
  #it will get the cached matrix
  if(!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
    data <- matrix$getmatrix()
    inverse <- solve(data, ...)
    matrix#setinversematrix(inverse)
    inverse #print the inverted matrix
}
