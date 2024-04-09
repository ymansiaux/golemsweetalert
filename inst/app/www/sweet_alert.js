$( document ).ready(function() {
  Shiny.addCustomMessageHandler('alert_title_and_text_under', function(arg) {
    Swal.fire({
      title: arg.title,
      text: arg.text,
      icon: arg.icon
    });
  })
});
