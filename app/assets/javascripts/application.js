//= require jquery
//= require underscore
//= require gmaps/google
//= require jquery_ujs
//= require bootstrap-sprockets
//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require_tree
//= require moment
//= require bootstrap-datetimepicker

$(document).ready(function() {
  $('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    autoplay:true,
    autoplayTimeout:1500,
    autoplayHoverPause:true,
    nav:true,
    responsive:{
        0:{
            items:2
        },
        600:{
            items:2
        },
        1000:{
            items:2
        }
    }
});
});

$(function () {
$('.form_datetime').datetimepicker({ format: 'YYYY-MM-DD' });
});



