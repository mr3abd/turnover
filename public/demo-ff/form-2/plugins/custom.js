$(document).ready(function() {
  // alert('please press enter to continue');
  /*==============================
                Css fix
    =============================*/
  // resize content height
  var main_height =
    String($(window).height() - $(".info").height() - 50) + "px";
  $(".content").css({
    height: main_height
  });
  $(".content input").focus(function() {
    console.log(this);
    $(this).css({
      margin: "10px 5px",
      fontSize: "25px",
      padding:"20px 7px 0px 7px",
      width: "320px"
          });
    // $(this).next("label").css({
    //   // fontSize:"21px"
    // })
  });
  $(".content input").blur(function() {
    $(this).css({
      margin: "none",
      fontSize: "15px",
      padding:0,
      width: "310px"      
      // transition:"all 0.5s ease-out"      
    });
    $(this).next("label").css({
      fontSize:"1rem"
    })
  });
  $(".tab input").blur(function() {
    if ($(this).val()) {
      $(this)
        .next("label")
        .addClass("active");
    }
  });
  $(".input-field label").click(function(){
    $(this).prev("input").focus();
  })
  // for Mobile enter .
  $("input").attr("tabindex", "-1");
  // for input bug
  $("input").on("blur", function() {      
    if ($(this).val().length) {
    //   $(this).next("label").addClass("active");
      $(this).next("label").css({
        '-webkit-transform': 'translateY(-14px) scale(0.8)',
        'transform': 'translateY(-14px) scale(0.8)',
       ' -webkit-transform-origin':' 0 0',
       ' transform-origin':' 0 0'
      });
    
    }else{
        $(this).next("label").css({
            '-webkit-transform': 'none',
            'transform': 'none',
           ' -webkit-transform-origin':'none',
           ' transform-origin':'none'
          });
    }
  });
  /*===============================
               data slider
    ===============================*/
  // definition of the regular functions;
  var activeTap = 0;
  var tabsNum = $(".tab").length;
  // dots function to select which one is in active state;
  (function dots() {
    // dynamically create dots depnd on the number of tabs
    for (var i = 1; i <= tabsNum; ++i) {
      $(".dots").append(`<span class="n${i}"></span>`);
    }
    // change style of dots in active mode;
    $(".dots span").click(function() {
      for (var i = 1; i <= tabsNum; ++i) {
        $(".dots span").removeClass("light");
        $(".content .active").removeClass("active");
      }
      $(this).addClass("light");
      // change the regular variable (activeTap) value;
      activeTap = parseInt(
        $(this)
          .attr("class")
          .slice(1, 2)
      );
      $(".content")
        .find(`.n${activeTap}`)
        .addClass("active");
      console.log("active tab" + activeTap);
    });
  })();

  // dynamically set the number of the tab
  (function numberTaps() {
    for (var i = 1; i <= tabsNum; ++i) {
      $($(".content .tab")[i - 1]).addClass("n" + i);
    }
  })();
  /*=============================
        Enter to next section
    =============================*/
  var n = 0;
  var num = null;
  $(".dots span")[0].click();
  $(".content input")[n].click();

  function ActiveInput() {
    num = $(".active section").find("input").length;
    console.log("num " + num);
    return num;
  }
  (function ClickedInput() {
    $(".active input").click(function() {
      n = $(this).index("input");
    });
  })();

  function NextTap() {
    activeTap += 1;
    $(`.dots .n${activeTap}`).click();
    ActiveInput();
    n = 0;
  }
  $("input").keypress(function(event) {
    if (event.which == 13) {
      if (n + 1 < ActiveInput()) {
        n += 1;
        console.log(n);
        $(".active section")
          .find("input")
          [n].focus();
      } else {
        if (activeTap < tabsNum) {
          NextTap();
          $(".active section")
            .find("input")
            [n].focus();
        } else {
          $("form").submit();
        }
      }
    }
  });
});