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
    // Setting the route and the post method
    var action = $(this).attr('action');
    var method = $(this).attr('method');
    // get the values of the inputs
    var name = $(this).find('#donation_product_name').val();
    var amount = $(this).find('#donation_product_amount').val();
    var category = $(this).find('#donation_product_category').val();

    // this debugger should be hit when you click the submit button!
    debugger;
  });
})

