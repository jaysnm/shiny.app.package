barPlot <- function(data) {
  ggplot(data, aes(y = cut)) +
    geom_bar(aes(fill = color), position = position_stack(reverse = TRUE)) +
    theme(legend.position = "top")
}
