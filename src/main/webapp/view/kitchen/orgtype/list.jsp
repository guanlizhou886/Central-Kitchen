<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>orgtype展示列表页面</title>
	<%@ include file="../../../common/jsp/header.jsp"%>
	<!--引入zTree的js与css-->
	<link href="<%=path%>/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" rel="stylesheet">
	<script type="text/javascript" src="<%=path%>/static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
</head>

<script language="JavaScript">
	//##########各种方法及基础配置
	$(function(){
		// （1）基础配置
		var tree;
		var setting = {
			data: {
				simpleData: {
					enable: true
				}
			},
			view: {//加载搜索时字体的高亮显示css
				fontCss: getFontCss
			}

		};

		// （2）异步加载数据：查询展示
		$.post(root+'type/queryAllType.do',function (zNodes) {
			tree = $.fn.zTree.init($("#tree"),setting,zNodes);
		},'json')


		// （3）搜索
		$("#queryByName").click(function () {
			//alert(1);
			var typeName = $("#typeName").val();
			var node = tree.getNodeByParam("name",typeName,"");
			node.highlight = true;//高亮显示
			tree.updateNode(node);
			tree.selectNode(node);//点击时得到此节点
		});

		// （4）删除
		$("#deleteType").click(function () {

			//将选择的节点进行循环
			var  nodes = tree.getSelectedNodes();
			if(nodes.length != 1){
				alert("请选择一条数据进行删除！");
				return false;
			}
			var id="";
			for(var i=0, l=nodes.length; i<l; i++){
				id = nodes[i].id;
			}
			//将循环得到的id赋值，带到后台
			$("#id").val(id);
			//获得表单提交的路径：路径在button中
			var url = root + $(this).attr("name");
			//工具js 中的弹出框样式
			swal({
				title: "确定要删除吗?",
				text: "删除后将无法恢复当前记录!",
				type: "warning",
				showCancelButton: true,
				confirmButtonColor: "#DD6B55",
				confirmButtonText: "是的, 不后悔!",
				cancelButtonText: "算了, 再想想!",
				closeOnConfirm: false,
				closeOnCancel: false
			}, function(isConfirm){
				if (isConfirm) {
					swal("成功!", "删除成功,再也找不回来了.", "success");
					$("#searchForm").attr('action', url).submit();
				} else {
					swal("取消", "吓死了,幸亏没删了!", "error");
				}
			});
		})

		// (5) 修改
		$("#update").click(function(){
			//将选择的节点进行循环
			var  nodes = tree.getSelectedNodes();
			if(nodes.length != 1){
				alert("请选择一条数据进行修改！");
				return false;
			}
			var id="";
			for(var i=0, l=nodes.length; i<l; i++){
				id = nodes[i].id;
			}
			//将循环得到的id赋值，带到后台
			$("#id").val(id);
			//获得表单提交的路径
			var url = root + $(this).attr("name");
			$("#searchForm").attr('action', url).submit();
		})


	})


	//##########加载css样式：搜索时字体的高亮显示
	function getFontCss(treeId, treeNode) {
		return (!!treeNode.highlight) ? {color:"#a6190e", "font-weight":"bold"} : {color:"#333", "font-weight":"normal"};
	}
</script>

<body>
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="ibox float-e-margins">
		<form id="searchForm" action="">
			<!--携带要进行删除的id-->
			<input type="text" id="id" name="id" value=""/>

			<div class="col-sm-12">
				<!-- ------------按钮组 start------------ -->
				<div class="alert alert-success" role="alert">orgtype详细信息</div>
				<div class="col-sm-8">
					<div class="btn-group hidden-xs" role="group">
						<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="kitchen/orgtype/create.jsp">
							<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
						</button>
						<button type="button" class="btn btn-success" data-toggle="modal" id="queryByName">
							<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>搜索
						</button>
						<button type="button" class="btn btn-success" data-toggle="modal" id="update" name="type/view.do">
							<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
						</button>
						<button type="button" class="btn btn-danger" data-toggle="modal" id="deleteType" name="type/delete.do">
							<i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
						</button>
					</div>
					<div class="col-sm-4">
						<input class="form-control" id="typeName" name="typeName" value="" type="text"/>
					</div>

					<!-- ------------按钮组 end------------ -->


					<table class="table table-striped table-bordered table-hover table-condensed">
						<!--展示目录--><ul id="tree" class="ztree" style="margin-top:0; width:160px;"></ul>
					</table>
				</div>
			</div>
		</form>
	</div>
</div>
</body>
</html>