<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>test修改页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
                <form action="<%=path %>/test/update.do" method="post" class="form-horizontal" role="form">
                	<input type="hidden" name="testId" value="${testEntity.testId}"/>
                    <fieldset>
                        <legend>test基本信息</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_host">姓名</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="testName" value="${testEntity.testName }" />
                          </div>
                          <label class="col-sm-2 control-label" for="ds_name">性别</label>
                          <div class="col-sm-4">
                              <zhg:select codeTp="sex"  name="testSex" cls="form-control" value="${testEntity.testSex }" def="true"></zhg:select>
                          </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">日期</label>
                          <div class="col-sm-8">

                             <input class="form-control" type="date"  name="testDate" value="<fmt:formatDate value="${testEntity.testDate }" pattern="yyyy-MM-dd"></fmt:formatDate>" />
                          </div>
                       </div>
                    </fieldset>
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