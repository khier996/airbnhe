$(document).ready(function() {
 // the DOM is now ready, you can traverse it,
  // and register events with on().


//  $("#envelope").hover(
//   function(event) {
//     $('#envelope > span').toggleClass('hidden');
//     $('#envelope > i').toggleClass('hidden');
//   },
//   function(event) {
//     $('#envelope > span').toggleClass('hidden');
//     $('#envelope > i').toggleClass('hidden');
//   }
// );

  $('#all').on('click', function(event) {
    console.log("all");
    $('.card').hide().fadeIn(600);
    $('.card').removeClass('hidden');

  });

  $('#confirmed').on('click', function(event) {
    console.log("confirmed");
    $('.card').hide().fadeIn(600);
    $('.card').removeClass('hidden');
    $('.pending').toggleClass('hidden');
    $('.rejected').toggleClass('hidden');
  });

  $('#pending').on('click', function(event) {
    console.log("pending");
    $('.card').hide().fadeIn(600);
    $('.card').removeClass('hidden');
    $('.confirmed').toggleClass('hidden');
    $('.rejected').toggleClass('hidden');
  });

  $('#rejected').on('click', function(event) {
    console.log("rejected");
    $('.card').hide().fadeIn(600);
    $('.card').removeClass('hidden');
    $('.confirmed').toggleClass('hidden');
    $('.pending').toggleClass('hidden');
  });


});
