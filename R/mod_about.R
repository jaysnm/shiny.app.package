#' about UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
#' @import ggplot2
mod_about_ui <- function(id){
  ns <- NS(id)
  plotOutput(ns("plot"))
}
    
#' about Server Function
#'
#' @noRd 
#' @import future
#' @import promises
mod_about_server <- function(id){

  moduleServer(id, function(input, output, session){

     future({ read.csv(system.file('data','diamonds.csv', package='shinypkg')) }) %...>% 
      (function(data){
        output$plot <- renderPlot({
          barPlot(data)
        })
      })

  })

}
