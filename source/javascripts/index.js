//Delay animation until after page load
function load() {
  var d = document.getElementById("body");
  d.className = d.className + " animate";
}
window.onload = load;
