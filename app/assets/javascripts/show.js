window.addEventListener('load',function(){
  let tabs = $(".tab_label");
  function tabSwitch(){
    $(".active").removeClass("active");
    $(this).addClass("active");
    const index = tabs.index(this);
    $('.tab_panel').removeClass("show").eq(index).addClass("show");
  }
  tabs.click(tabSwitch);
});


