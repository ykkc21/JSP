$(function(){
	 var target = $('.target');
	    // 1
	     var zoom = target.data('zoom');
	     $("body").css({ "position" : "relative" });
	     $(".imgbox")
	         .on('mousemove', magnify)
	         .prepend("<div class='magnifier'></div>")
	         .children('.magnifier').css({
	             "background": "url('" + target.attr("src") + "') no-repeat",
	             // 2
	             "background-size": target.width() * zoom + "px " + target.height() * zoom+ "px"
	         });
	 
	     var magnifier = $('.magnifier');
	 
	     function magnify(e) {
	 
	          //마우스 위치에서 .magnify의 위치를 차감해 컨테이너에 대한 마우스 좌표를 얻는다.
	         var mouseX = e.pageX - $(this).offset().left;
	         var mouseY = e.pageY - $(this).offset().top;
	 
	          //컨테이너 밖으로 마우스가 벗어나면 돋보기를 없앤다.
	         if (mouseX < $(this).width() && mouseY < $(this).height() && mouseX > 0 && mouseY > 0) {
	             magnifier.css({ "display" : "block" });
	         } else {
	        	 magnifier.css({ "display" : "none" });
	         }
	 
	         //돋보기가 존재할 때
	         if (magnifier.is(":visible")) {
	 
	              3
	             var rx = -(mouseX * zoom - magnifier.width() /2 );
	             var ry = -(mouseY * zoom - magnifier.height() /2 );
	 
	            // 돋보기를 마우스 위치에 따라 움직인다.
	             //돋보기의 width, height 절반을 마우스 좌표에서 차감해 마우스와 돋보기 위치를 일치시킨다.
	             var px = mouseX - magnifier.width() / 2;
	             var py = mouseY - magnifier.height() / 2;
	 
	             //적용
	             magnifier.css({
	                 "width" : "250px",
	             "height" : "250px",
	             "position" : "absolute",
	             "top" : "0%",
	             "right" : "0%",
	             "border" : "2px solid",
	             "border-radius" : "100%",
	                 left: px,
	                 top: py,
	                 backgroundPosition: rx + "px " + ry + "px"
	             });
	         }
	     }

})