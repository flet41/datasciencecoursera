
## Put comments here that give an overall description of what your
## functions do

# The two functions below can be used to cache the inverse of a matrix.  
# Matrix inversion is often a costly computation, and there are advantages to caching the inverse 
# of a matrix rather than compute it repeatedly.



## Write a short comment describing this function

#makeCacheMatrix creates a list containing a function to 
#1. set the value of the matrix 
#2. get the value of the matrix
#3. set the value of the inverse of the matrix
#4. get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function() x
  setinverse<-function(inverse) inv <<- inverse
  getinverse<- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}





## Write a short comment describing this function

# The code below returns the inverse of a matrix.  
# It will first check if the inverse has already been computed.  If this is the case, it gets 
# the result and skips the computation.  If this is not the case, it computes the inverse, and 
# sets the value in the cache using the setinverse function 


# The function below assumes the matrix is always invertible. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getinverse()
  if(!is.null(inv)){
    message("getting cached data.")
    return(inv)
  }
  data<-x$get()
  inv<-solve(data)
  x$setinverse()
  inv
  }




