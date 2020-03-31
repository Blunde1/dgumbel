# The Gumbel quantile function.
# Its documentation is combined with dgumbel.
#
#' @rdname dgumbel
#' @export
qgumbel <- function(p, location = 0, scale = 1, lower.tail = TRUE, grad=FALSE){
    
    # should check input
    
    # if ok
    if(!grad){
        res <- .qgumbel(p, location, scale, lower.tail)
    }else{
        res <- .dqgumbel(p, location, scale, lower.tail)
    }
    
    return(res)
    
}