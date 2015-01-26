## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function get the given matrix (mat) and returns the inverse
##iniciar() set the values of the matrix
##obtener() get the values of the matrix
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

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  invmat<-x$obtenermat()
  if(!is.null(invmat))
  {
    message("getting inverse")
    return(invmat)
  }
  matrix<-x$get()
  invmat<-solve(matrix,...)
  x$iniciarmat(invmat)
  invmat
}
