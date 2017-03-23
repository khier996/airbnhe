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

  // $('#all').on('click', function(event) {
  //   $('#confirmed').toggleClass('hidden');
  //   $('#rejected').toggleClass('hidden');
  //   $('#rejected').toggleClass('hidden');
  // });

  $('#confirmed').on('click', function(event) {
    $('#pending').toggleClass('hidden');
    $('#rejected').toggleClass('hidden');
  });

  $('#pending').on('click', function(event) {
    $('#confirmed').toggleClass('hidden');
    $('#rejected').toggleClass('hidden');
  });

  $('#rejected').on('click', function(event) {
    $('#confirmed').toggleClass('hidden');
    $('#pending').toggleClass('hidden');
  });


});
