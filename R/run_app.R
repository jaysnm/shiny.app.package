# set future/promises processing plan and static files path 
.onLoad <- function(...) {
  # Enable multiprocessing for background tasks
  # App won't run on RStudio, Run on terminal or CMD
  # multiprocess: is a meta-method that uses multicore on platforms where it's available, and multisession on Windows.
  # https://rstudio.github.io/promises/articles/futures.html
  future::plan(future::multiprocess)
  # as a safety measure, future() will error if the size of the data to be shuttled between the processes exceeds 500MB.
  # If your data is potentially large, you would want to increase the limit by setting the future.globals.maxSize
  options(future.globals.maxSize = 1e9)
  # Expose www static files for web serving
  addResourcePath("static", system.file("app", "www", package = "shinypkg"))
  # read data files from (installed) app
  # system.file('data','diamonds.csv', package='shinypkg')
}

#' Run the Shiny Application
#'
#' @param ... A series of options to be used inside the app.
#'
#' @export
#' @importFrom shiny shinyApp
#' @importFrom golem with_golem_options
run_app <- function(
  ...
) {
  with_golem_options(
    app = shinyApp(
      ui = app_ui, 
      server = app_server,
      options = list(port = 3939)
    ), 
    golem_opts = list(...)
  )
}
