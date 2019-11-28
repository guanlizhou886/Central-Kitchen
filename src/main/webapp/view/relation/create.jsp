<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>test展示列表页面</title>
	<%@ include file="../../common/jsp/header.jsp"%>
	<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	<link href="<%=path%>static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" rel="stylesheet">
	<script type="text/javascript" src="<%=path%>static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
</head>
<script language="JavaScript">
	$(function () {
		var setting = {
			view: {
				dblClickExpand: false
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				beforeClick: beforeClick,
				onClick: onClick
			}
		};

		$.post(root+'type/queryAllType.do',function (zNodes) {
			tree=$.fn.zTree.init($("#treeDemo"),setting, zNodes);
		},'json')

	})


	function beforeClick(treeId, treeNode) {

	}

	function onClick(e, treeId, treeNode) {
		var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
				nodes = zTree.getSelectedNodes(),
				v = "",
				id="";
		nodes.sort(function compare(a,b){return a.id-b.id;});
		for (var i=0, l=nodes.length; i<l; i++) {
			v += nodes[i].name + ",";
			id += nodes[i].id +",";
		}
		if (v.length > 0 ) v = v.substring(0, v.length-1);
		if (id.length > 0 ) id = id.substring(0, id.length-1);
		var cityObj = $("#citySel");
		cityObj.attr("value", v);
		$("#orgid").val(id);
	}

	function showMenu() {
		var cityObj = $("#citySel");
		var cityOffset = $("#citySel").offset();
		$("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");

		$("body").bind("mousedown", onBodyDown);
	}
	function hideMenu() {
		$("#menuContent").fadeOut("fast");
		$("body").unbind("mousedown", onBodyDown);
	}
	function onBodyDown(event) {
		if (!(event.target.id == "menuBtn" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
			hideMenu();
		}
	}
</script>
<body>
<form action="${path }/relation/save.do" method="post" class="form-horizontal" role="form">
	<input type="hidden1" id="orgid" name="orgid">
<div class="alert alert-success" role="alert">物资供应商关系</div>

<%--	<a id="menuBtn" href="#" onclick="showMenu(); return false;" class="col-sm-2 control-label">请选择所需物资</a></li>--%>
<%--	<div class="col-sm-2">--%>
<%--		<input id="citySel" type="text"  value="" style="width:120px;" name="nodename" id="nodename"/>--%>
<%--	</div>--%>
	<label class="col-sm-3 control-label" for="menupid">请选择物资</label>
	<div class="col-sm-3">
		<input class="form-control" id="menupidValue" name="MATERIAL_ID" type="hidden"/>
		<input class="form-control" id="menupid" type="text" readonly placeholder="点击选择物资"/>
	</div>
	<label class="col-sm-3 control-label" for="">请选择供应商</label>
	<div class="col-sm-3">
		<input class="form-control" id="menusupplyid" name="SUPPLY_ID" type="hidden"/>
		<input class="form-control" id="menusupply" type="text" readonly placeholder="点击选择供应商"/>
	</div>
	<label class="col-sm-3 control-label" for="menupid">请选择组织</label>

<%--		<a id="menuBtn" href="#" onclick="showMenu(); return false;" class="col-sm-2 control-label">请选择组织</a></li>--%>
		<div class="col-sm-3">
			<input class="form-control" id="citySel" type="text" readonly placeholder="点击选择组织" onclick="showMenu()"/>
<%--			<input id="citySel" type="text"  value="" style="width:120px;" name="nodename" id="nodename" readonly/>--%>


			<div id="menuContent" class="menuContent" style="display:none;">
				<ul id="treeDemo" class="ztree" style="margin-top:0; width:160px;"  ></ul>
			</div>
		</div>



<div class="col-sm-12">
	<div class="col-sm-6"></div>
	<div class="col-sm-6" role="group">
		<button type="submit" class="btn btn-primary" data-toggle="modal" id="create">
			<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>保存
		</button>
	</div>
</div>
</form>
</body>
<script type="text/javascript" src="${path }/static/js/plugins/bootstrap-switch/bootstrap-switch.min.js"></script>
<script type="text/javascript" src="${path }/view/relation/menu/relation-create.js"></script>
</html>