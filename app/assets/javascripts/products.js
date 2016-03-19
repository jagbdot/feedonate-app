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
})