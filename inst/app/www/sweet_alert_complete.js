$( document ).ready(function() {
  Shiny.addCustomMessageHandler('alert_with_html_and_image', function(arg) {
    Swal.fire({
      title: arg.title,
      icon: arg.icon,
      html: arg.html,
      showCloseButton: arg.showCloseButton,
      showCancelButton: arg.showCancelButton,
      confirmButtonText: arg.confirmButtonText,
      cancelButtonText: arg.cancelButtonText,
      imageUrl: arg.imageUrl,
      imageWidth: arg.imageWidth,
      imageHeight: arg.imageHeight,
      imageAlt: arg.imageAlt
    });
  })
});
