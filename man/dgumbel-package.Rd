\name{gumbel}
\alias{dgumbel}
\alias{pgumbel}
\alias{qgumbel}
\alias{rgumbel}
\title{The Gumbel Distribution and Derivatives}
\description{
  Density function, distribution function, quantile function and
  random generation, and their gradient functions 
  for the Gumbel distribution with location and scale parameters. 
}
\usage{
dgumbel(x, location=0, scale=1, log = FALSE, grad=FALSE) 
pgumbel(q, location=0, scale=1, lower.tail = TRUE, log.p = FALSE, grad=FALSE) 
qgumbel(p, location=0, scale=1, lower.tail = TRUE, grad=FALSE)
rgumbel(n, location=0, scale=1)
}
\arguments{
  \item{x, q}{Vector of quantiles.}
  \item{p}{Vector of probabilities.}
  \item{n}{Number of observations.}
  \item{location, scale}{Location and scale parameters (can be given
    as vectors).}
  \item{log, log.p}{Logical; if \code{TRUE}, probabilities p are given as log(p).}
  \item{lower.tail}{Logical; if \code{TRUE} (default), probabilities
    are P[X <= x], otherwise, P[X > x]}
  \item{grad}{Logical; if \code{TRUE}, the gradient w.r.t. parameters location and scale is given instead of function value.}
}
\details{
  The Gumbel distribution function with parameters
  \eqn{\code{location} = a} and \eqn{\code{scale} = b} is
  \deqn{G(z) = \exp\left\{-\exp\left[-\left(\frac{z-a}{b}\right)
    \right]\right\}}{G(x) = exp{-exp[-(z-a)/b]}}
  for all real \eqn{z}, where \eqn{b > 0}.
}
\value{
  \code{dgumbel} gives the density function, \code{pgumbel} gives
  the distribution function, \code{qgumbel} gives the quantile
  function, and \code{rgumbel} generates random deviates.
}

\examples{
dgumbel(-1:2, -1, 0.5)
pgumbel(-1:2, -1, 0.5)
qgumbel(seq(0.9, 0.6, -0.1), 2, 0.5)
rgumbel(6, -1, 0.5)
p <- (1:9)/10
pgumbel(qgumbel(p, -1, 2), -1, 2)
## [1] 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9
}
\keyword{distribution}