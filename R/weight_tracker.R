#' Weight Tracker
#'
#' @param Positive Integer (current weight in kg)
#' @param Postive Integer (goal weight in kg)
#'
#' @return Altered 'weights' vector, new 'x' vector, 'wdf' dataframe, and ggplot2 visualization
#' @export
#'
#' @examples
#' weight_tracker(70,72)
weight_tracker <- function(w,g) {
  wvec <<- c(wvec, w)
  x <<- c(1:length(wvec))
  wdf <<- data.frame(x, wvec)
  ggplot2::ggplot(data=wdf, aes(x, wvec, col=wvec)) +
    ggplot2::geom_line() +
    ggplot2::geom_point() +
    ggplot2::labs(title = "Weekly Body Weight Progression") +
    ggplot2::xlab("Weeks") +
    ggplot2::ylab("Bodyweight (kg)") +
    ggplot2::geom_hline(aes(yintercept=g), color="green", linetype="dashed") +
    ggplot2::geom_text(aes(0,g,label = "Goal", vjust = -1)) +
    ggplot2::theme_bw() +
    ggplot2::theme(plot.title = element_text(hjust = 0.5))
}
