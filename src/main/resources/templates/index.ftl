<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    <meta charset="UTF-8">
	    <title>技术分享|ExperienceShare</title>
		<link rel="shortcut icon" href="static/image/MyBlog-logo-black.png" type="image/x-icon">
		<link href="static/plugins/vidage/vidage.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<!-- begin background void -->
		<div class="vidage">
		  <video id="vidage" class="vidage-video" preload="metadata" loop autoplay muted>
		    <source src="static/media/indexbg.mp4" type="video/mp4">
		  </video>
		</div>
		<!-- end background void -->
		<#include "/hand.ftl">
		<link href="static/css/index.css" rel="stylesheet" type="text/css" />
		<div class="container-fluid">
			<div class="row">
				<!-- begin profile -->
				<div class="col-md-2 col-md-offset-1">
					<#include "/left.ftl">
				</div>
				<!-- end profile -->
				<!-- begin content -->
				<div class="col-md-6 blog-content">
					<div id="blog-content">
						<#list data as item>
		                <div class="portlet light content-submodel">
		                    <h4 class="content-title"><a href="article/details?articleId=${item.articleId}" target="_blank">${item.title}</a></h4>
		                    <p class="content-gist">${item.intro}</p>
		                    <div class="content-foot">
		                        <ul class="list-inline"><li>阅读数：${item.readTime}</li><li>发布时间：${item.createTime}</li>
		                    </div>
		                </div>
		                </#list>
					</div>
					<p class="bottom-info">我是有底线的~^_^~</p>
				</div>
				<div class="col-md-2">
					<#include "/right.ftl">
				</div>
			</div>
		</div>
		<!-- end content -->
		<p id="back-to-top"><a href="#top"><span>6666</span></a></p>
		<#include "/foot.ftl">
		<script type="text/javascript" src="static/plugins/vidage/vidage.js"></script>
		<script type="text/javascript" src="static/js/index.js"></script>
	</body>
</html>