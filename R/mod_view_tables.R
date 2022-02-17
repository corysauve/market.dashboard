#' view_tables UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_view_tables_ui <- function(id){
  
  conn <- mysql_connect()
  
  ns <- NS(id)
  tagList(
    fluidRow(
      box(
        title = "Select Table:", 
        selectInput("select_table", label = "",
          choices = list("A" = 1))
      )
    )
  )
}
    
#' view_tables Server Functions
#'
#' @noRd 
mod_view_tables_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_view_tables_ui("view_tables_ui_1")
    
## To be copied in the server
# mod_view_tables_server("view_tables_ui_1")
