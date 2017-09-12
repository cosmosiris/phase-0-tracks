console.log("does this work?")


function changeBorder(event){
  event.target.style.border = "4px solid white";
}

var photo = document.getElementById("founder_pic");
photo.addEventListener("click", changeBorder);
