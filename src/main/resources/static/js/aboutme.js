$(function(){
	$('body').backstretch([
		'static/image/bg-1.jpg', 
		'static/image/bg-2.jpg', 
		'static/image/bg-3.jpg',
		'static/image/bg-4.jpg',
		'static/image/bg-5.jpg'
	],{
		fade: 1000,
		duration: 8000
	});
	
	//定时翻动技能面板
//	var ref = setInterval(function(){
//   		FilpBrand();
//	},1000);
});

/**
 * 翻转技能面板特效
 */
var FilpBrand = function(){
	var x = 17;//上限
	var y = 0; //下限
	var rand1 = parseInt(Math.random() * (x - y + 1) + y);
	$(".tiles").find(".tile").eq(rand1).css({"transform-style":"preserve-3d","transition":"ease-in-out 600ms","transform":"rotateY(360deg)"});
	//延时1s清除翻转样式
	setTimeout(function(){
		$(".tiles").find(".tile").eq(rand1).removeAttr("style");
	},500);
}