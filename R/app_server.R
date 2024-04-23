#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic
  observeEvent(
    input$show_alert,{
      create_alert_title_and_text_under(
        title = input$title,
        text = input$text,
        icon = input$icon
      )
    }
  )

  observeEvent(
    input$show_alert2,{
      create_alert_complete()
    }
  )
}
