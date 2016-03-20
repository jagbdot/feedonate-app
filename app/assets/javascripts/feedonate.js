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
    var method = $(this).attr('method'); // POST
    var action = $(this).attr('action'); // /donor/donate/products
    var data = $(this).serializeArray(); // turn the form data into object
    // get the values of the attr-inputs to pass them into the ajax request
    var name = $(this).find('#donation_product_name').val();
    var amount = $(this).find('#donation_product_amount').val();
    var category = $(this).find('#donation_product_category').val();

    $.ajax({
      method: method,
      url: action,
      data: data,
      // this line makes the response format JavaScript and not html.
      dataType: 'script'
    });

  });
})

