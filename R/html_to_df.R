#' Convert html palmares extraction into a data frame
#'
#' After extracting a palmares of tennis matches on [tenup](https://tenup.fft.fr)
#' (to do so, see [tutorial]), this function allows to convert your html match
#' records into a data.frame
#'
#' @param file html file to convert
#'
#' @return data.frame of match records in adequate format for ranking simulation
#' @importFrom XML readHTMLTable
#' @export
#'
#' @examples
#' library(tenupR)
#' file <- list.files(system.file("extdata", package = "tenupR"),full.names = T)
#' df <- html_to_df(file)
#' head(df)
html_to_df <- function(file) {
  stopifnot("'file' must be an html file" = grepl("*.html",file))
  tab <- XML::readHTMLTable(file,encoding = "UTF-8")[[1]]
  colnames(tab) <- trimws(colnames(tab))

  names(tab)[names(tab) %in% c(
    "Adversaire(s)", "Né(e) en", "Classement*", "V/D", "Score",
    "Compétition", "Coef.", "Joué le", "Pris en compte jusqu'à**"
  )]<-c("adversaire","ne_en","classement","issue","score",
        "competition","coef","joue_le","date_val")

  tab$coef <- as.numeric(tab$coef)

  tab$classement <- as_ranking(tab$classement)

  return(tab)
}
