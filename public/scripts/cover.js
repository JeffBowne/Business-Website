
$(document).ready(function() {


$('.delayfade').css('display', 'none');

$(".animsition").animsition({
  // options
}).one('animsition.end',function(){


$('.delayfade').fadeIn(1500);

})





// $('body').click(function(event) {


// newLocation = this.href;

// $('body').fadeOut(500, newpage);

// });



// function newpage() {

// window.location = newLocation;

// }

});








// $("body").click( function() {
//   $("body").fadeOut(1000)
// });