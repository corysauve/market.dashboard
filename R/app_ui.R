#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  
  library(shinydashboard)
  
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    dashboardPage(
      dashboardHeader(title = "Farmer's Market Dashboard"), 
      dashboardSidebar(
        sidebarMenu(
          mod_sidebar_ui("sidebar_ui_1")
        )
      ), 
      dashboardBody(
        tabItems(
          tabItem(tabName = "view_table",
                  mod_view_tables_ui("view_tables_ui_1")
          ), 
          tabItem(tabName = "create_table", 
                  mod_create_table_ui("create_table_ui_1")
          ), 
          tabItem(tabName = "update_table", 
                  mod_update_table_ui("update_table_ui_1")
          ), 
          tabItem(tabName = "insert_record", 
                  mod_insert_record_ui("insert_record_ui_1")
          ), 
          tabItem(tabName = "delete_table", 
                  mod_delete_table_ui("delete_table_ui_1")
          ), 
          tabItem(tabName = "About", 
                  mod_about_ui("about_ui_1")
          )
        )
      )
    )
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
  
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'market.dashboard'
    ), 
    golem::activate_js(), 
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

