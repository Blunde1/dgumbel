# The Gumbel probability density function.
# Its documentation is combined with gumbel-doc
#
#' @rdname pgumbel
#' @export
dgumbel <- function(x, location = 0, scale = 1, log = FALSE, grad=FALSE){
    
    # should check input
    
    # if ok
    if(!grad){
        res <- .dgumbel(x, location=location, scale=scale, log_dens=log)
    }else{
        res <- .ddgumbel(x, location=location, scale=scale, log_dens=log)
    }
    
    return(res)
    
}