\name{ProbeSet-class}
\docType{class}
\alias{ProbeSet-class}
\alias{mm,ProbeSet-method}
\alias{mm<-,ProbeSet,matrix-method}
\alias{pm<-,ProbeSet,matrix-method}
\alias{pm,ProbeSet-method}
\alias{show,ProbeSet-method}
\alias{barplot,ProbeSet-method}
\alias{colnames,ProbeSet-method}
\alias{express.summary.stat,ProbeSet,character,character-method}
\alias{sampleNames,ProbeSet-method}
\title{Class ProbeSet}
\description{A simple class that contains the PM and MM data for a probe
  set from one or more samples.}
\section{Objects from the Class}{
Objects can be created by applying the method \code{\link{probeset}} to
instances of AffyBatch.}
\section{Slots}{
  \describe{
    \item{\code{id}:}{Object of class \code{"character"} containing the
      probeset ID.}
    \item{\code{pm}:}{Object of class \code{"matrix"} containing the PM
      intensities. Columns represent samples and rows the different probes.}
    \item{\code{mm}:}{Object of class \code{"matrix"} containing the MM
      intensities.}
  }
}
\section{Methods}{
  \describe{
    \item{colnames}{\code{signature(x = "ProbeSet")}: the column names
      of the \code{pm} matrices which  are the sample names}
    \item{express.summary.stat}{\code{signature(x = "ProbeSet",
	  pmcorrect = "character", summary = "character")}: applies a summary
	  statistic to the probe set.}
    \item{sampleNames}{\code{signature(object = "ProbeSet")}: the column names
      of the \code{pm} matrices which  are the sample names.}
  }
}
\note{More details are contained in the vignette.}
\seealso{\code{\link[affy:AffyBatch-class]{probeset}},
  \code{\link[affy]{AffyBatch-class}}} 
\examples{
if (require(affydata)) {
  data(Dilution)
  ps <- probeset(Dilution, geneNames(Dilution)[1:2])
  names(ps)
  print(ps[[1]])
}
}
\keyword{classes}
