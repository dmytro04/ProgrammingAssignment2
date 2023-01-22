## Put comments here that give an overall description of what your
## functions do

## making cache matrix and saving it in y

makeCacheMatrix <- function(x = matrix()) {
      y<<-solve(x) 
      last_m<<-x
}


## checking if inverse matrix is cached

cacheSolve <- function(x, ...) {
        m<-NULL
        a<-NULL
        if(exists("m")&&exists("last_m")){
        m<-y
        a<-last_m
        }
        if(!is.null(m)&&x==a){
              message("getting cached data")
              return(m)
        }
        else{
              m<-solve(x)
        }
        m
}

