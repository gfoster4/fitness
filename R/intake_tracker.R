#' Intake Tracker
#'
#' @param Positive Integer
#'
#' @return Altered 'intakes' vector, new 'days' vector, 'cdf' dataframe, and ggplot2 visualization
#' @export
#'
#' @examples
#' intake_tracker(2100)
#' @importFrom ggplot2 ggplot aes geom_line geom_point element_text
intake_tracker <- function(c) {
  ivec <<- c(ivec, c)
  days <<- c(1:length(ivec))
  cdf <<- data.frame(days, ivec)
  ggplot2::ggplot(data=cdf, ggplot2::aes(days, ivec, col=ivec)) +
    ggplot2::geom_line() +
    ggplot2::geom_point() +
    ggplot2::labs(title = "Daily Caloric Intake") +
    ggplot2::xlab("Days") +
    ggplot2::ylab("Calories (Kcal)") +
    ggplot2::geom_hline(aes(yintercept=Basal_Metabolic_Rate), color="green", linetype="dashed") +
    ggplot2::geom_text(aes(0,Basal_Metabolic_Rate,label = "BMR", vjust = -1)) +
    ggplot2::theme_bw() +
    ggplot2::theme(plot.title = element_text(hjust = 0.5))
}
