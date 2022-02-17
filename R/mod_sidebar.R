#' sidebar UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_sidebar_ui <- function(id){
  
  library(shinydashboard)
  ns <- NS(id)
  tagList(
    menuItem("View Tables", tabName = "view_table", icon = icon("search")), 
    menuItem("Create Tables", tabName = "create_table", icon = icon("plus-square")), 
    menuItem("Update Tables", tabName = "update_table", icon = icon("edit")), 
    menuItem("Insert Entries", tabName = "insert_record", icon = icon("edit")), 
    menuItem("Delete Tables", tabName = "delete_table", icon = icon("trash-alt")), 
    menuItem("About", tabName = "about", icon = icon("info-circle"))
    
  )
}
    
#' sidebar Server Functions
#'
#' @noRd 
mod_sidebar_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
  })
}
    
## To be copied in the UI
# mod_sidebar_ui("sidebar_ui_1")
    
## To be copied in the server
# mod_sidebar_server("sidebar_ui_1")
