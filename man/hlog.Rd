\name{hlog}
\alias{hlog}
\title{Hybrid Log}
\description{Given a constant \code{c} this function returns
\code{x} if \code{x} is less than \code{c} and \code{sign(x)*(c*log(abs(x)/c)
  + c)} if its not. Notice this is a continuous odd ( f(-x)=-f(x) )
function with continuous first derivative. The main purpose is to perform log
transformation when one has negative numbers, for example for PM-MM.}
\usage{
hlog(x, constant=1)
}
\arguments{
  \item{x}{a number.}
  \item{constant}{the constant c (see description).}
  }
\details{
If \code{constant} is less than or equal to 0 \code{log(x)} is
returned for all \code{x}. If \code{constant} is infinity \code{x} is
returned for all \code{x}. 
}
\author{Rafael A. Irizarry}
\keyword{math}
