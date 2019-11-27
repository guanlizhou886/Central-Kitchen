<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>orgtype修改页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
                <form action="<%=path %>/type/update.do" method="post" class="form-horizontal" role="form">
                	<!--向后台传值-->
                    <input type="text" id="id" name="id" value="${orgtypeEntity.id}"/>
                    <fieldset>
                        <legend>orgtype基本信息</legend>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">名称</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="name" value="${orgtypeEntity.name}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">父类id</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="pId" value="${orgtypeEntity.pId}"/>
                            </div>
                        </div>
<%--                        <div class="form-group">--%>
<%--                            <label class="col-sm-2 control-label">价格组id</label>--%>
<%--                            <div class="col-sm-4">--%>
<%--                                <input class="form-control" type="text" name="order" value="${orgtypeEntity.pricegroupId}"/>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label" for="ds_host"></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
                           	</div>
                           	<label class="col-sm-2 control-label" for="ds_host"></label>
                           	<div class="col-sm-4">
                              	<input type="reset" value="重置" class="btn btn-danger"/>
                           	</div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
</html>