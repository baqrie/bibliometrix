% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/histNetwork.R
\name{histNetwork}
\alias{histNetwork}
\title{Historical co-citation network}
\usage{
histNetwork(M, min.citations = 0, sep = ";")
}
\arguments{
\item{M}{is a bibliographic data frame obtained by the converting function
\code{\link{convert2df}}. It is a data matrix with cases corresponding to
manuscripts and variables to Field Tag in the original SCOPUS and Clarivate
Analitics' Web of Knowledge file.}

\item{min.citations}{is an integer. It sets the minimum number of citations 
for the documents included in the analysis. The default is \code{min.citations = 0}.}

\item{sep}{is the field separator character. This character separates strings
in CR column of the data frame. The default is \code{sep = ";"}.}
}
\value{
\code{histNetwork} returns an object of \code{class} "list"
  containing the following components:

  \tabular{lll}{ NetMatrix \tab  \tab the historical co-citation network
  matrix\cr histData \tab      \tab the set of n most cited references\cr M
  \tab      \tab the bibliographic data frame}
}
\description{
\code{histNetwork} creates a historical citation network from a bibliographic
data frame.
}
\examples{
data(scientometrics)

histResults <- histNetwork(scientometrics, min.citations = 10, sep = ";")


}
\seealso{
\code{\link{convert2df}} to import and convert an ISI or SCOPUS
  Export file in a bibliographic data frame.

\code{\link{summary}} to obtain a summary of the results.

\code{\link{plot}} to draw some useful plots of the results.

\code{\link{biblioNetwork}} to compute a bibliographic network.
}
