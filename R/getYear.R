#' Return the Year of a Movie
#'
#' @param title Title of the movie
#'
#' @return integer
#' @export
#'
#'
#' 
#' 
getYear <- function(title) {
  title <- dplyr::enquo(title)
  ggplot2movies::movies %>% 
    dplyr::filter(title == !!title) -> temp
  return(temp$year)
}
## quiets concerns of R CMD check re: the .'s that appear in pipelines
if(getRversion() >= "2.15.1")  utils::globalVariables(c(".data", "%>%"))