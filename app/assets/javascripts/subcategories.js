function fill_data_block(json){
  var data = jQuery.parseJSON(json)
  var block = " <div class=\"current_image_info\">"
    for (var k in data){
      if (k != "description"){
        block += block_string(k, data[k])
      }
      else{
        block += k + "<textarea readonly>" + data[k] + "</textarea>"
      } 
    }
    block += "</div>"
  $("#image_info_block").append(block)
}

function block_string(left_text, right_text){
  var left_part  = "<div><span class=\"left-align\">" + left_text + ":</span>"
  var right_part =  "<span class=\"right-align\">"+ right_text + "</span></div><br />"
  return (left_part + right_part)
}

function empty_data_block(){
  $("div.current_image_info").remove
}