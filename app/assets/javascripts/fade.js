$(document).ready(function() {
  $(".a-card").each(function(i) {
    $(this).delay(200 * i).fadeIn(900);
  });
});

