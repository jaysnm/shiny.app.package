#' home UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_home_ui <- function(id){
  ns <- NS(id)
  tagList(
    textInput(ns("txt"), "Input a Text"),
    verbatimTextOutput(ns("result"))
  )
}
    
#' home Server Function
#'
#' @noRd 
mod_home_server <- function(id){

  moduleServer(id, function(input, output, session){

    observe({
      print(input$txt)
    })

    output$result <- renderText({
      input$txt
    })

  })

}
