#' Get amount of points from a difference of ranking
#'
#' From a difference of rankings (positive or negative) get the amount of
#' points won. The amount of points is given by a scale set by FFT that is
#' available [here](https://tenup.fft.fr/content/classement-tennis-bareme-et-normes)
#'
#' @param diff difference of rankings as a negative or positive integer.
#'  Difference must be in this order : opponent ranking - player of interest ranking
#'
#' @return number of points earned from the difference of ranking
#' @export
#' @seealso [as_ranking]
#'
#' @examples
#' library(tenupR)
#' # How many points do I earn if my ranking is 15/5 and I win against a 15/3 ?
#' my_ranking <- as_ranking("15/5")
#' his_ranking <- as_ranking("15/3")
#' diff <- as.numeric(his_ranking) - as.numeric(my_ranking)
#' points(diff)
points <- function(diff) {
  stopifnot("'diff' must be numeric" = is.numeric(diff))
  stopifnot(
    "'diff' must be a positive or negative integer" = {round(abs(diff)) == abs(diff)}
  )
  tab_points <- data.frame(
    difference = c(0,1,2,-1,-2,-3,-4),
    points = c(60,90,120,30,20,15,0)
  )
  if(diff > 2) {
    res <- 120
  }
  if(diff < -4) {
    res <- 0
  }
  if(diff <= 2 & diff >= -4) {
    res <- subset(tab_points,difference == diff,select = points, drop = TRUE)
  }
  return(res)
}
