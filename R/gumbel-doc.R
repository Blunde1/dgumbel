##' @name dgumbel
##' @rdname dgumbel
##'
##' @title Two functions of sum1 and prod1 -- TEST DOCUMENTATION
##'
##' @param x =X
##' @param y =Y
##'
##' @return x*y (prod1) or x+y (sum1).
NULL

##' @rdname dgumbel
##' @examples
##' sum1(3,4)
##' @export
sum1 <- function(x,y) x+y

##' @rdname dgumbel
##' @examples
##' prod1(3,4)
##' @export
prod1 <- function(x,y) x*y