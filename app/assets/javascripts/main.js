(function() {
  $(document).ready(function() {
    $('button').on('click', function(e) {
      var current_div = e.target;
      var listing_id = current_div.id;
      var current_button = $(this);
      var listing_user_id = current_button.closest('.listing').find('input').attr('value');
      var current_user_id = $('#current_active_user').attr('value');
      var interest_id = current_button.attr('interest_id');
      if (current_button.text() == 'Requested') {
        $.ajax({
          type: 'DELETE',
          url: '/interests/' + interest_id,
          data: {
           
          },
          success: function(response) {
            current_button.text('I want it');
          },
          error: function(xhr,status,message) {
            console.log(message);
          }
        });
      } else {
        $.ajax({
          type: 'POST',
          url: '/interests',
          data: {
            interest: {
              "listing_id": listing_id,
              "user_id": current_user_id
            }
          },
          success: function(response) {
            current_button.text('Requested');
            current_button.attr('interest_id',response.id)
          },
          error: function(xhr,status,message) {
            console.log(message);
          }
        });
      }
     
    });
  });
})();
