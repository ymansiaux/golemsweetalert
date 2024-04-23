#' create_alert_complete
#'
#' @description Creates an alert with a title, a text and an icon
#' @param title alert title
#' @param text alert text
#' @param icon alert icon
#' @return side effect : creates an alert
#'
#' @noRd
create_alert_complete <- function(
    title = "<strong>HTML <u>example</u></strong>",
    icon = "info",
    html = 'You can use <b>bold text</b>,
  <a href="#">links</a>,
  and other HTML tags',
    showCloseButton = TRUE,
    showCancelButton = TRUE,
    confirmButtonText = "confirm",
    cancelButtonText = "cancel",
    imageUrl = "https://unsplash.it/400/200",
    imageWidth = 400,
    imageHeight = 200,
    imageAlt = "Custom image"
) {
  golem::invoke_js(
    "alert_with_html_and_image",
    list(
      title = title,
      icon = icon,
      html = html,
      showCloseButton = showCloseButton,
      showCancelButton = showCancelButton,
      confirmButtonText = confirmButtonText,
      cancelButtonText = cancelButtonText,
      imageUrl = imageUrl,
      imageWidth = imageWidth,
      imageHeight = imageHeight,
      imageAlt = imageAlt
    )
  )
}

