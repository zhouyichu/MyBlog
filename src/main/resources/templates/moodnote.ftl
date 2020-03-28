<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    <meta charset="UTF-8">
	    <title>心情随笔|MoodNote</title>
		<link id="link-icon" rel="shortcut icon" href="static/image/MyBlog-logo-black.png" type="image/x-icon">
		<link href="${request.contextPath}/static/css/moodnote.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<#include "/hand.ftl">
		<div class="container-fluid">
			<div class="row mood-head">
                <div class="col-md-12 mood-head-content">
                    <h1>Mood essay</h1>
                    <h2>Not pleased by external gains, Not saddened by personal losses....</h2>
                </div>
			</div>
			
			<div class="col-md-8 col-md-offset-2 note-container">
				<div id="note-content">
					<#list data as item>
	                <div class="portlet content-submodel">
	                    <h4 class="content-title"><a href="article/mood/details?articleId=${item.articleId}" target="_blank">${item.title}</a></h4>
	                    <p class="content-gist">${item.intro}</p>
	                    <div class="content-foot">
	                        <ul class="list-inline"><li>阅读数：${item.readTime}</li><li>发布时间：${item.createTime}</li>
	                    </div>
	                </div>
	                </#list>
				</div>
			</div>
		</div>
		<#include "/foot.ftl">
	</body>
	<script type="text/javascript" src="${request.contextPath}/static/js/moodnote.js"></script>
</html>