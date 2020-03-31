# The Gumbel random generating function.
# Its documentation is combined with dgumbel.
#
#' @rdname dgumbel
#' @export
rgumbel <- function(n, location = 0, scale = 1){
    
    # Simulate from standard uniform
    u <- runif(n, 0, 1)
    
    # Transform to Gumbel RV
    x <- sapply(u, .qgumbel, location=location, scale=scale, lower_tail=T)
    
}
