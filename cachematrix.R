## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function get the given matrix (mat) and returns the inverse
##iniciar() set the objects on the parent environment
##obtener() gets the matrix to be inversed
##iniciarmat() solves the input matrix and inverses it, returning the inversed matrix
##obtenermat() get the inversed matrix
makeCacheMatrix <- function(x = matrix()) {
  ##My file
  invmat<-NULL
  iniciar<-function(y)
  {
    x<<-y
    invmat<<-NULL
  }
  obtener<-function() x
  iniciarmat<-function(solve) invmat<<- solve
  obtenermat<-function() invmat
  list(iniciar=iniciar,obtener=obtener,iniciarmat=iniciarmat, obtenermat=obtenermat)
}


## Write a short comment describing this function
##This function searchs the current environment and the parent environment
##for the "invmat" value, if it finds the value returns it and if the value is null
##this function calculate the inverse of the given matrix and stores it in the parent
##environment (cached)
cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  invmat<-x$obtenermat()
  if(!is.null(invmat))
  {
    message("getting inverse") ##It may takes a while if the matrix is big enough
    return(invmat)
  }
  matrix<-x$obtener()
  invmat<-solve(matrix,...)
  x$iniciarmat(invmat)
  invmat
}
