<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>物资展示列表页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">物资详细信息</div>
<%--	                <div class="col-sm-8">--%>
<%--	                	<div class="btn-group hidden-xs" role="group">--%>
<%--                			<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="material/create.jsp">--%>
<%--	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加--%>
<%--	                        </button>--%>
<%--	                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="material/querybyid.do">--%>
<%--	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改--%>
<%--	                        </button>--%>
<%--	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="material/delete.do">--%>
<%--	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除--%>
<%--	                        </button>--%>
<%--		                 </div>--%>
	                </div>
<%--	                <div class="col-sm-4">--%>
<%--	                	<input class="form-control" id="search" name="dataName" value="${entity.dataName}" type="text" placeholder="查询内容 回车搜索"/>--%>
<%--	                </div>--%>
	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
					                <th>物资名称</th>
					                <th>物资简称</th>
					                <th>物资规格</th>
									<th>物资类别</th>
									<th>物资基本单位</th>
									<th>物资基本状态</th>
									<th>物资创建时间</th>
									<th>物资修改时间</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${list}" varStatus="v">
						            <tr>
						                <td><input type="checkbox" name="ids" value="${e.MATERIAL_ID}" value1="${e.MATERIAL_NAME}"/></td>
						                <td>${e.MATERIAL_NAME}</td>
						                <td>${e.MATERIAL_SIMPNAME}</td>
						                <td>${e.MATERIAL_GUIGE}</td>
										<td>${e.type_name}</td>
										<td>${e.MATERIAL_UNIT}</td>
										<td>${e.MATERIAL_STATUS==1?"启用":"停用"}</td>
										<td><fmt:formatDate value="${e.createDate }" pattern="yyyy-MM-dd"></fmt:formatDate></td>
										<td><fmt:formatDate value="${e.updateDate }" pattern="yyyy-MM-dd"></fmt:formatDate></td>
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
					layer.msg('滚回去选择物资去！', {icon: 4});
					return;
				}
				else
				{
					var id = $('[name=ids]:checked').val();
					var name = $('[name=ids]:checked').attr('value1');

					alert(id)
					parent.$('#menupidValue').val(id);
					parent.$('#menupid').val(name);

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