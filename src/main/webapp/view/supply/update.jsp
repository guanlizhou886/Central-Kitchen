<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供货商修改页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
                <form action="<%=path %>/supply/update.do" method="post" class="form-horizontal" role="form">
                	<input type="hidden" name="supplyId" value="${supplyEntity.supplyId }"/>
                    <fieldset>
                        <legend>供货商基本信息</legend>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_host" >供应商名称</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="supplyName" value="${supplyEntity.supplyName }"/>
                            </div>
                            <label class="col-sm-2 control-label" for="ds_name">供应商类型</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="supplyType" value="${supplyEntity.supplyType }"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_username">联系人</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text"  name="supplyRelation" value="${supplyEntity.supplyRelation }"/>
                            </div>
                            <label for="disabledSelect" class="col-sm-2 control-label">联系电话</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" name="supplyRelationNum" value="${supplyEntity.supplyRelationNum }"/>
                            </div>
                        </div>
                        <div>
                            <label for="disabledSelect" class="col-sm-2 control-label" >必须合同</label>
                            <div class="col-sm-4 radio i-checks">
                                <label>
                                    <input type="radio" name="supplyAgreement" value="0"  ${supplyEntity.supplyAgreement==0?"checked":null}/>否
                                </label>
                                <label>
                                    <input type="radio" name="supplyAgreement" value="1"  ${supplyEntity.supplyAgreement==1?"checked":null}/>是
                                </label>
                            </div>
<%--                            <div class="col-sm-4">--%>
<%--                                <input type="text" class="form-control" name="supplyAgreement" value="${supplyEntity.supplyAgreement }"/>--%>
<%--                            </div>--%>
                            <label for="disabledSelect" class="col-sm-2 control-label">是否启用门户</label>
                            <div class="col-sm-4 radio i-checks">
                                <label>
                                    <input type="radio" name="supplyMenHu" value="0" ${supplyEntity.supplyMenHu==0?"checked":null }/>否
                                </label>
                                <label>
                                    <input type="radio" name="supplyMenHu" value="1" ${supplyEntity.supplyMenHu==1?"checked":null }/>是
                                </label>
                            </div>
                        </div>
                        <div class="form-group" id="addLine"></div>
                    </fieldset>



<%--                    <fieldset>--%>
<%--                        <legend>供货商基本信息</legend>--%>
<%--                       <div class="form-group">--%>
<%--                          <label class="col-sm-2 control-label" for="ds_host">供应商名称</label>--%>
<%--                          <div class="col-sm-4">--%>
<%--                             <input class="form-control" type="text" name="supplyName" value="${supplyEntity.supplyName }" placeholder="性别"/>--%>
<%--                          </div>--%>
<%--                          <label class="col-sm-2 control-label" for="ds_name">数据类型</label>--%>
<%--                          <div class="col-sm-4">--%>
<%--                             <input class="form-control" type="text" name="dataType" value="${entity.dataType }" placeholder="sex"/>--%>
<%--                          </div>--%>
<%--                       </div>--%>
<%--                       <div class="form-group">--%>
<%--                          <label class="col-sm-2 control-label" for="ds_username">数据备注</label>--%>
<%--                          <div class="col-sm-8">--%>
<%--                             <input class="form-control" type="text"  name="dataCommon" value="${entity.dataCommon }" placeholder="1：男  2：女"/>--%>
<%--                          </div>--%>
<%--                       </div>--%>
<%--                    </fieldset>--%>
<%--                    <fieldset>--%>
<%--						<legend>编码信息</legend>--%>
<%--                        <div class="form-group">--%>
<%--                           <label for="disabledSelect" class="col-sm-2 control-label">数据编码</label>--%>
<%--                           <div class="col-sm-5">--%>
<%--                              <input type="text" name="dataCode" value="${entity.dataCode }" class="form-control"/>--%>
<%--                           </div>--%>
<%--                           <div class="col-sm-5">--%>
<%--                              <input type="text" name="dataVal" value="${entity.dataVal }" class="form-control"/>--%>
<%--                           </div>--%>
<%--                        </div>--%>
<%--                    </fieldset>--%>

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