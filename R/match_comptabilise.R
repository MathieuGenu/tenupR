#' Compute additional matches counted in the ranking process
#'
#' Get additional matches to include in the ranking computation. Matches record
#' are necessary in the same format as [palmares] data set and it uses [bareme]
#' dataset to get the correct index to give extra matches
#'
#' @param df data.frame of matches record (as [palmares])
#' @param echelon ranking to test. Output of [as_ranking()]
#' @param date_sim Date of the simulation ranking to test in the format "mm-yy"
#' or "mm-yyyy" (ex: "12-25" or "12-2025" for december 2025)
#'
#' @return number of additional matches
#' @export
#' @seealso [palmares], [bareme], [as_ranking]
#' @importFrom lubridate my dmy days
#' @examples
#' library(tenupR)
#' match_comptabilise(palmares,as_ranking("15/5"),"01-25")
match_comptabilise <- function(df,echelon, date_sim) {

  stopifnot(
    "'date_sim' should be 'mm-yy' format" = {
      grepl("^((0?[1-9]|1[0-2])-(\\d{2}|(19|20)\\d{2}))$",date_sim)
      }
  )
  stopifnot("'df' should have all these following columns :\n
            classement,issue,score,competition,coef,joue_le,date_val,match_type" = {
              all(c(
                "classement","issue","score","competition","coef",
                "joue_le","date_val","match_type"
              ) %in% colnames(df))
            })

  df_single <- subset(
    df,
    lubridate::my(date_sim)-lubridate::dmy(joue_le) < lubridate::days(365) &
      match_type == "single"
  )

  df_single$classement <- as_ranking(df_single$classement)

  V <- subset(df_single,issue == "V")
  V <- nrow(V)


  E <- subset(df_single,
              classement == echelon & issue == "D" & score != "WO")
  E <- nrow(E)

  I <- subset(df_single,
              as.numeric(classement) == (as.numeric(echelon)-1) &
                issue == "D" & score != "WO"
  )
  I <- nrow(I)

  G <- subset(df_single,
              as.numeric(classement) <= (as.numeric(echelon) - 2) &
                issue == "D" & score != "WO"
  )
  G <- nrow(G)

  WO_3 <- nrow(subset(df_single,score == "WO" & issue == "D"))
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



