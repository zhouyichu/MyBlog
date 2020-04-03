$(function(){
	$('body').backstretch([
		'../../static/image/book-read.jpg'
	],{
		fade: 1000,
		duration: 8000
	});
	formValidator();//表单校验
	//评论内容输入框MaxLength提示
	$('#content').maxlength({
		alwaysShow: true
	});
	//提交表单
	submitComm();
});

/**
 * 表单提交
 */
var submitComm = function(){
	//校验表单
	$('#submitComm').click(function() {
		var bootstrapValidator = $("#commForm").data('bootstrapValidator');
		bootstrapValidator.validate();
		if(bootstrapValidator.isValid()){
			var param = {};
			param.artId=$("#artId").val();
			param.account = $("#account").val();
			param.email = $("#email").val();
			param.content = $("#content").val();
			$.ajax({
				url:"../comment/add",
				type:"post",
				data: param,  //传入组装的参数
                dataType: "json",
                success: function (data) {
					if(data>0){
						swal({
							title:"您已成功评论，正在审核中...",
							type:"info",
							confirmButtonColor: "#DD6B55",
							confirmButtonText: "确认"
						},function(isConfirm){
							if(isConfirm){//确认提交后，重置输入框
								$("#artId").val("");
								$("#account").val("");
								$("#email").val("");
								$("#content").val("");
							}
						});
					}else{
						swal({
							title:"评论提交失败",
							type:"warning",
							confirmButtonColor: "#000000",
							confirmButtonText: "确认"
						});
					}
				},
				error:function(XmlHttpRequest,textStatus, errorThrown){
					swal({
						title:"评论提交出错",
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
};

/**
 * 定义表单校验器
 */
var formValidator = function(){
	$("#commForm").bootstrapValidator({
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
						message: '用户名长度为1-15'
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
						message: '评论内容不能为空'
					},
					stringLength: {
						min: 10,
						max: 300,
						message: '内容长度为10-300'
					}
				}
			}
		}
	});
}