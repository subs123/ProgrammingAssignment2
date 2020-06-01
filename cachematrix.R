## Put comments here that give an overall description of what your
## functions do

## Create a matrix that can solve its cache

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<- function (y){
    x<<-y
    inv<<- NULL
  }
  get<-function ()x
  setinverse<-funcion(solve)inv<<-solve
  getinverse<-function()inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## computes the inverse; if inverse calculated then retrieve inverse from cache

cacheSolve <- function(x, ...) {
  inv<-x$getinverse()## Return a matrix that is the inverse of 'x'
  if (!is.null(inv)){
    print("Getting cached data")
    return(inv)
  }
  dat<-x$get()
  inv<-solve(dat,...)
  x$setinverse(inv)
  inv
}