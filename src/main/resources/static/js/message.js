var pageNum=1;
var pageTotal=0;
$(function(){
	new Vidage('#vidage');
	$('#content').maxlength({
		alwaysShow: true
	});
	
	formValidator();
	submitForm();
	turnPage();
	loadMsgPageData(pageNum);
});

/**翻页按钮点击事件绑定 */
var turnPage = function(){
	$("#next-page").click(function(){
		if(pageNum<pageTotal){
			pageNum++;
			loadMsgPageData(pageNum);
			$("#prev-page").removeClass("disabled");
			$("#first-page").removeClass("disabled");
		}else{
			$("#next-page").addClass("disabled");
			$("#last-page").addClass("disabled");
			return false;
		}
	});
	$("#last-page").click(function(){
		if(pageNum<pageTotal){
			pageNum=pageTotal;
			loadMsgPageData(pageNum);
			$("#prev-page").removeClass("disabled");
			$("#first-page").removeClass("disabled");
			$("#next-page").addClass("disabled");
			$("#last-page").addClass("disabled");
		}else{
			return false;
		}
	});
	$("#prev-page").click(function(){
		if(pageNum>1){
			pageNum--;
			loadMsgPageData(pageNum);
			$("#next-page").removeClass("disabled");
			$("#last-page").removeClass("disabled");
		}else{
			$("#prev-page").addClass("disabled");
			$("#first-page").addClass("disabled");
			return false;
		}
	});
	$("#first-page").click(function(){
		if(pageNum>1){
			pageNum=1;
			loadMsgPageData(pageNum);
			$("#next-page").removeClass("disabled");
			$("#last-page").removeClass("disabled");
			$("#prev-page").addClass("disabled");
			$("#first-page").addClass("disabled");
		}else{
			return false;
		}
	});
}

/** 加载留言数据 */
var loadMsgPageData = function(pageNum){
	$.ajax({
		url:"message/"+pageNum,
		type:"GET",
		dataType:"json",
		success:function(data){
			pageTotal=data.pages;//第一次加载，得到总页数
			var html = "";
			 $(data.data).each(function(i,item){
				html+="<div class=\"media\">";
				html+="<div class=\"media-body\">";
				html+="<h4 class=\"media-heading\">";
				html+="<span class=\"text-info\">"+item.account+"</span> 于";
				html+="<span class=\"c-date\">"+item.createTime+"</span>";
				html+="</h4>"+item.content+"</div></div>";
			});
			$("#message-content").html(html);
			if(data.pageNum==data.pages){
				$("#next-page").addClass("disabled");
				$("#last-page").addClass("disabled");
			}
			if(data.pageNum==1){
				$("#prev-page").addClass("disabled");
				$("#first-page").addClass("disabled");
			}
		},
		error:function(e){
			
		}
	});
} 

/**
 * 提交表单
 */
var submitForm = function(){
	$('#btn-submit').click(function() {
		var bootstrapValidator = $("#msgForm").data('bootstrapValidator');
		bootstrapValidator.validate();
		if(bootstrapValidator.isValid()){
			var param = {};
			param.account = $("#account").val();
			param.email = $("#email").val();
			param.content=$("#content").val();
			$.ajax({
				url:"comment/addmsg",
				type:"POST",
				data: param,  //传入组装的参数
                dataType: "json",
                success: function (data) {
					if(data>0){
						swal({
							title:"您已提交成功，正在审核中...",
							type:"info",
							confirmButtonColor: "#DD6B55",
							confirmButtonText: "确认"
						},function(isConfirm){
							if(isConfirm){//确认提交后，重置输入框
								$("#account").val("");
								$("#email").val("");
								$("#content").val("");
							}
						});
					}else{
						swal({
							title:"提交失败！",
							type:"warning",
							confirmButtonText: "确认"
						});
					}
				},
				error:function(XmlHttpRequest,textStatus, errorThrown){
					swal({
						title:"提交出错",
						text:XmlHttpRequest.responseText,
						type:"error",
						confirmButtonColor: "#000000",
						confirmButtonText: "确认"
					});
				}
			});
		}else{
			console.log("校验失败");
			return;
		}
	});
}

/**
 * 校验
 */
var formValidator = function(){
	$("#msgForm").bootstrapValidator({
		message: 'This value is not valid',
		feedbackIcons: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
		},
		fields: {
			account: {
				validators: {
					notEmpty: {
						message: '用户名不能为空'
					},
					stringLength: {
						min: 1,
						max: 15,
						message: '用户名长度不能超过15'
					}
				}
			},
			email: {
				validators: {
					notEmpty: {
						message: '邮箱地址不能为空'
					},
					regexp: {
						regexp: /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/,
						message: '邮箱地址格式错误'
					}
				}
			},
			content: {
				validators: {
					notEmpty: {
						message: '内容不能为空'
					},
					stringLength: {
						min: 1,
						max: 500,
						message: '内容长度不能超过500'
					}
				}
			}
		}
	});
}