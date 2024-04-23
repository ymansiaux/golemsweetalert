#' create_alert_title_and_text_under
#'
#' @description Une fonction pour créer une alerte avec un titre et un texte
#' @param title alert title
#' @param text alert text
#' @param icon alert icon
#' @return side effect : créé une alerte
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
