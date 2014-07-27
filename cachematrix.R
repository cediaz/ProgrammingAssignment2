## This program will take the inverse of a matrix
## You have to provide an invertible matrix

## Introduces the invertible matrix 

makeCacheMatrix <- function(x = matrix()) {
  
  i = NULL
  
  #Set the matrix
  
  setx <- function(matrix) {
    x <<- matrix
    i <<- NULL
  }
  ##Get the Matrix
  getx = function() {
  #Return matrix
  x
  }
  # Set the matrix inverse
  setInvx = function(inverse) {
  i <<- inverse
  }
  #Get matrix inverse
  getInvx = function() {
  i
  }
  #List of methods
  list(setx = setx, getx = getx,
     setInvx = setInvx,
     getInvx = getInvx)
}


## Calculate & return the inverse of a matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  y = x$getInvx()
  
  if(!is.null(y)) {
    return(y)
  }
  
  data = x$getx()
  
##Calculate the inverse of x  
y = solve(data) %*% data

x$setInvx(y)

##Print inverse

y

}
