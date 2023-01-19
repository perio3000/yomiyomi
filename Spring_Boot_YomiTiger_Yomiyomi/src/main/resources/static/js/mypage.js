let key = "${param.key}";

if(key === "first"){
	
	$("#second-tab").removeClass("active");
	$("#third-tab").removeClass("active");
	$("#fourth-tab").removeClass("active");
	$("#first-tab").addClass("active");
	
	$("#second").removeClass("show active");
	$("#third").removeClass("show active");
	$("#fourth").removeClass("show active");
	$("#first").addClass("show active");
	
}else if(key === "second"){
	
	$("#third-tab").removeClass("active");
	$("#first-tab").removeClass("active");
	$("#fourth-tab").removeClass("active");
	$("#second-tab").addClass("active");
	
	$("#first").removeClass("show active");
	$("#third").removeClass("show active");
	$("#fourth").removeClass("show active");
	$("#second").addClass("show active");
	
}else if(key === "third"){
	
	$("#first-tab").removeClass("active");
	$("#second-tab").removeClass("active");
	$("#fourth-tab").removeClass("active");
	$("#third-tab").addClass("active");
	
	$("#second").removeClass("show active");
	$("#first").removeClass("show active");
	$("#fourth").removeClass("show active");
	$("#third").addClass("show active");
}else if(key === "fourth"){
	
	$("#first-tab").removeClass("active");
	$("#second-tab").removeClass("active");
	$("#third-tab").removeClass("active");
	$("#fourth-tab").addClass("active");
	
	$("#second").removeClass("show active");
	$("#first").removeClass("show active");
	$("#third").removeClass("show active");
	$("#fourth").addClass("show active");
}

function secondTab(){
	$("#second-tab").click();
}

function thirdTab(){
	$("#third-tab").click();
}

function fourthTab(){
	$("#fourth-tab").click();
}

$(document).ready(function(){
	$(".preText").text($(".준비중").length)
	$(".ingText").text($(".배송중").length);
	$(".endText").text($(".배송완료").length);
	$(".canText").text($(".취소").length);
	$(".refText").text($(".교환환불").length);
	
	if($("input[name=preList]").length == 0){
		$(".nonPreList").css("display", "block");
	};
	
	if($("input[name=ingList]").length == 0){
		$(".nonIngList").css("display", "block");
	};
	
	if($("input[name=comList]").length == 0){
		$(".nonComList").css("display", "block");
	};
	
})
