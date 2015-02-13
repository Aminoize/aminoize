//handles form submission via AJAX
jQuery(function() {
  $("form").submit(function(e) {
    var getData = $(this).serialize();
    var formURL = $(this).attr("action");
    $.ajax({
      url: formURL,
      type: "GET",
      data: getData,
      success: function(data, textStatus, jqXHR){
        aminoize(data);
      },
      error: function(jqXHR, textStatus, errorThrown){}
    });
    e.preventDefault();
  });
});

$(document).submit();

function aminoize(data){
  if (data.length === 1) {
    console.log(data)
  } else if (data.length > 1) {
    console.log("Too many things!!!!");
  } else {
    console.log("Too few things!!!!");
  };
};


