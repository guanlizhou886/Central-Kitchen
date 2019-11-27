<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>test展示列表页面</title>
	<%@ include file="../../common/jsp/header.jsp"%>
</head>
<body>
<form action="${path }/relation/save.do" method="post" class="form-horizontal" role="form">
<div class="alert alert-success" role="alert">物资供应商关系</div>

<%--	<a id="menuBtn" href="#" onclick="showMenu(); return false;" class="col-sm-2 control-label">请选择所需物资</a></li>--%>
<%--	<div class="col-sm-2">--%>
<%--		<input id="citySel" type="text"  value="" style="width:120px;" name="nodename" id="nodename"/>--%>
<%--	</div>--%>
	<label class="col-sm-2 control-label" for="menupid">请选择物资</label>
	<div class="col-sm-3">
		<input class="form-control" id="menupidValue" name="MATERIAL_ID" type="hidden"/>
		<input class="form-control" id="menupid" type="text" readonly placeholder="点击选择物资"/>
	</div>
	<label class="col-sm-2 control-label" for="">请选择供应商</label>
	<div class="col-sm-3">
		<input class="form-control" id="menusupplyid" name="SUPPLY_ID" type="hidden"/>
		<input class="form-control" id="menusupply" type="text" readonly placeholder="点击选择供应商"/>
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