<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>物料类型列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link rel="stylesheet" href="<%=path%>static/css/plugins/ztree/demo.css" type="text/css">
		<link rel="stylesheet" href="<%=path%>static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" type="text/css">
		<script type="text/javascript" src="<%=path%>static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>

		
		<script type="text/javascript">

			var tree;
			$(document).ready(function () {
				var setting = {
					data: {
						simpleData: {
							enable: true
						}
					},view: {
						fontCss: getFontCss
					}

				};

				$.post(root+"mtype/queryAll.do",function (zNodes) {
					tree=$.fn.zTree.init($("#treeDemo"), setting, zNodes);
					console.log(zNodes);
				},'json')



				//修改选中的节点数据
				$('#updateNodes').click(function()
				{
					var nodes=tree.getSelectedNodes();

					if (nodes.length!=1)
					{
						alert("请选择一条数据进行修改！");
						return false;
					}

						var id="";

						id=nodes[nodes.length-1].id;
						var parentName=nodes[nodes.length-1].getParentNode().name

						// console.log(id)
						//得到路径  mtype/view.do
						var url = root+$(this).attr('name');
						//隐藏域
						$("#typeId").val(id);
						$("#parentName").val(parentName);
						$("#searchForm").attr('action', url).submit();

				});

				//删除选中的节点数据
				$('#deleteNodes').click(function()
				{
					var nodes=tree.getSelectedNodes();
					if (nodes.length!=1)
					{
						alert("请选择一条数据进行删除！");
						return false;
					}


					var id="";
					id=nodes[nodes.length-1].id;
					var url ;
					url= root+$(this).attr('name');



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
								// var url = root+$(this).attr('name');
								//隐藏域
								$("#typeId").val(id);
								$("#searchForm").attr('action', url).submit();
						} else {
							swal("取消", "吓死了,幸亏没删了!", "error");
						}
					});
				});


				//查询
				$('#searchByName').click(function() {
					var nodes = tree.getSelectedNodes();
					//查询前取消高亮
					for (var i=0;i<nodes.length;i++) {
						nodes[i].highlight=false;
					}

					var inputName=$('#search').val();
					var node=tree.getNodeByParam("name",inputName,"");
					// alert(inputName)

					console.log(node);
					if(node!=null && node!=''){
						node.highlight=true;
						tree.updateNode(node);
						tree.selectNode(node)
					}else {

					}

				});

			});

			function getFontCss(treeId, treeNode) {
				return (!!treeNode.highlight) ? {color:"#A60000", "font-weight":"bold"} : {color:"#333", "font-weight":"normal"};
			}




		</script>
		
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">

					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">物料类型详细信息</div>
	                <div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
                			<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="kitchen/mtype/create.jsp">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
	                        </button>
	                        <button type="button" class="btn btn-success" data-toggle="modal" id="updateNodes" name="mtype/view.do">
	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
	                        </button>
	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="deleteNodes" name="mtype/delete.do">
	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
	                        </button>
		                 </div>
	                </div>

					<div class="col-sm-12">
						<input class="col-sm-2" id="search"  name="search" type="text" placeholder="查询内容 回车搜索"/>
						<input type="button" id="searchByName" value="查询"/>
					</div>

	                 <!-- ------------隐藏域：选中的id ------------ -->
						<input id="typeId" name="typeId" type="hidden" value=""/>
					   <input id="parentName" name="parentName" type="hidden" value=""/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">

					    </table>
					<ul id="treeDemo" class="ztree"></ul>
			     </div>
			     </form>
			</div>
		</div>
	</body>
</html>