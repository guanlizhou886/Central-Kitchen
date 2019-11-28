<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供货商展示列表页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>

		<script type="text/javascript">
			$(document).ready(function(){

				$('a').click(function()
				{
				    // var v=$("#ids").val();


                    var v=$(this).attr("name");
                    $("#supplyId").val(v)

                    // console.log($("this:parent:parent:nth-child(0):first-child").val())
					var url=root+'/supply/add.do';
					// alert(url);
					$("#searchForm").attr('action', url).submit();

				});


			});
		</script>




	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">供货商详细信息</div>
	                <div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
                			<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="supply/create.jsp">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
	                        </button>
	                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="supply/view.do">
	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
	                        </button>
	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="supply/delete.do">
	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
	                        </button>
		                 </div>
	                </div>
	                <div class="col-sm-4">
	                	<input class="form-control" id="search" name="supplyName" value="${SupplyEntity.supplyName }" type="text" placeholder="查询内容 回车搜索"/>
	                </div>
	                 <!-- ------------按钮组 end------------ -->
						<input id="supplyId" name="supplyId" type="hidden1" value=""/>
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
                                    <th>必须合同</th>
                                    <th>是否启用门户</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td><input type="checkbox" id="ids" name="ids" value="${e.supplyId }"/></td>
						                <td>${e.supplyId }</td>
						                <td>

                                            <a name="${e.supplyId }">${e.supplyName }</a>


										</td>
						                <td>${e.supplyType==0? "一类":"二类" }</td>
						                <td>${e.supplyRelation }</td>
						                <td>${e.supplyRelationNum }</td>
                                        <td>${e.supplyAgreement==0? "否":"是"}</td>
                                        <td>${e.supplyMenHu==0? "否":"是"}</td>
						            </tr>
					            </c:forEach>
					        </tbody>
					    </table>
				    <div class="page">${page}</div>
			     </div>
			     </form>
			</div>
		</div>
	</body>
</html>