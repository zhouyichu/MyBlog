<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    <meta charset="UTF-8">
		<title>留言板</title>
		<link id="link-icon" rel="shortcut icon" href="${request.contextPath}/static/image/MyBlog-logo-black.png" type="image/x-icon">
	</head>
	<body>
		<!-- begin background void -->
		<div class="vidage">
		  <video id="vidage" class="vidage-video" preload="metadata" loop autoplay muted>
		    <source src="${request.contextPath}/static/media/indexbg.mp4" type="video/mp4">
		  </video>
		</div>
		<!-- end background void -->
		<#include "/hand.ftl">
		<!-- ref css file -->
		<link href="${request.contextPath}/static/plugins/vidage/vidage.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/bootstrap/bootstrap-sweetalert/sweetalert.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/css/message.css" rel="stylesheet" type="text/css" />
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="blog-single-content bordered blog-container">
						<div class="blog-comments">
							<h3 class="sbold blog-comments-title">发表留言</h3>
                            <form action="#" id="msgForm">
                                <div class="form-group">
                                    <input type="text" name="account" id="account" placeholder="您的名字" class="form-control c-square"> </div>
                                <div class="form-group">
                                    <input type="text" name="email" id="email" placeholder="您的邮箱地址" class="form-control c-square"> </div>
                                <div class="form-group">
                                    <textarea rows="8" maxlength="500" name="content" id="content" placeholder="在这儿留下你的留言，我会尽快查看并回复......" class="form-control c-square"></textarea>
                                </div>
                                <div class="form-actions">
                                    <div class="form-group" style="text-align:center;">
	                                    <button type="button" class="btn blue uppercase btn-md sbold" id="btn-submit">提交</button>
	                                </div>
                                </div>
                            </form>
                            <h3 class="sbold blog-comments-title"></h3>
                            <div class="c-comment-list" id="message-content"></div>
                        </div>
					</div>
					<!-- begin page -->
					<div class="clearfix">
                        <p style="text-align: center;" id="pagePlug">
                        	<input type="hidden" id="pageNum" value="1"/>
                        	<button type="button" class="btn blue-hoki btn-outline disabled" id="first-page"><<首页</button>
                    		<button type="button" class="btn blue-hoki btn-outline disabled" id="prev-page">上一页</button>
                    		<button type="button" class="btn blue-hoki btn-outline" id="next-page">下一页</button>
                        	<button type="button" class="btn blue-hoki btn-outline" id="last-page">尾页>></button>
                        </p>
                    </div>
                    <!-- end page -->
				</div>
			</div>
		</div>
		<#include "/foot.ftl">
		<!-- ref js file -->
		<script type="text/javascript" src="${request.contextPath}/static/plugins/vidage/vidage.js"></script>
		<script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
		<script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-validator/bootstrapValidator.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="${request.contextPath}/static/plugins/bootstrap/bootstrap-sweetalert/sweetalert.min.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/js/message.js"></script>
	</body>
</html>