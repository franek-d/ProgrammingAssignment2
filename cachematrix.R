## this function is written to overcome the time consuming calculation of the innverse 
## of a matrix by storing it in a constructed matrix-object 

## the function stores the inverse of a matrix using the setinverse command
 # if it is already stored you can get it by typing m$getinverse()

makeCacheMatrix <- function(x = matrix()) {
        xi <- NULL
	set <- function(y){
		x <<- y
		xi <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) xi <<- inverse
	getinverse <- function() xi
	
	list(set=set, get=get,
		setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
