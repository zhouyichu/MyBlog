<div class="portlet box bulletin">
    <div class="portlet-title">
        <div class="caption"></i>公告</div>
    </div>
    <div class="portlet-body">
    	<div class="list-datetime bold uppercase" style="font-size:15px;">众志成城，共同战疫，武汉加油！</div>
    	<div class="bulletin-foot">
            <p class="bulletin-create-time">—— 2020-03-25 18:34:56</p>
        </div>
    </div>
</div>
<div class="portlet box new-article">
    <div class="portlet-title">
        <div class="caption"></i>最新文章</div>
    </div>
    <div class="portlet-body">
        <ul class="list-group">
        	<#assign n = 0>
        	<#list data as time>
            	<#assign n=n+1>
            	<#if n<=5>
			    	<li class="list-group-item"><a href="${request.contextPath}/article/details?articleId=${time.articleId}">${time.title}</a></li>
			    </#if>
		    </#list>
		</ul>
    </div>
</div>
<div class="portlet box read-board">
    <div class="portlet-title">
        <div class="caption"></i>阅读排行榜</div>
    </div>
    <div class="portlet-body">
        <ul class="list-group">
        	<#list hotData as hot>
		    	<li class="list-group-item"><a href="${request.contextPath}/article/details?articleId=${hot.articleId}">${hot.title}</a></li>
		    </#list>
		</ul>
    </div>
</div>