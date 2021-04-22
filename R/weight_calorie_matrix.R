#' Weight and Calorie Visualization Matrix
#'
#'
#' @return Side by side ggplot2 visualizations
#' @export
#'
weight_calorie_matrix <- function() {
  wplot <- ggplot2::ggplot(data=wdf, aes(x, wvec, col=wvec)) +
    ggplot2::geom_line() +
    ggplot2::geom_point() +
    ggplot2::labs(title = "Weekly Body Weight Progression") +
    ggplot2::xlab("Weeks") +
    ggplot2::ylab("Bodyweight (kg)") +
    ggplot2::theme_bw() +
    ggplot2::theme(plot.title = element_text(hjust = 0.5))
  cplot <- ggplot2::ggplot(data=cdf, aes(days, ivec, col=ivec)) +
    ggplot2::geom_line() +
    ggplot2::geom_point() +
    ggplot2::labs(title = "Daily Caloric Intake") +
    ggplot2::xlab("Days") +
    ggplot2::ylab("Calories (Kcal)") +
    ggplot2::geom_hline(aes(yintercept=Basal_Metabolic_Rate), color="green", linetype="dashed") +
    ggplot2::geom_text(aes(0,Basal_Metabolic_Rate,label = "BMR", vjust = -1)) +
    ggplot2::theme_bw() +
    ggplot2::theme(plot.title = element_text(hjust = 0.5))
  gridExtra::grid.arrange(wplot, cplot, ncol = 2)
}
