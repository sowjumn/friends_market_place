(function() {
  $(document).ready(function() {
    $('button').on('click', function(e) {
      var current_div = e.target
      var listing_id = current_div.id
      var listing_user_id = $(this).closest('.listing').find('input').attr('value');
      var current_user_id = $('#current_active_user').attr('value');
    });
  });
})();
