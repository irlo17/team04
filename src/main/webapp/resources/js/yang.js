const modal = document.querySelector(".filter-modal");

//modal창 열고 닫기
$("#filter-modal-open").click(function () {
  $(".filter-modal").css("display", "block");
});

$("#close").click(function () {
  modalClose();
});

function modalClose() {
  $("#popup").fadeOut();
}

$("#closeImg").click(function name(params) {
  $(".filter-modal").fadeOut();
  // css("display", "none");
});

//모달 음식종류
$("#koreanFood").on("click", function name(params) {
  if ($(this).attr("src") == "img/modal/koreanFood.png") {
    $("#koreanFood").attr("src", "img/modal/koreanFoodClick.png");
  } else {
    $("#koreanFood").attr("src", "img/modal/koreanFood.png");
  }
});

$("#japaneseFood").on("click", function name(params) {
  if ($(this).attr("src") == "img/modal/japaneseFood.png") {
    $("#japaneseFood").attr("src", "img/modal/japaneseFoodClick.png");
  } else {
    $("#japaneseFood").attr("src", "img/modal/japaneseFood.png");
  }
});

$("#chineseFood").on("click", function name(params) {
  if ($(this).attr("src") == "img/modal/chineseFood.png") {
    $("#chineseFood").attr("src", "img/modal/chineseFoodClick.png");
  } else {
    $("#chineseFood").attr("src", "img/modal/chineseFood.png");
  }
});

$("#westernFood").on("click", function name(params) {
  if ($(this).attr("src") == "img/modal/westernFood.png") {
    $("#westernFood").attr("src", "img/modal/westernFoodClick.png");
  } else {
    $("#westernFood").attr("src", "img/modal/westernFood.png");
  }
});

$("#worldFood").on("click", function name(params) {
  if ($(this).attr("src") == "img/modal/worldFood.png") {
    $("#worldFood").attr("src", "img/modal/worldFoodClick.png");
  } else {
    $("#worldFood").attr("src", "img/modal/worldFood.png");
  }
});

$("#buffet").on("click", function name(params) {
  if ($(this).attr("src") == "img/modal/buffet.png") {
    $("#buffet").attr("src", "img/modal/buffetClick.png");
  } else {
    $("#buffet").attr("src", "img/modal/buffet.png");
  }
});

$("#cafe").on("click", function name(params) {
  if ($(this).attr("src") == "img/modal/cafe.png") {
    $("#cafe").attr("src", "img/modal/cafeClick.png");
  } else {
    $("#cafe").attr("src", "img/modal/cafe.png");
  }
});

$("#pup").on("click", function name(params) {
  if ($(this).attr("src") == "img/modal/pup.png") {
    $("#pup").attr("src", "img/modal/pupClick.png");
  } else {
    $("#pup").attr("src", "img/modal/pup.png");
  }
});

//모달 지역
$("#gangnam").click(function name(params) {
  $(".region > .gangbook").css("display", "none");
  $(".gangnam").css("display", "block");
});

$("#gangbook").click(function name(params) {
  $(".region > .gangnam").css("display", "none");
  $(".gangbook").css("display", "block");
});
