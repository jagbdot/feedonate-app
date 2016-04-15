$( document ).ready(function() {
  $(function () {
    $('[data-toggle="popover"]').popover()
  })

  $('.signup').click(function(event) {
    event.preventDefault()
    $.get("/users-form-signup", function(data){
        $('.modal-body').empty();
        $(".modal-body").append(data)
    request.done(modalHandler); 
    });
  })
  $('.signin').click(function(event) {
    event.preventDefault()
    $.get("/users-form-signin", function(data){
        $('.modal-body').empty();
        $(".modal-body").append(data)
    request.done(modalHandler); 
    });
  });
  var modalHandler = function(login) {
      $('.sign-modal').modal(hide);
      $('body').removeClass('modal-open');
      $('.modal-backdrop').remove(); 
      $('.fade').remove(); 
  }
});
  
  
