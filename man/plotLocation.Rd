\name{plotLocation}
\alias{plotLocation}
\title{Plot a location on a cel image}
\description{
  Plots a location on a previously plotted cel image. This can be used
  to locate the physical location of probes on the array.
}
\usage{
plotLocation(x, col="green", pch=22, ...)
}
\arguments{
  \item{x}{a `location'. It can be obtained by the method of \code{AffyBatch}
    \code{indexProbes}, or made elsewhere (basically a location is nrows and
    two columns array. The first column corresponds to the x positions
    and the second columns corresponds to the y positions of n elements
    to locate).}
  \item{col}{colors for the plot.}
  \item{pch}{plotting type (see function \code{plot}).}
  \item{\dots}{other parameters passed to the function \code{points}.}
}
\author{
  Laurent
}
\seealso{
  \code{\link[affy:AffyBatch-class]{AffyBatch}}
}
\examples{
if (require(affydata)) {
  data(Dilution)

  ## image of the celfile
  image(Dilution[, 1])

  ## genenames, arbitrarily pick the 101th
  n <- geneNames(Dilution)[101]

  ## get the location for the gene n
  l <- indexProbes(Dilution, "both", n)[[1]]
  ## convert the index to X/Y coordinates
  xy <- indices2xy(l, abatch=Dilution) 

  ## plot
  plotLocation(xy)
}
}
\keyword{aplot}
