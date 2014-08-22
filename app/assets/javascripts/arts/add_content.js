function grab_image_template_content() {
  var source   = $(".picture-content.template").html();
  var template = Handlebars.compile(source);
  var context = $('.new-field-content');
  var html    = template(context);
}
