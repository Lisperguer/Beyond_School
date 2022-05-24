// Get the modal
var modal = document.getElementById("myModal");
// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal
btn.onclick = function() {
  //var form = document.getElementById("form-container")
  // console.log(form)
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

var miCheckbox = document.getElementById('miElementoCheckbox');
var msg = document.getElementById('msg');

console.log(miCheckbox)

alert('El valor inicial del checkbox es ' + miCheckbox.checked);

miCheckbox.addEventListener('click', function() {
  if(miCheckbox.checked) {
    console.log(miCheckbox.checked);
    modal.style.display = "none";



  } else {
    console.log(miCheckbox.checked[0]);
    console.log(miCheckbox.checked);
    console.log(miCheckbox.checked.value);

  }
});
