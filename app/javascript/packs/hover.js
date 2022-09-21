/* Demo purposes only */
document.addEventListener("load", ()=>{
  $(".hover").mouseleave(
    function() {
      $(this).removeClass("hover");
    }
  );
})
