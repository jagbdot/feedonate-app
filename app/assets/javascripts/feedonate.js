$( document ).ready(function() {
  $('.signup').click(function(event) {
    $.get("/users-form-signup", function(data){
        $('.modal-body').empty();
        $(".modal-body").html(data)
    });
  })
  $('.signin').click(function(event) {
    $.get("/users-form-signin", function(data){
        $('.modal-body').empty();
        $(".modal-body").html(data)
    });
  })

  $('#new_product').submit(function(){
    event.preventDefault()

    var action = $(this).attr('action');
    var method = $(this).attr('method');
    // this debugger should be hit when you click the submit button!
    debugger;
  });
})

