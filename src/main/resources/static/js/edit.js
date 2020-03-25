$(function(){
	new Vidage('#vidage');
	ComponentsEditors.init();
	$('#summary').maxlength({
		alwaysShow: true
	});
	$('#tags').tagsinput();
	formValidator();
	submintForm();
});

/**
 * 表单提交方法
 */
var submintForm = function(){
	$('#submitBtn').click(function() {
		if($('#summernote').summernote('isEmpty')){
			swal({
				title:"正文不能为空！",
				type:"warning",
				confirmButtonColor: "#DD6B55",
				confirmButtonText: "确认"
			});
			return false;
		}
		var times = 0;
		var tags = "";
		var isTrue=true;
		$(".bootstrap-tagsinput").find(".label-info").each(function(i,item){
			times++;
			if(times>=6){
				swal({
					title:"最多只能添加5个标签",
					type:"warning",
					confirmButtonColor: "#DD6B55",
					confirmButtonText: "确认"
				});
				isTrue = false;
				return;
			}else{
				tags+=tags==""?$(item).text():","+$(item).text();
			}
		});
		if(!isTrue){
			return isTrue;//标签多于5个，不提交
		}
		var bootstrapValidator = $("#editForm").data('bootstrapValidator');
		bootstrapValidator.validate();
		if(bootstrapValidator.isValid()){
			var summerVal = $("#summernote").summernote("code");
			var param = {};
			param.content = summerVal;
			param.title = $("#title").val();
			param.summary = $("#summary").val();
			param.tags = tags;
			param.artId = $("#artId").val();
			param.readTime=$("#readTime").val();
			$.ajax({
				url:"save",
				type:"POST",
				data: param,  //传入组装的参数
                dataType: "json",
                success: function (data) {
					if(data>0){
						swal({
							title:"保存成功！",
							type:"success",
							confirmButtonText: "确认"
						});
					}else{
						swal({
							title:"保存失败！",
							type:"warning",
							confirmButtonText: "确认"
						});
					}
				},
				error:function(XmlHttpRequest,textStatus, errorThrown){
					swal({
						title:"保存出错",
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


/**组件编辑器 */
var ComponentsEditors = function () {
    var handleWysihtml5 = function () {
        if (!jQuery().wysihtml5) {
            return;
        }
        if ($('.wysihtml5').size() > 0) {
            $('.wysihtml5').wysihtml5({
                "stylesheets": ["../plugins/bootstrap/bootstrap-wysihtml5/wysiwyg-color.css"]
            });
        }
    }
    var handleSummernote = function () {
        $('#summernote').summernote({
			height: 600,
			lang:"zh-CN",
			callbacks: {
				onInit: function(){
					//初始化
				},
				onFocus: function(){
					
				},
				onImageUpload: function(files,editor,$editable){
					data = new FormData();
					data.append("operType","img");
                    data.append("file", files[0]);//一张一张的插入
					$.ajax({
						data : data,
						type : "POST",
						url : "../file/upload",   
						cache : false,
						contentType : false,  
						processData : false,
						dataType : "json",
						success: function(data) {  
					    	//[服务器所在文件所在目录位置]一般为"http://119.23.216.181/RoboBlogs/Upload_File/default_show.png"
							var contextPath = $("#contextPath").val();
					    	$('#summernote').summernote('insertImage', contextPath+"/file/getImage/"+data.fileList[0]);
						},
						error:function(){  
					    	alert("上传失败");
						}
					});
				}
			}
		});
        //API:
        //var sHTML = $('#summernote_1').code(); // get code
        //$('#summernote_1').destroy(); // destroy
    }
    return {
        //main function to initiate the module
        init: function () {
//            handleWysihtml5();
            handleSummernote();
        }
    };
}();


/**
 * 定义表单校验器
 */
var formValidator = function(){
	$("#editForm").bootstrapValidator({
		message: 'This value is not valid',
		feedbackIcons: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
		},
		fields: {
			title: {
				validators: {
					notEmpty: {
						message: '用户名不能为空'
					},
					stringLength: {
						min: 1,
						max: 50,
						message: '标题长度为1-15'
					}
				}
			},
			summary: {
				validators: {
					notEmpty: {
						message: '摘要不能为空'
					},
					stringLength: {
						min: 1,
						max: 500,
						message: '摘要长度不能超过500个字符'
					}
				}
			}
		}
	});
}