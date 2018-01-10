## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function will accept a matrix as an Input and store its Inverse in memory/Cache.


makeCacheMatrix<-function(x = matrix()){
     i <- NULL
     set <- function(y) {
      x <<- y
      i <<- NULL
    }
    get <- function() x
    setinverseMatrix <- function(inverseMatrix){
      i <<- inverseMatrix
    }
    getinverseMatrix <- function() {
      i
    }
    list(set = set, get = get,setinverseMatrix = setinverseMatrix,getinverseMatrix = getinverseMatrix)
  }



## Write a short comment describing this function
## This function will return the inverse from the Cache. If Null then it will create the Inverse and 
## set in the cache using the makeCacheMatri function

cacheSolve<-function(x) {
        ## Return a matrix that is the inverse of 'x'
    ## Return a matrix that is the inverse of 'x'
     inverseMat <- x$getinverseMatrix()
     if(!is.null(inverseMat)){
       message("getting cached data")
       return(inverseMat)
     }
     data<-x$get()
     inverseMat <-solve(data)
      x$setinverseMatrix(inverseMat)
      inverseMat
     
}
