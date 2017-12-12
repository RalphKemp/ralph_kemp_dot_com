
function cycleBackgrounds() {
  var index = 0;

  $imageEls = $('.slide-container .slide'); // Get the images to be cycled.

  setInterval(function () {
      // Get the next index.  If at end, restart to the beginning.
      index = index + 1 < $imageEls.length ? index + 1 : 0;

      // Show the next
      $imageEls.eq(index).addClass('showw');

      // Hide the previous
      $imageEls.eq(index - 1).removeClass('showw');
  }, 7000);
};

// Document Ready.
$(function () {
    cycleBackgrounds();
});
