<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    <meta charset="UTF-8">
		<title>Welcome to MyBlog</title>
		<link id="link-icon" rel="shortcut icon" href="static/image/MyBlog-logo-black.png" type="image/x-icon">
		<link href="static/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="static/plugins/vidage/vidage.css" rel="stylesheet" type="text/css" />
		<link href="static/plugins/metronic/global/components.min.css" rel="stylesheet" type="text/css" />
		<link href="static/plugins/metronic/page/blog.min.css" rel="stylesheet" type="text/css" />
		<link href="static/css/index.css" rel="stylesheet" type="text/css" />
		
	    <script type="text/javascript" src="static/jQuery.js"></script>
	    <script type="text/javascript" src="static/plugins/bootstrap/js/bootstrap.min.js"></script>
	    <script type="text/javascript" src="static/plugins/vidage/vidage.js"></script>
	    <script type="text/javascript" src="static/js/index.js"></script>
	</head>
	<body>
		<!-- begin background void -->
		<div class="vidage">
		  <video id="vidage" class="vidage-video" preload="metadata" loop autoplay muted>
		    <source src="static/media/indexbg.mp4" type="video/mp4">
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
				<!-- begin profile -->
				<div class="col-md-2 col-md-offset-1">
					<div class="blog-content-1">
						<div class="blog-quote bordered blog-container">
	                        <div class="blog-quote-label bg-green-jungle">
	                            <i class="fa fa-quote-left"></i>从事Java web全栈开发四年，玩转RESTful风格的API接口开发，熟练Spring家族框架，熟悉微服务架构......
	                            
	                        </div>
	                        <div class="blog-quote-avatar">
	                            <a href="javascript:;">
	                                <img src="static/image/handimage.jpg">
	                            </a>
	                        </div>
	                        <div class="blog-quote-author">
	                            <h3 class="blog-title blog-quote-title">周飞</h3>
	                            <p class="blog-quote-desc">Java开发工程师</p>
	                        </div>
	                    </div>
					</div>
					<div class="portlet box bordered work-exp">
                        <div class="portlet-title">
                            <div class="caption"></i>工作经验</div>
                        </div>
                        <div class="portlet-body">
                        	<div class="scroller">
                                <ul class="chats">
                                    <li>
                                        <span class="time-slot">2015-10 To 2017-09</span>
                                        <div class="message">
                                            <span class="body">在深圳市软通动力信息技术有限公司任Java软件工程师一职，期间开发了多款RESTful风格的API接口，如URL转图片、PDF拆分与合并、数字签名接口组等等。并加入华为工具开发部的eToolsCloud项目，参与完成项目微服务化改造以及多款云工具的开发工作。</span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="scroller">
                                <ul class="chats">
                                    <li>
                                        <span class="time-slot">2015-10 To 2017-09</span>
                                        <div class="message">
                                            <span class="body">在深圳市软通动力信息技术有限公司任Java软件工程师一职，期间开发了多款RESTful风格的API接口，如URL转图片、PDF拆分与合并、数字签名接口组等等。并加入华为工具开发部的eToolsCloud项目，参与完成项目微服务化改造以及多款云工具的开发工作。</span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        	<div class="scroller">
                                <ul class="chats">
                                    <li>
                                        <span class="time-slot">2015-10 To 2017-09</span>
                                        <div class="message">
                                            <span class="body">在深圳市软通动力信息技术有限公司任Java软件工程师一职，期间开发了多款RESTful风格的API接口，如URL转图片、PDF拆分与合并、数字签名接口组等等。并加入华为工具开发部的eToolsCloud项目，参与完成项目微服务化改造以及多款云工具的开发工作。</span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
				</div>
				<!-- end profile -->
				<!-- begin content -->
				<div class="col-md-6 blog-content">
					<div id="blog-content">
						<#list data as item>
		                <div class="portlet light content-submodel">
		                    <h4 class="content-title"><a href="article/details?articleId=${item.articleId}" target="_blank">${item.title}</a></h4>
		                    <p class="content-gist">${item.content}</p>
		                    <div class="content-foot">
		                        <ul class="list-inline"><li>阅读数：${item.readTime}</li><li>发布时间：${item.createTime}</li>
		                    </div>
		                </div>
		                </#list>
					</div>
					<p class="bottom-info">我是有底线的~^_^~</p>
				</div>
				<div class="col-md-2">
					<div class="portlet box bulletin">
                        <div class="portlet-title">
                            <div class="caption"></i>公告</div>
                        </div>
                        <div class="portlet-body">
                        	<div class="list-datetime bold uppercase" style="font-size:15px;">众志成城，共同战疫，武汉加油！</div>
                        	<div class="bulletin-foot">
		                        <p class="bulletin-create-time">—— 2019-03-25 18:34:56</p>
		                    </div>
                        </div>
                    </div>
                    <div class="portlet box new-article">
                        <div class="portlet-title">
                            <div class="caption"></i>最新文章</div>
                        </div>
                        <div class="portlet-body">
                            <ul class="list-group">
							    <li class="list-group-item"><a href="#">SpringCloud简介与常用五大组件</a></li>
							    <li class="list-group-item"><a href="#">beego的安装以及bee的安装和使用</a></li>
							    <li class="list-group-item"><a href="#">数据结构与算法系列九（递归详解）</a></li>
							    <li class="list-group-item"><a href="#">搭建websocket消息推送服务，必须要考虑的几个问题</a></li>
							    <li class="list-group-item"><a href="#">设计模式-12组合模式(Composite Pattern)</a></li>
							</ul>
                        </div>
                    </div>
                    <div class="portlet box read-board">
                        <div class="portlet-title">
                            <div class="caption"></i>阅读排行榜</div>
                        </div>
                        <div class="portlet-body">
                            <ul class="list-group">
							    <li class="list-group-item"><a href="#">SpringCloud简介与常用五大组件</a></li>
							    <li class="list-group-item"><a href="#">beego的安装以及bee的安装和使用</a></li>
							    <li class="list-group-item"><a href="#">数据结构与算法系列九（递归详解）</a></li>
							    <li class="list-group-item"><a href="#">搭建websocket消息推送服务，必须要考虑的几个问题</a></li>
							    <li class="list-group-item"><a href="#">设计模式-12组合模式(Composite Pattern)</a></li>
							</ul>
                        </div>
                    </div>
				</div>
			</div>
		</div>
		<!-- end content -->
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