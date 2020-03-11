$(function(){
	new Vidage('#vidage');
	ComponentsEditors.init();
	$('#summary').maxlength({
		alwaysShow: true
	});
});

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
			lang:"zh-CN"
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