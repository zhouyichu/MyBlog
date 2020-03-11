<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    <meta charset="UTF-8">
		<title>编辑文章</title>
		<link id="link-icon" rel="shortcut icon" href="${request.contextPath}/static/image/MyBlog-logo-black.png" type="image/x-icon">
		<link href="${request.contextPath}/static/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/vidage/vidage.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/metronic/global/components.min.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/metronic/page/blog.min.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/metronic/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/metronic/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/bootstrap/bootstrap-wysihtml5/bootstrap-wysihtml5.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/bootstrap/bootstrap-markdown/css/bootstrap-markdown.min.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/bootstrap/bootstrap-summernote/summernote.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/css/edit.css" rel="stylesheet" type="text/css" />
		
	    <script type="text/javascript" src="${request.contextPath}/static/jQuery.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/bootstrap/js/bootstrap.min.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/vidage/vidage.js"></script>
	    <script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
	    <script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-wysihtml5/wysihtml5-0.3.0.js" type="text/javascript"></script>
	    <script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-wysihtml5/bootstrap-wysihtml5.js" type="text/javascript"></script>
	    <script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-markdown/lib/markdown.js" type="text/javascript"></script>
        <script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
        <script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-summernote/summernote.min.js" type="text/javascript"></script>
        <script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-summernote/lang/summernote-zh-CN.min.js" type="text/javascript"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/js/edit.js"></script>
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
				<!-- begin profile -->
				<div class="col-md-2 col-md-offset-1">
					<div class="blog-content-1">
						<div class="blog-quote bordered blog-container">
	                        <div class="blog-quote-label bg-green-jungle">
	                            <i class="fa fa-quote-left"></i>从事Java web全栈开发四年，玩转RESTful风格的API接口开发，熟练Spring家族框架，熟悉微服务架构......
	                        </div>
	                        <div class="blog-quote-avatar">
	                            <a href="javascript:;">
	                                <img src="${request.contextPath}/static/image/handimage.jpg">
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
				<div class="col-md-6">
					<div class="portlet light form-fit bordered">
                        <div class="portlet-body form">
                            <form class="form-horizontal form-bordered">
                                <div class="form-body">
                                	<div class="form-group">
                                        <label class="control-label col-md-2">标题</label>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control" placeholder="请输入文章标题"  maxlength="10"/>
                                        </div>
                                    </div>
                                	<div class="form-group">
                                        <label class="control-label col-md-2">摘要</label>
                                        <div class="col-md-10">
                                            <textarea class="form-control" maxlength="500" id="summary" rows="3" placeholder="请输入文章摘要"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">正文</label>
                                        <div class="col-md-10">
                                            <div name="summernote" id="summernote">请在此处输入内容......</div>
                                        </div>
                                    </div>
                                    <div class="form-group last">
                                        <label class="control-label col-md-2">标签</label>
                                        <div class="col-md-6">
                                            <input type="text" value="" id="object_tagsinput">
                                            <div class="margin-top-10">
                                                <input type="text" class="form-control input-large" placeholder="Tag value" id="object_tagsinput_value"> </div>
                                            <div class="margin-top-10">
                                                <select class="form-control input-large" id="object_tagsinput_continent">
                                                    <option value="America">Continent...</option>
                                                    <option value="America">America</option>
                                                    <option value="Europe">Europe</option>
                                                    <option value="Australia">Australia</option>
                                                    <option value="Africa">Africa</option>
                                                    <option value="Asia">Asia</option>
                                                </select>
                                            </div>
                                            <div class="margin-top-10">
                                                <input type="text" class="form-control input-large" placeholder="City" id="object_tagsinput_city"> </div>
                                            <div class="margin-top-10">
                                                <a href="javascript:;" class="btn red" id="object_tagsinput_add">Add tag</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-actions">
                                    <div class="row">
                                        <div class="col-md-offset-2 col-md-10">
                                            <button type="submit" class="btn green">保存</button>
                                            <button type="button" class="btn default">取消</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
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