$(document).ready(function() {
  // alert('please press enter to continue');
  /*==============================
                Css fix
    =============================*/
  $(".tooltipped").tooltip({ delay: 50 });
  $(".content input").focus(function() {
    $(this).css({
      margin: "10px 0px 10px 0px",
      fontSize: "30px",
      padding: "20px 4px 0px 4px",
      width: "80%"
    });
    // $(this).next("label").css({
    //   // fontSize:"21px"
    // })
  });
  $(".content input").blur(function() {
    $(this).css({
      margin: "0",
      fontSize: "21px",
      padding: 0,
      width: "77%"
      // transition:"all 0.5s ease-out"
    });
    $(this)
      .next("label")
      .css({
        fontSize: "1rem"
      });
  });
  $(".tab input").blur(function() {
    if ($(this).val()) {
      $(this)
        .siblings("label")
        .addClass("active");
    }
  });
  $(".input-field label").click(function() {
    $(this)
      .siblings("input")
      .focus();
  });
  // for Mobile enter .
  $("input").attr("tabindex", "-1");
  // for input bug
  $("input").on("blur", function() {
    if ($(this).val().length) {
      $(this)
        .siblings("label")
        .css({
          "-webkit-transform": "translateY(-14px) scale(0.8)",
          transform: "translateY(-14px) scale(0.8)",
          "-webkit-transform-origin": " 0 0",
          "transform-origin": " 0 0"
        });
    } else {
      $(this)
        .next("label")
        .css({
          "-webkit-transform": "none",
          transform: "none",
          " -webkit-transform-origin": "none",
          " transform-origin": "none"
        });
    }
  });
  if ($(this).val().length) {
    $(this)
      .siblings("label")
      .css({
        "-webkit-transform": "translateY(-14px) scale(0.8)",
        transform: "translateY(-14px) scale(0.8)",
        " -webkit-transform-origin": " 0 0",
        " transform-origin": " 0 0"
      });
    }
    $(".submit_button").on("click",function(){
      $("#multi_stepID form").submit();
    })
    /*===============================
    data slider
    ===============================*/
    // definition of the regular functions;
    var activeTap = 0;
    var tabsNum = $(".tab").length;
    var num = null;
    var validInput = 1;
    var input_num = $("input").length;
    // dots function to select which one is in active state;
  (function dots() {
    // dynamically create dots depnd on the number of tabs
    for (var i = 0; i < tabsNum; ++i) {
      $(".dots").append($("<span>").addClass("n" + i).attr("data-index", i));
    }
    // change style of dots in active mode;
    $(".dots span").click(function() {
      $(".dots span.light").removeClass("light");
      $(".content .active").removeClass("active");
      $(this).addClass("light");
      // change the regular variable (activeTap) value;
      activeTap = parseInt($(this).attr("data-index"));
      $(".content").find(".n" + activeTap).addClass("active");
      // console.log("active tab" + activeTap);
    });
  }());

  // dynamically set the number of the tab
  (function numberTaps() {
    for (var i = 0; i < tabsNum; ++i) {
      $(".content .tab").eq(i).addClass("n" + i);
    }
  }());
  /*=============================
        Enter to next section
    =============================*/
  $(".dots span")[0].click();
  $(".content input")[0].click();

  function NextTap() {
    $(`.dots span`).eq(activeTap + 1).click();
  }


  $("input").keypress(function(event) {
    var n = $(this).parents(".active").find("input").index(this),
        length = $(".active section input").length;
      // console.log(n, length);
    if (event.which == 13) {

      if($(this).val().length && !$(this).hasClass("counted")){
        $(this).addClass("counted")
        validInput++;
        $("#current_state div span").css("width",Math.ceil((validInput/input_num)*100)+"%");
        $("#current_state div span").css("transition","all 0.35s ease-in-out");
        $("#current_state div p").text(Math.ceil((validInput/input_num)*100)+"%");

      }
      // console.log(validInput);
      if (n + 1 < length) {
        $(".active section input").eq(n += 1).focus();
        // $("#current_state span").text()
      } else {
        if (activeTap+1 < tabsNum) {
          NextTap();
          $(".active section input").eq(0).focus();
        } else {
          $("form").submit();
        }
      }
    }
  });
});
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//


$("form").on("keypress", function (e) {
    if (e.keyCode == 13) {
        return false;
    }
});
