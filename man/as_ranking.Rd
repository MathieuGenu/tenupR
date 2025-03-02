% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ranking.R
\name{as_ranking}
\alias{as_ranking}
\title{Set a character as a ranking factor}
\usage{
as_ranking(rank)
}
\arguments{
\item{rank}{a character corresponding to a ranking. Ranking must be in the
form of \itemize{
\item "NC" for players without ranking
\item "x" like "15", "0" or "-15"
\item "x/x" like "30/5" or "-2/6"
}}
}
\value{
a factor object with levels of ranking of french tennis
ranking (from "NC" to "-15")
}
\description{
Transform a character ranking into a factor ranking useful to get an order
of ranking for ranking manipulation. Rankings goes from "NC" to "-15" with
"NC" corresponding to the first level of the factor and "-15" to the last
}
\examples{
library(tenupR)
rank <- as_ranking("15/4")
rank

# get difference between rankings
rank1 <- as_ranking("30/3")
rank2 <- as_ranking("15/5")
as.numeric(rank2) - as.numeric(rank1)
}
