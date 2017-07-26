library(foreach)
x = foreach(i=1:10) %do% sqrt(i) # using binary operator
x # result is list by default
class(x)
unlist(x)

y = foreach(a=1:3, b=rep(10,3)) %do% (a+b) # parentheses are needed here
x = foreach(a=1:3, b=rep(10,3)) %do% { # can also use braces
  a+b # called iteration variables
}
x

z = foreach(a=1:1000, b=rep(10,2)) %do%{
  a+b
}
z # determined by the shorter iteration variable

z = foreach(i=1:3, .combine = "c") %do% exp(i) # .combine to concatenate all the results
z # "c" - return vector

x = foreach(i=1:4, .combine = "rbind") %do% rnorm(4)
x # "cbind" or "rbind" - return matrix

x = foreach(i=1:4, .combine = "+") %do% rnorm(4)
x # plus all results, can also use "*" and others to combine results


cfun = function(a, b) NULL
x = foreach(i=1:4, .combine = "cfun") %do% rnorm(4)
x # specify a user-written function to combine results

cfun = function(...) NULL
x = foreach(i=1:4, .combine = "cfun", .multicombine = T, .maxcombine = 10) %do% rnorm(4)
# .multicombine argument allows multiple arguments for .combine
# .maxcombine specifies # max arguments
x

# .inorder for parallel computation
# in order by default
foreach(i=4:1, .combine = "c") %dopar%{
  Sys.sleep(3*i)
  i
}
# may not be in order
foreach(i=4:1, .combine = "c", .inorder = F) %dopar%{
  Sys.sleep(3*i)
  i
}

# package for generating iterators
# foreach() generates iterator automatically though
library(iterators)
x = foreach(a=irnorm(4, count = 4), .combine = "cbind") %do% a
x
# This becomes useful when dealing with large amounts of data. 
# Iterators allow the data to be generated on-the-fly, as it 
# is needed by your operations, rather than requiring all of 
# the data to be generated at the beginning.
# e.g. 1000 vectors sum
set.seed(123)
x = foreach(a=irnorm(4, count=1000), .combine = "+") %do% a
x
# equal to below with icount()
set.seed(123)
x = foreach(icount(1000), .combine = "+") %do% rnorm(4)
x # icount() is from package iterators

# replace %do% with %dopar% to do parallel

# e.g. parallel random forest
x = matrix(runif(500),100)
y = gl(2,50)
library(randomForest)
rf = foreach(ntree=rep(500,2),.combine = combine) %do% randomForest(x, y, ntree=ntree)
rf
# change to %dopar% need to add .package
rf = foreach(ntree=rep(500,2),.combine = combine, .packages = "randomForest") %do% randomForest(x, y, ntree=ntree)
rf

# parallel apply
# slightly complicated version with for loop
applyKernel = function(newX, FUN, d2, d.call, dn.call=NULL,...){
  ans = vector("list", d2)
  for(i in 1:d2){
    tmp = FUN(array(newX[,i], d.call, dn.call), ...)
    if(!is.null(tmp)) ans[[i]] = tmp
  }
  ans
}
applyKernel(matrix(1:16,4), mean,4,4)
# foreach version
applyKernel = function(newX, FUN, d2, d.call, dn.call=NULL,...){
  foreach(i=1:d2) %dopar%
    FUN(array(newX[,i], d.call, dn.call), ...)
}
# foreach, avoid extra data communication
applyKernel = function(newX, FUN, d2, d.call, dn.call=NULL,...){
  foreach(x=iter(newX, by="col")) %dopar%
    FUN(array(x, d.call, dn.call), ...)
} # only sending any given column of the matrix to one parallel execution worker
# more efficient with iblkcol()
iblkcol <- function(a, chunks) {
  n <- ncol(a)
  i <- 1
  
  nextElem <- function() {
    if (chunks <= 0 || n <= 0)
      stop('StopIteration')
    m <- ceiling(n / chunks)
    r <- seq(i, length = m)
    i <<- i + m
    n <<- n - m
    chunks <<- chunks - 1
    a[, r, drop = FALSE]
  }
  
  structure(list(nextElem = nextElem), class = c('iblkcol', 'iter'))
}
nextElem.iblkcol <- function(obj) obj$nextElem()

applyKernel = function(newX, FUN, d2, d.call, dn.call=NULL,...){
  foreach(x=iblkcol(newX,3), .combine = "c", .packages = 'foreach') %dopar%{
    foreach(i=1:ncol(x)) %do% FUN(array(x[,i], d.call, dn.call), ...)
  }
}
applyKernel(matrix(1:16,4), mean,4,4)

x <- foreach(a=irnorm(1, count=10), .combine='c') %:% when(a >= 0) %do% sqrt(a)
x
