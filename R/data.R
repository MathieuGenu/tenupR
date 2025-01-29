#' Example of record data from a player needed to compute ranking
#'
#' Record of player matches are available for each french player
#' on [https://tenup.fft.fr/](https://tenup.fft.fr/) requiring a tenup account.
#' All of these information are used to compute ranking of a player.
#'
#' @format A data frame with 23 rows and 10 columns
#' \describe{
#'   \item{adversaire}{Name of the opponent}
#'   \item{ne_en}{Date of birth of the opponent}
#'   \item{classement}{Opponent ranking}
#'   \item{issue}{Outcome of the match, stated as "V" for wins and "D" for loses}
#'   \item{score}{Final score of the match (WO)}
#'   \item{competition}{Context of the match (team cup,TMC, single championship)}
#'   \item{coef}{coeficient applied on the match}
#'   \item{joue_le}{Date of the match}
#'   \item{date_val}{Date until the match will be counted in the ranking process}
#'   \item{match_type}{type of match(single or double)}
#' }
#'
#' @references
#' [https://tenup.fft.fr/](https://tenup.fft.fr/)
"palmares"

#' Scale use to compute ranking
#'
#' This dataset gather all necessary parameters to compute ranking of french
#' tennis player playing in FFT (French Federation of Tennis). This data frame
#' is available on the [FFT website](https://tenup.fft.fr/content/classement-tennis-bareme-et-normes)
#'
#' @format A data frame with 22 rows and 9 columns
#' \describe{
#'   \item{classement}{Ranking to test}
#'   \item{index_min}{Lower boundary of the "V-E-2I-5G" index giving the number of
#'    matches to add in points calculation}
#'   \item{index_max}{Higher boundary of the "V-E-2I-5G" index giving the number of
#'    matches to add in points calculation}
#'   \item{match_en_plus}{Number of matches to add to the number of matches to
#'    take into account in the point calculation step}
#'   \item{serie}{division of ranking ("4","3","2plus","2moins")}
#'   \item{point_min_h}{Minimum points required to validate ranking for men}
#'   \item{nb_victoire_compte_h}{Fixed number of matches took into account while
#'    calculating points for men}
#'   \item{point_min_f}{Minimum points required to validate ranking for women}
#'   \item{nb_victoire_compte_f}{Fixed number of matches took into account while
#'    calculating points for men}
#' }
#'
#' @references
#' [https://tenup.fft.fr/](https://tenup.fft.fr/)
"bareme"

