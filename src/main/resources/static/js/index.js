$(function(){
	console.log("hello, It's MyBlog. Welcome you!");
	new Vidage('#vidage');
	loadArticle();
});


/**
 * 加载文章列表
 */
var loadArticle = function(){
	var pageNum = 2;//页面加载第一页，这里从第二页开始加载
	$(window).scroll(function(){//监听鼠标滚动
        if ($(window).scrollTop() + $(window).height() == $(document).height()) {//滚动到最底部或者首次加载
			if(pageNum != -1){//已加载了最后一页数据，不再拉取
				$.ajax({
					url:'article/list',
					data:{'pageNum':pageNum},
					type:'POST',
					beforeSend:function(){
						console.log("load articleList...");
					},
					success:function(data){
						if(data){
							if(data.pageNum==data.pages+1){
								pageNum=-1;
							}else{
								pageNum++;
								var html = "";
								for(var i=0;i<data.list.length;i++){
									html+="<div class=\"portlet light content-submodel\">";
									html+="<h4 class=\"content-title\"><a href=\"article/details?articleId="+data.list[i].articleId+"\" target=\"_blank\">"+data.list[i].title+"</a></h4>";
									html+="<p class=\"content-gist\">"+data.list[i].content+"</p>";
									html+="<div class=\"content-foot\">";
									html+="<p class=\"content-create-time\">"+data.list[i].createTime+"</p>";
									html+="</div></div>";
								};
								$("#blog-content").append(html);
							}
						}
					},
					error:function(e){
						console.log(e);
					}
				});
			}else{
				console.log("我是有底线的！");
				$(".bottom-info").css("display","block");
			}
        }
    });
};