# The Gumbel probability distribution function.
# Its documentation is combined with dgumbel.
#
#' @rdname dgumbel
#' @export
pgumbel <- function(q, location = 0, scale = 1, lower.tail = TRUE, log.p = FALSE, grad=FALSE){
    
    # should check input
    
    # if ok
    if(!grad){
        res <- .pgumbel(q, location, scale, lower.tail, log.p)
    }else{
        res <- .dpgumbel(q, location, scale, lower.tail, log.p)
    }
    
    return(res)
    
}