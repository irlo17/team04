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
  if ($(this).attr("src") == "./resources/img/modal/koreanFood.png") {
    $("#koreanFood").attr("src", "./resources/img/modal/koreanFoodClick.png");
  } else {
    $("#koreanFood").attr("src", "./resources/img/modal/koreanFood.png");
  }
});

$("#japaneseFood").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/japaneseFood.png") {
    $("#japaneseFood").attr("src", "./resources/img/modal/japaneseFoodClick.png");
  } else {
    $("#japaneseFood").attr("src", "./resources/img/modal/japaneseFood.png");
  }
});

$("#chineseFood").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/chineseFood.png") {
    $("#chineseFood").attr("src", "./resources/img/modal/chineseFoodClick.png");
  } else {
    $("#chineseFood").attr("src", "./resources/img/modal/chineseFood.png");
  }
});

$("#westernFood").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/westernFood.png") {
    $("#westernFood").attr("src", "./resources/img/modal/westernFoodClick.png");
  } else {
    $("#westernFood").attr("src", "./resources/img/modal/westernFood.png");
  }
});

$("#worldFood").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/worldFood.png") {
    $("#worldFood").attr("src", "./resources/img/modal/worldFoodClick.png");
  } else {
    $("#worldFood").attr("src", "./resources/img/modal/worldFood.png");
  }
});

$("#buffet").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/buffet.png") {
    $("#buffet").attr("src", "./resources/img/modal/buffetClick.png");
  } else {
    $("#buffet").attr("src", "./resources/img/modal/buffet.png");
  }
});

$("#cafe").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/cafe.png") {
    $("#cafe").attr("src", "./resources/img/modal/cafeClick.png");
  } else {
    $("#cafe").attr("src", "./resources/img/modal/cafe.png");
  }
});

$("#pup").on("click", function name(params) {
  if ($(this).attr("src") == "./resources/img/modal/pup.png") {
    $("#pup").attr("src", "./resources/img/modal/pupClick.png");
  } else {
    $("#pup").attr("src", "./resources/img/modal/pup.png");
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
