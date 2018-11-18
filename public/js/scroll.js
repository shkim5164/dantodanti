$(window).load(function(){
  //========================================================
  // Adds the active class to selected Pokemon
  //========================================================
	function changeActive() {
    var pkmn = $(".pkmn");
  
   pkmn.click(function(){
     pkmn.removeClass("active");
     $(this).addClass("active");
   });
  }
 
 //========================================================
 // Sets up scrolling functionality for next/prev buttons
 //========================================================
  function setScroll() {
		$(document).on("click", "#prevThumb", function() {
			var leftPos = $("#imageWrapper").scrollLeft();

			if ($("#imageWrapper").scrollLeft() > "0") {
				$("#imageWrapper").animate({scrollLeft: leftPos - 500}, 300);
			}

			else {
				event.preventDefault();
			}
		});

		$(document).on("click", "#nextThumb", function() {
			var leftPos = $("#imageWrapper").scrollLeft();

			if (leftPos < $("#imageWrapper")[0].scrollWidth) {
				$("#imageWrapper").animate({scrollLeft: leftPos + 500}, 300);
			}

			else {
				event.preventDefault();
			}
		});
	}
  
  
  
  changeActive();
	setScroll();
  /*completeCycle(); */  
});

$(window).load(function(){
  //========================================================
  // Adds the active class to selected Pokemon
  //========================================================
	function changeActive() {
    var pkmn = $(".pkmn1");
  
   pkmn.click(function(){
     pkmn.removeClass("active");
     $(this).addClass("active");
   });
  }
 
 //========================================================
 // Sets up scrolling functionality for next/prev buttons
 //========================================================
  function setScroll() {
		$(document).on("click", "#prevThumb", function() {
			var leftPos = $("#imageWrapper").scrollLeft();

			if ($("#imageWrapper").scrollLeft() > "0") {
				$("#imageWrapper").animate({scrollLeft: leftPos - 500}, 300);
			}

			else {
				event.preventDefault();
			}
		});

		$(document).on("click", "#nextThumb", function() {
			var leftPos = $("#imageWrapper").scrollLeft();

			if (leftPos < $("#imageWrapper")[0].scrollWidth) {
				$("#imageWrapper").animate({scrollLeft: leftPos + 500}, 300);
			}

			else {
				event.preventDefault();
			}
		});
	}
  
  
  
  changeActive();
	setScroll();
  /*completeCycle(); */  
});