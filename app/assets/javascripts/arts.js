console.log('Art.js is running');
var current_id = 0;
jQuery( "#content-date" ).datepicker();

function resetTheContentForm(){
  $('.form-wrap').removeClass('showForm');
}

$('#art-new-form a').on('click', function(e){
  e.preventDefault();

  var targetName = $(this).data('target');
  var elForm = $('#form-'+targetName);

  // console.log( elForm );
  // console.log(e);
  // console.log(targetName);

  resetTheContentForm();

  $(elForm).addClass('showForm');
});


$('.add-content-button').on('click', function(e){
  e.preventDefault();
  var targetName = $(this).data('target');
  var elForm = $('#content-'+targetName);
  window.elContent = $(elForm).val();
  console.log(elContent);

  addContentInPage(elContent, targetName);

  $(elForm).val('');
  resetTheContentForm();

});

function renderTheTemplate(targetName){
  var templateName = '#template-' + targetName;
  var source   = $(templateName).html();
  var template = Handlebars.compile(source);
  return template;
}

function addContentInPage(content, targetName){
  current_id = current_id + 1;
  var data = {
    content: content,
    id: current_id
  }

  var template          = renderTheTemplate(targetName);
  var templateContent   = template(data);


  var textTemplate = renderTheTemplate('text');
  var textTemplateContent   = textTemplate();
  $('#content-place').after(textTemplateContent);


  $('#content-place').after(templateContent);
}

