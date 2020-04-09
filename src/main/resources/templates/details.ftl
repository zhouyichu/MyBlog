<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    <meta charset="UTF-8">
		<title>文章详情</title>
		<link id="link-icon" rel="shortcut icon" href="${request.contextPath}/static/image/MyBlog-logo-black.png" type="image/x-icon">
	</head>
	<style>
		.blog-content-2 .blog-single-content .blog-comments i{
			position: absolute !important;
    		top: 8px !important;
		}
	</style>
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
		<link href="${request.contextPath}/static/plugins/bootstrap/bootstrap-sweetalert/sweetalert.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/vidage/vidage.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/codemirror/lib/codemirror.css" rel="stylesheet" type="text/css"/>
		<link href="${request.contextPath}/static/plugins/codemirror/theme/ambiance.css" rel="stylesheet" type="text/css"/>
        <link href="${request.contextPath}/static/plugins/codemirror/theme/neat.css" rel="stylesheet" type="text/css" />
        <link href="${request.contextPath}/static/plugins/codemirror/theme/ambiance.css" rel="stylesheet" type="text/css" />
        <link href="${request.contextPath}/static/plugins/codemirror/theme/material.css" rel="stylesheet" type="text/css" />
        <link href="${request.contextPath}/static/plugins/codemirror/theme/neo.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/css/details.css" rel="stylesheet" type="text/css" />
		<div class="container-fluid">
			<div class="row">
				<!-- begin profile -->
				<div class="col-md-2 col-md-offset-1">
					<#include "/left.ftl">
				</div>
				<!-- end profile -->
				<!-- begin content -->
				<div class="col-md-6 blog-content-2">
	                <div class="blog-single-content bordered blog-container">
                        <div class="blog-single-head">
                            <h1 class="blog-single-head-title">${artVO.title}</h1>
                            <div class="blog-single-head-date">
                                <a href="javascript:;">阅读次数：<span>${artVO.readTime}</span></a>
                                <a href="javascript:;">&nbsp;&nbsp;发布时间：<span>${artVO.createTime}</span></a>
                                <input type="hidden" value="${artVO.articleId}" id="artId"/>
                            </div>
                        </div>
                        <!--<div class="blog-single-img">
                            <img src="${request.contextPath}/static/image/article-details-banner.jpg">
                        </div>-->
                        <div class="blog-single-desc">
                            ${artVO.content}
                        </div>
                        <div class="blog-single-foot">
                        	<#if tagArr?? && (tagArr?size > 0)>
                            <ul class="blog-post-tags">
                            	<#list tagArr as tag>
                                <li>
                                    <a href="javascript:;"><span class="label label-default">${tag}</span></a>
                                </li>
                                </#list>
                            </ul>
                            </#if>
                        </div>
                        <div class="blog-comments">
                            <h3 class="sbold blog-comments-title">评论数(${commSize})</h3>
                            <div class="c-comment-list">
                            	<#list commList as comm>
								<div class="media">
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            <a href="#">${comm.account}</a>
                                            <span class="c-date">${comm.createTime}</span>
                                        </h4>
                                        <p>${comm.content}</p>
                                    </div>
                                </div>
                                </#list>
                            </div>
                            <form role="form" id="commForm">
                                <div class="form-group">
                                    <input type="text" placeholder="用户名" class="form-control c-square" id="account" name="account">
                                </div>
                                <div class="form-group">
                                    <input type="text" placeholder="邮箱地址" class="form-control c-square" id="email" name="email">
                                </div>
                                <div class="form-group">
                                    <textarea rows="8" id="content" name="content" maxlength="300" placeholder="您可以在这儿写下你的留言..." class="form-control c-square"></textarea>
                                </div>
                                <div class="form-group">
                                    <button type="button" class="btn blue uppercase btn-md sbold btn-block" id="submitComm">提交</button>
                                </div>
                            </form>
                        </div>
                    </div>
				</div>
				<div class="col-md-2">
					<#include "/right.ftl">
				</div>
			</div>
		</div>
		<!-- end content -->
		<#include "/foot.ftl">
		
		<!-- ref js file -->
		<script type="text/javascript" src="${request.contextPath}/static/plugins/bootstrap/bootstrap-validator/bootstrapValidator.min.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/bootstrap/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/bootstrap/bootstrap-sweetalert/sweetalert.min.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/vidage/vidage.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/codemirror/lib/codemirror.js"></script>
	    <!-- 代码高亮 -->
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/codemirror/mode/javascript/javascript.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/codemirror/mode/htmlmixed/htmlmixed.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/codemirror/mode/css/css.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/codemirror/mode/clike/clike.js"></script>
	    <!-- 支持代码折叠
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/codemirror/addon/fold/foldcode.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/codemirror/addon/fold/foldgutter.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/codemirror/addon/fold/brace-fold.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/codemirror/addon/fold/comment-fold.js"></script> -->
	    <script type="text/javascript" src="${request.contextPath}/static/js/details.js"></script>
	</body>
</html>