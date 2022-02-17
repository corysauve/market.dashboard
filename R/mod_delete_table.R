#' delete_table UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_delete_table_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' delete_table Server Functions
#'
#' @noRd 
mod_delete_table_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_delete_table_ui("delete_table_ui_1")
    
## To be copied in the server
# mod_delete_table_server("delete_table_ui_1")
