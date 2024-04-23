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
      create_alert_complete(
        title = "my title",
        icon = "warning",
        html = "here is an <b>example</b> of <i>custom</i><span style='color:red;'> HTML </span> in <u> sweetalert2</u>",
        showCloseButton = TRUE,
        showCancelButton = TRUE,
        confirmButtonText = "confirm my action",
        cancelButtonText = "cancel my action",
        imageUrl = "https://www.freecodecamp.org/news/content/images/2021/05/Screenshot-2021-05-20-at-14.33.36.png",
        imageAlt = "JavaScript Hero"
      )
    }
  )
}
