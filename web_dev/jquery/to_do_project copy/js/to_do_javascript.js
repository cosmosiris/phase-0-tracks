//Check off specific todos by clicking

$("ul").on("click","li",function(){
  //if li is gray turn it black
    $(this).toggleClass("completed");
});

//click on X to delete todo using event listener
$("ul").on("click", "span", function(event){
  $(this).parent().fadeOut(1000,function(){
    $(this).remove();
  });
  event.stopPropagation();
});

$("input[type='text'").keypress(function(event){
  if(event.which === 13){
      //grab new todo text from input
    var todoText = $(this).val();
      //empty input
    $(this).val("");
      //create a new li with Xspan attached and add to ul
    $("ul").append("<li><span><i class='fa fa-trash'></i></span> " + todoText + "</li>");
  }
});

$(".fa-plus").click(function(){
  $("input[type='text'").fadeToggle()
});