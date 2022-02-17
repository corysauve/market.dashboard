#' insert_record UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_insert_record_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' insert_record Server Functions
#'
#' @noRd 
mod_insert_record_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_insert_record_ui("insert_record_ui_1")
    
## To be copied in the server
# mod_insert_record_server("insert_record_ui_1")
