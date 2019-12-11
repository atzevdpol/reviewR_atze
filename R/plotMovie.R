#' Plot Movie based on Year
#'
#' @param queryTitle title of the movie
#' @param color color of specified movie in plot
#'
#'@importFrom magrittr "%>%"
#'
#' @return plot
#' @export
#'
plotMovie <- function(queryTitle, color = "green"){
  
  queryYear <- getYear(queryTitle)
  
  ggplot2movies::movies %>%
    dplyr::filter(.data$year == queryYear) %>% 
    ggplot2::ggplot(ggplot2::aes(.data$length, .data$rating)) +
    ggplot2::geom_point(alpha = 0.4)  +
    ggplot2::labs(title = queryTitle) +
    ggplot2::geom_point(data = ggplot2movies::movies[ggplot2movies::movies$title == queryTitle,],
               color = color) +
    ggrepel::geom_label_repel(ggplot2::aes(label = queryTitle),
                     data = ggplot2movies::movies[ggplot2movies::movies$title == queryTitle,],
                     box.padding   = 0.5,
                     label.padding = 0.5)
}
## quiets concerns of R CMD check re: the .'s that appear in pipelines
if(getRversion() >= "2.15.1")  utils::globalVariables(c(".data", "%>%"))
