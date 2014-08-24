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


## this function calculates the inverse of a given matrix x
 # if this is already stored the cached data are got
 # if not, the internal cache is filled with the newly calculated data

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        xi <- x$getinverse()
	if(!is.null(xi)){
		message("getting cached data")
		return(xi)
	}
	data <- x$get()
	xi <- solve(data)
	x$setinverse(xi)
	xi
}
