\name{MAplot}
\alias{ma.plot}
\alias{Mbox}
\alias{MAplot}
\alias{Mbox,AffyBatch-method}
\alias{MAplot,AffyBatch-method}

\title{Relative M vs. A plots}
\description{
  Create boxplots of M or M vs A plots. Where M is determined relative
  to a specified chip or to a pseudo-median reference chip.
}
\usage{
MAplot(object,...)
Mbox(object,...)
ma.plot(A, M, subset = sample(1:length(M), min(c(10000, length(M)))),
        show.statistics = TRUE, span = 2/3, family.loess = "gaussian",
        cex = 2, plot.method = c("normal","smoothScatter","add"),
        add.loess = TRUE, lwd = 1, lty = 1, loess.col = "red", ...)
}
\arguments{
  \item{object}{an \code{\link[affy]{AffyBatch-class}}.}
  \item{\dots}{additional parameters for the routine.}
  \item{A}{a vector to plot along the horizontal axis.}
  \item{M}{a vector to plot along vertical axis.}
  \item{subset}{a set of indices to use when drawing the loess curve.}
  \item{show.statistics}{logical. If TRUE, some summary statistics of the M
    values are drawn.}
  \item{span}{span to be used for loess fit.}
  \item{family.loess}{\code{"guassian"} or \code{"symmetric"} as in
    \code{\link[stats]{loess}}.}
  \item{cex}{size of text when writing summary statistics on plot.}
  \item{plot.method}{a string specifying how the plot is to be drawn.
    \code{"normal"} plots points, \code{"smoothScatter"} uses the
    \code{\link[graphics]{smoothScatter}} function. Specifying
    \code{"add"} means that the MAplot should be added to the current plot.}
\item{add.loess}{add a loess line to the plot.}
\item{lwd}{width of loess line.}
\item{lty}{line type for loess line.}
\item{loess.col}{color for loess line.}
}
\examples{
if (require(affydata)) {
   data(Dilution)
   MAplot(Dilution)
   Mbox(Dilution)
}
}
\seealso{\code{\link[affy]{mva.pairs}}}
\keyword{hplot}
