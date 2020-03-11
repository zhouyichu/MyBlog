<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    <meta charset="UTF-8">
		<title>留言板</title>
		<link id="link-icon" rel="shortcut icon" href="${request.contextPath}/static/image/MyBlog-logo-black.png" type="image/x-icon">
		<link href="${request.contextPath}/static/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/vidage/vidage.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/metronic/global/components.min.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/metronic/page/blog.min.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/css/message.css" rel="stylesheet" type="text/css" />
		
	    <script type="text/javascript" src="${request.contextPath}/static/jQuery.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/bootstrap/js/bootstrap.min.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/vidage/vidage.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/js/message.js"></script>
	</head>
	<body>
		<!-- begin background void -->
		<div class="vidage">
		  <video id="vidage" class="vidage-video" preload="metadata" loop autoplay muted>
		    <source src="${request.contextPath}/static/media/indexbg.mp4" type="video/mp4">
		  </video>
		</div>
		<!-- end background void -->
		<!-- begin navigation bar -->
		<div class="navbar-collapse collapse">
		    <ul class="nav navbar-nav">
		        <li class="active"><a href="#">首页</a></li>
		        <li><a href="#">心情随笔</a></li>
		        <li><a href="#">技术分享</a></li>
		        <li><a href="#">资源下载</a></li>
		        <li><a href="#">项目合作</a></li>
		        <li><a href="#">留言板</a></li>
		        <li><a href="#">关于我</a></li>
		    </ul>
		</div>
		<!-- end navigation bar -->
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="blog-single-content bordered blog-container">
						<div class="blog-comments">
							<h3 class="sbold blog-comments-title">发表留言</h3>
                            <form action="#">
                                <div class="form-group">
                                    <input type="text" placeholder="您的名字" class="form-control c-square"> </div>
                                <div class="form-group">
                                    <input type="text" placeholder="您的邮箱地址" class="form-control c-square"> </div>
                                <div class="form-group">
                                    <textarea rows="8" name="message" placeholder="在这儿留下你的留言，我会尽快查看并回复......" class="form-control c-square"></textarea>
                                </div>
                                <div class="form-actions">
                                    <div class="form-group" style="text-align:center;">
	                                    <button type="submit" class="btn blue uppercase btn-md sbold" style="width:40%;">提交</button>
	                                </div>
                                </div>
                            </form>
                            <h3 class="sbold blog-comments-title">留言(30)</h3>
                            <div class="c-comment-list">
                                <div class="media">
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            <a href="#">Henry</a> 于
                                            <span class="c-date">2015-08-25 15:24:55</span>
                                        </h4>
                                        32岁的亨利就坐在那里，深情的目光望过去，都是自己22岁的影子。
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            <a href="#">Strong Strong</a> 于
                                            <span class="c-date">2016-06-09 21:40:23</span>
                                        </h4>
										我们趋行在人生这个亘古的旅途，在坎坷中奔跑，在挫折里涅槃，忧愁缠满全身，痛苦飘洒一地。我们累，却无从止歇，我们苦，却无法回避。
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            <a href="#">妮蔻</a> 于
                                            <span class="c-date">2016-06-09 21:42:34</span>
                                        </h4>
										 柳庭风静人眠昼，昼眠人静风庭柳。香汗薄衫凉，凉衫薄汗香。 手红冰碗藕，藕碗冰红手。郎笑藕丝长，长丝藕笑郎。
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            <a href="#">伍尔芙</a> 于
                                            <span class="c-date">2016-06-09 21:42:34</span>
                                        </h4>
										 人不应该是插在花瓶里供人观赏的静物，而是蔓延在草原上随风起舞的韵律，生命不是安排，而是追求，人生的意义也许永远没有答案，但也要尽情感受这种没有答案的人生。
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            <a href="#">嘉文</a> 于
                                            <span class="c-date">2017-11-02 06:51:08</span>
                                        </h4>
										 千军万马一将在，探囊取物有何难。
                                    </div>
                                </div>
                            </div>
                        </div>
					</div>
				</div>
			</div>
		</div>
		<!-- begin foot -->
		<div class="navbar navbar-static-bottom">
		    <div class="navbar-nav">
		    	<p>Copyright © 2020 Newbe36524</p>
				<p>Powered by .NET Core on Kubernetes</p>
		    </div>
		</div>
		<!-- end foot -->		
	</body>
</html>