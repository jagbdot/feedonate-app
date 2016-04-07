$( document ).ready(function() {

$(function () {
  $('[data-toggle="popover"]').popover()
})
  
  $('.products-list').empty();
  $( '.i4ewOd-pzNkMb-haAclf' ).remove();
  $('.signup').click(function(event) {
    event.preventDefault()
    $.get("/users-form-signup", function(data){
        $('.modal-body').empty();
        $(".modal-body").html(data)
    });
  })
  $('.signin').click(function(event) {
    event.preventDefault()
    $.get("/users-form-signin", function(data){
        $('.modal-body').empty();
        $(".modal-body").html(data)
    });
  })
  $('.show-donation').click(function(event) {
    event.preventDefault()
    $.get("/donations-donation", function(data){
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

    $('#donation_product_name, #donation_product_amount').val('');
  });

  // load more
  $('a.load-more').click(function (e) {
        // prevent the default click action
        e.preventDefault();

        // hide load more link
        $('.load-more').hide();

        // show loading gif
        $('.loading-gif').show();

        // get the last id and save it in a variable 'last-id'
        var last_id = $('.donor-box').last().attr('data-id');

        // make an ajax call passing along our last user id
        $.ajax({
            // make a get request to the server
            type: "GET",
            // get the url from the href attribute of our link
            url: $(this).attr('href'),
            // send the last id to our rails app
            data: {
                id: last_id
            },
            // the response will be a script
            dataType: "script",

            // upon success 
            success: function () {
                // hide the loading gif
                $('.loading-gif').hide();
                // show our load more link
                $('.load-more').show();
            }
        });
      });

    $('#new_request').submit(function(event){
      event.preventDefault()

      // Setting the route and the post method
      var method = $(this).attr('method'); 
      var action = $(this).attr('action'); 
      var data = $(this).serialize();
      
      var bank_id = $(this).find('#_donations_bank_id').val();
      
      $.ajax({
        method: method,
        url: action,
        data: data,
        // this line makes the response format JavaScript and not html.
        dataType: 'script',

      });
    });
});

