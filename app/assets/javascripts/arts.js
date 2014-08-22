console.log('Art.js is running');

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

function addContentInPage(content, targetName){
  var templateName = '#template-'+targetName;
  var source   = $(templateName).html();
  var template = Handlebars.compile(source);
  var templateContent   = template(content);
  $('#content-place').append(templateContent);
}

