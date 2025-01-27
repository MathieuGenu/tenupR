#' Compute additional matches counted in the ranking process
#'
#' Get additional matches to include in the ranking computation. Matches record
#' are necessary in the same format as [palmares] data set and it uses [bareme]
#' dataset to get the correct index to give extra matches
#'
#' @param df data.frame of matches record (as [palmares])
#' @param echelon ranking to test
#' @param date_sim Date of the simulation ranking to test in the format "mm-yy"
#'
#' @return number of additional matches
#' @export
#' @seealso [palmares], [bareme]
#' @importFrom lubridate my dmy days
#' @examples
#' library(tenupR)
#' match_comptabilise(palmares,as_ranking("15/5"),"01-25")
match_comptabilise <- function(df,echelon, date_sim) {

  stopifnot(grepl("[0-12]-[\\d{2}|(19|20)\\d{2}]",date_sim))

  df <- subset(df, lubridate::my(date_sim)-lubridate::dmy(joue_le) < lubridate::days(365))

  V <- subset(df,issue == "V",select = coef,drop = T)
  V <- sum(V)


  E <- subset(df,
              classement == echelon & issue == "D" & score != "WO",
              select = coef,drop = T)
  E <- sum(E)

  I <- subset(df,
              as.numeric(classement) < as.numeric(echelon) &
                issue == "D" & score != "WO",
              select = coef,
              drop = T
  )
  I <- sum(I)

  G <- subset(df,
              as.numeric(classement) <= (as.numeric(echelon) - 2) &
                issue == "D" & score != "WO",
              select = coef,
              drop = T
  )
  G <- sum(G)

  WO_3 <- nrow(subset(df,score == "WO" & issue == "D"))
  if(WO_3 >= 3) {
    G <- G + WO_3
  }

  index <- V - E - 2*I - 5*G

  serie_filtered <- subset(
    bareme,
    classement == as.character(echelon),
    select = serie,
    drop = T
  )

  match_counted <- subset(
    bareme,
    serie == serie_filtered & index_min <= index & index_max >= index,
    select = match_en_plus,
    drop = T
  )

  return(match_counted)

}



