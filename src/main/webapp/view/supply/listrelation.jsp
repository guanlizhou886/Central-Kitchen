<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供货商展示列表页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">供货商详细信息</div>
	                </div>

	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
					                <th>供货商编码</th>
					                <th>供货商名称</th>
					                <th>供货商类型</th>
					                <th>联系人</th>
					                <th>联系电话</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td><input type="checkbox" name="ids" value="${e.supplyId }" value1="${e.supplyName }"/></td>
						                <td>${e.supplyId }</td>
						                <td>${e.supplyName }</td>
						                <td>${e.supplyType==0? "一类":"二类" }</td>
						                <td>${e.supplyRelation }</td>
						                <td>${e.supplyRelationNum }</td>
						            </tr>
					            </c:forEach>
					        </tbody>
					    </table>
				    <div class="page">${page}</div>
			     </div>
			<div class="col-sm-8">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-primary" data-toggle="modal" id="ascertain">
						<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>确定
					</button>
					<button type="button" class="btn btn-danger" data-toggle="modal" id="shutdo">
						<i class="glyphicon glyphicon-trash" aria-hidden="true"></i>关闭
					</button>
				</div>
			</div>
			     </form>
			</div>
		</div>
		<script type="text/javascript">
			$(function () {

				var index = parent.layer.getFrameIndex(window.name);
				$('#ascertain').click(function()
				{
					var count = $('[name=ids]:checked').length;

					if(count == 0)
					{
						layer.msg('滚回去选择供应商去！', {icon: 4});
						return;
					}
					else
					{
						var id = $('[name=ids]:checked').val();
						var name = $('[name=ids]:checked').attr('value1');

						alert(id)
						parent.$('#menusupplyid').val(id);
						parent.$('#menusupply').val(name);

						parent.layer.close(index);
					}
				});
				$('#shutdo').click(function()
				{
					parent.layer.close(index);
				});
			})


		</script>
	</body>
</html>