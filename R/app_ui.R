#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    fluidPage(
      h1("golemsweetalert"),
      textInput(inputId = "title",
                label = "title"),
      textInput(inputId = "text",
                label = "text"),
      radioButtons(inputId = "icon",
                   label = "icon",
                   choices = c("warning", "error", "success", "info", "question")),
      actionButton(inputId = "show_alert",
                   label = "Alert demo"),

      tags$br(),

      actionButton(inputId = "show_alert2",
                   label = "Alert demo 2")


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
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "golemsweetalert"
    ),
    # sweetalert2
    tags$script(src = "https://cdn.jsdelivr.net/npm/sweetalert2@11.10.7/dist/sweetalert2.all.min.js"),
    tags$link(href = "https://cdn.jsdelivr.net/npm/sweetalert2@11.10.7/dist/sweetalert2.min.css",
              rel="stylesheet")
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
