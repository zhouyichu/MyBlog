$(function(){
	console.log("hello, It's MyBlog. Welcome you!");
	changeIcon();
	new Vidage('#vidage');
});

/**
 * 修改title，变成一闪一闪亮晶晶	
 */
var checkUp = true;
var changeIcon = function(){
	setInterval(function(){
		if(checkUp){
			var href = $("#link-icon").attr("href","static/image/MyBlog-logo-black.png");
			checkUp=false;
		}else{
			var href = $("#link-icon").attr("href","static/image/MyBlog-logo-white.png");
			checkUp=true;
		}
	},300);
}