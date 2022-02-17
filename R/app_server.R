#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # Your application server logic 
  mod_view_tables_server("view_tables_ui_1")
  mod_create_table_server("create_table_ui_1")
  mod_update_table_server("update_table_ui_1")
  mod_insert_record_server("insert_record_ui_1")
  mod_delete_table_server("delete_table_ui_1")
  mod_about_server("about_ui_1")
}
