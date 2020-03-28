<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    <meta charset="UTF-8">
		<title>编辑文章</title>
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
		<link href="${request.contextPath}/static/plugins/metronic/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/metronic/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/bootstrap/bootstrap-wysihtml5/bootstrap-wysihtml5.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/bootstrap/bootstrap-markdown/css/bootstrap-markdown.min.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/bootstrap/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/bootstrap/bootstrap-sweetalert/sweetalert.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/bootstrap/bootstrap-summernote/summernote.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/css/edit.css" rel="stylesheet" type="text/css" />
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
                            <form class="form-horizontal form-bordered" id="editForm">
                            	<input type="hidden" name="artId" id="artId" value="${(artVO.articleId)!''}"/>
                            	<input type="hidden" name="readTime" id="readTime" value="${(artVO.readTime)!''}"/>
                            	<input type="hidden" name="contextPath" id="contextPath" value="${request.contextPath}"/>
                                <div class="form-body">
                                	<div class="form-group">
                                        <label class="control-label col-md-2">标题 <span>*</span></label>
                                        <div class="col-md-10">
                                            <input type="text" id="title" name="title" class="form-control" placeholder="请输入文章标题" value="${(artVO.title)!''}"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">文章类型 <span>*</span></label>
                                        <div class="col-md-10">
                                            <select class="form-control" name="artType" id="artType">
                                            	<#if (artVO.articleId)??>
                                            		<#if artVO.artType=="0">
	                                            	<option value="0" selected>技术分享</option>
	                                            	<option value="1">心情随笔</option>
	                                            	<#else>
	                                            	<option value="0">技术分享</option>
	                                            	<option value="1" selected>心情随笔</option>
	                                            	</#if>
	                                            	<input id="isNew" value="1" type="hidden"/>
			                                    <#else>
			                                    	<option value="0" selected>技术分享</option>
	                                            	<option value="1">心情随笔</option>
	                                            	<input id="isNew" value="0" type="hidden"/>
			                                    </#if>
                                            </select>
                                        </div>
                                    </div>
                                	<div class="form-group">
                                        <label class="control-label col-md-2">摘要 <span>*</span></label>
                                        <div class="col-md-10">
                                            <textarea class="form-control" maxlength="500" id="summary" name="summary" rows="3" placeholder="请输入文章摘要">${(artVO.intro)!''}</textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">正文 <span>*</span></label>
                                        <div class="col-md-10">
                                            <div name="summernote" id="summernote" action="">${(artVO.content)!'请在此处输入内容......'}</div>
                                        </div>
                                    </div>
                                    <div class="form-group last">
                                        <label class="control-label col-md-2">标签</label>
                                        <div class="col-md-10">
                                        	<input type="text" value="${(artVO.tags)!''}" id="tags" name="tags"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-actions">
                                    <div class="row">
                                        <div class="col-md-12" style="text-align:center;">
                                            <button type="button" class="btn green" id="submitBtn">保存</button>
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
		<#include "/foot.ftl">
		<!-- ref js file -->
		<script type="text/javascript" src="${request.contextPath}/static/plugins/vidage/vidage.js"></script>
	    <script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
	    <script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-validator/bootstrapValidator.min.js" type="text/javascript"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/bootstrap/bootstrap-sweetalert/sweetalert.min.js"></script>
	    <script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-wysihtml5/wysihtml5-0.3.0.js" type="text/javascript"></script>
	    <script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-wysihtml5/bootstrap-wysihtml5.js" type="text/javascript"></script>
	    <script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-markdown/lib/markdown.js" type="text/javascript"></script>
        <script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
        <script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-tagsinput/bootstrap-tagsinput.min.js" type="text/javascript"></script>
        <script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-summernote/summernote.min.js" type="text/javascript"></script>
        <script src="${request.contextPath}/static/plugins/bootstrap/bootstrap-summernote/lang/summernote-zh-CN.min.js" type="text/javascript"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/js/edit.js"></script>
	</body>
</html>