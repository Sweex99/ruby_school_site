/*window.onload = function an() {
  var element = document.getElementById('dv');
  console.log(element);
  if (element.className == "d-none") {
      element.className = "animated fadeInDown delay-0s";
      setTimeout(function(){element.className = "hidden"; element.style('transition: visibility 0s, opacity 0.5s linear;visibility: collapse;opacity: 0;')}, 6000)
  } else {
      setTimeout(function(){element.className = "hidden"; element.style('transition: visibility 0s, opacity 0.5s linear')}, 6000)
  }
}*/

$(document).ready(function(){
      $("#dv").attr('class', 'animated fadeInDown delay-0s')
      setTimeout(function () {
          $("#dv").attr('class', 'hidden')
      }, 6000)
});