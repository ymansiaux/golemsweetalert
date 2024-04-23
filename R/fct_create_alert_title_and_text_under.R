#' create_alert_title_and_text_under
#'
#' @description Creates an alert with a title, a text and an icon
#' @param title alert title
#' @param text alert text
#' @param icon alert icon
#' @return side effect : creates an alert
#'
#' @noRd
create_alert_title_and_text_under <- function(
    title = "Title",
    text = "Text",
    icon = "success"
    ) {
  golem::invoke_js(
    "alert_title_and_text_under",
    list(
      title = title,
      text = text,
      icon = icon
    )
  )
}
