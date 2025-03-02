% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/match_comptabilise.R
\name{match_comptabilise}
\alias{match_comptabilise}
\title{Compute additional matches counted in the ranking process}
\usage{
match_comptabilise(df, echelon, date_sim)
}
\arguments{
\item{df}{data.frame of matches record (as \link{palmares})}

\item{echelon}{ranking to test. Output of \code{\link[=as_ranking]{as_ranking()}}}

\item{date_sim}{Date of the simulation ranking to test in the format "mm-yy"
or "mm-yyyy" (ex: "12-25" or "12-2025" for december 2025)}
}
\value{
number of additional matches
}
\description{
Get additional matches to include in the ranking computation. Matches record
are necessary in the same format as \link{palmares} data set and it uses \link{bareme}
dataset to get the correct index to give extra matches
}
\examples{
library(tenupR)
match_comptabilise(palmares,as_ranking("15/5"),"01-25")
}
\seealso{
\link{palmares}, \link{bareme}, \link{as_ranking}
}
