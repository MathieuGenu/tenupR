#' Set a character as a ranking factor
#'
#' Transform a character ranking into a factor ranking useful to get an order
#' of ranking for ranking manipulation. Rankings goes from "NC" to "-15" with
#' "NC" corresponding to the first level of the factor and "-15" to the last
#'
#' @param rank a character corresponding to a ranking. Ranking must be in the
#' form of \itemize{
#' \item "NC" for players without ranking
#' \item "x" like "15", "0" or "-15"
#' \item "x/x" like "30/5" or "-2/6"
#' }
#'
#' @return a factor object with levels of ranking of french tennis
#'  ranking (from "NC" to "-15")
#' @export
#'
#' @examples
#' library(tenupR)
#' rank <- as_ranking("15/4")
#' rank
#'
#' # get difference between rankings
#' rank1 <- as_ranking("30/3")
#' rank2 <- as_ranking("15/5")
#' as.numeric(rank2) - as.numeric(rank1)
as_ranking <- function(rank) {
  levels <- c("NC","40","30/5","30/4","30/3","30/2","30/1",
              "30","15/5","15/4","15/3","15/2","15/1",
              "15","5/6","4/6","3/6","2/6","1/6","0",
              "-2/6","-4/6","-15")
  stopifnot("'rank' must be a character string" = class(rank) == "character")
  stopifnot("'rank' must be a correct ranking" = rank %in% levels)
  fac_x <- factor(rank,levels = levels)
  return(fac_x)
}
