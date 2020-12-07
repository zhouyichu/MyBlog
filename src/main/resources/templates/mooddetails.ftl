<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    <meta charset="UTF-8">
		<title>心情随笔|文章详情</title>
		<link id="link-icon" rel="shortcut icon" href="${request.contextPath}/static/image/MyBlog-logo-black.png" type="image/x-icon">
	</head>
	<style>
		.blog-content-2 .blog-single-content .blog-comments i{
			position: absolute !important;
    		top: 8px !important;
		}
	</style>
	<body>
		<#include "/hand.ftl">
		<!-- ref css file -->
		<link href="${request.contextPath}/static/plugins/metronic/global/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/bootstrap/bootstrap-sweetalert/sweetalert.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/plugins/player/player.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/static/css/details.css" rel="stylesheet" type="text/css" />
		<div class="container-fluid">
			<div class="row">
				<!-- begin content -->
				<div class="col-md-6 col-md-offset-3 blog-content-2">
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
			</div>
		</div>
		<!-- end content -->
		<!-- begin player -->
		<div id="jp_container_N" class="jp-video jp-video-270p jp-state-playing" role="application" aria-label="media player" style="left: 0px; height: 175px; bottom: 20px;">
			<div class="jp-type-playlist">
				<div id="jquery_jplayer_N" class="jp-jplayer" style="width: 90px; height: 90px;">
					<audio id="jp_audio_0" preload="metadata" src="${request.contextPath}/static/media/music/mingyueye.mp3" title="南北组合（吉萍）"></audio>
				</div>
				<div class="jp-gui">
					<div class="jp-video-play" style="display: none;">
						<button class="jp-video-play-icon" role="button" tabindex="0">播放</button>
					</div>
					<div class="jp-interface">
						<div class="jp-progress">
							<div class="jp-seek-bar" style="width: 100%;">
								<div class="jp-play-bar" style="overflow: hidden; width: 97.5219%;"></div>
							</div>
						</div>
						<div class="jp-current-time" role="timer" aria-label="time">03:57</div>
						<div class="jp-duration" role="timer" aria-label="duration">03:57</div>
						<div class="jp-controls-holder">
							<div class="jp-controls">
								<button class="jp-previous" role="button" tabindex="0">上一曲</button>
								<button class="jp-play" role="button" tabindex="0">播放</button>
								<button class="jp-next" role="button" tabindex="0">下一曲</button>
								<button class="jp-stop" role="button" tabindex="0">暂停</button>
							</div>
							<div class="jp-volume-controls">
								<button class="jp-mute" role="button" tabindex="0">静音</button>
								<button class="jp-volume-max" role="button" tabindex="0">最大音量</button>
								<div class="jp-volume-bar">
									<div class="jp-volume-bar-value" style="width: 10%;"></div>
								</div>
							</div>
							<div class="jp-toggles">
								<button class="jp-repeat" role="button" tabindex="0">重复</button>
								<button class="jp-shuffle" role="button" tabindex="0">随机</button>
								<!--<button class="jp-full-screen" role="button" tabindex="0">全屏</button>-->
							</div>
						</div>
						<div class="jp-details" style="display: none;">
							<div class="jp-title" aria-label="title">南北组合（吉萍）</div>
						</div>
					</div>
				</div>
				<div class="jp-playlist">
					<div class="jp-playlist-box" style="height: 80px;">
						<ul style="height: 1000px; display: block; top: 0px;">
							<li>
								<div>
									<a href="javascript:;" class="jp-playlist-item-remove">×</a>
									<a href="javascript:;" class="jp-playlist-item" tabindex="0">明月夜 <span class="jp-artist" style="transform: rotate(180deg);"> - 吉萍</span></a>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="jp-no-solution" style="display: none;">
					<span style="transform: rotate(180deg);">升级需要</span> 您浏览器赞不支持播放，请更新版本
					<a href="http://get.adobe.com/flashplayer" target="_blank">Flash插件</a>.
				</div>
			</div>
			<!--歌曲列表滚动条-->
			<div class="scrollBar" style="display: block;">
				<div class="bar" style="top: 0px;"></div>
			</div>
			<!--播放器展开隐藏按钮-->
			<button type="button" class="folded_bt" title="点击收缩" id="btnfold" style="top: 52px;">
		    	<span style="transform: rotate(180deg);"></span>
		    </button>
			<div id="listRemove" style="display: block;"></div>
			<!--移除全部歌曲按钮-->
			<div id="listClose"></div>
			<!--歌曲列表展开收缩按钮-->
		</div>
		<!-- end player -->
		<#include "/foot.ftl">
		
		<!-- ref js file -->
		<script type="text/javascript" src="${request.contextPath}/static/plugins/bgstretcher/jquery.backstretch.min.js"></script>
		<script type="text/javascript" src="${request.contextPath}/static/plugins/bootstrap/bootstrap-validator/bootstrapValidator.min.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/bootstrap/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/bootstrap/bootstrap-sweetalert/sweetalert.min.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/plugins/marquee/jquery.marquee.min.js"></script>
	    <!-- player -->
		<script src="${request.contextPath}/static/plugins/player/player.js"></script>
		<script src="${request.contextPath}/static/plugins/player/playlist.js"></script>
		<script src="${request.contextPath}/static/plugins/player/player_database.js"></script>
	    <script type="text/javascript" src="${request.contextPath}/static/js/mooddetails.js"></script>
	</body>
</html>