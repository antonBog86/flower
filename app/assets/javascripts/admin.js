$(document).ready(function(){    
  $(".file_upload_href").bind( 'click',function(){ simple_upload() } );

  function simple_upload(){
  $(".hidden_upload_button").trigger("click").change(function(){ 
    $("#upload-form").submit(); 
    }); 
  }
});

