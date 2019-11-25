<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供货商添加页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/supply/insert.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>供货商基本信息</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_host">供应商名称</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="supplyName" />
                          </div>
                          <label class="col-sm-2 control-label" for="ds_name">供应商类型</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="supplyType" />
                          </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">联系人</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text"  name="supplyRelation" />
                          </div>
                           <label for="disabledSelect" class="col-sm-2 control-label">联系电话</label>
                           <div class="col-sm-4">
                               <input type="text" class="form-control" name="supplyRelationNum"/>
                           </div>
                       </div>
                        <div>
                            <label for="disabledSelect" class="col-sm-2 control-label">必须合同</label>
                           <div class="col-sm-4 radio i-checks">
                               <label>
                                    <input type="radio" name="supplyAgreement" value="1"/>是
                               </label>
                               <label>
                                     <input type="radio" name="supplyAgreement" value="0"/>否
                               </label>
                           </div>
                            <label for="disabledSelect" class="col-sm-2 control-label">是否启用门户</label>
                            <div class="col-sm-4 radio i-checks">
                                <label>
                                <input type="radio" name="supplyMenHu" value="1"/>是
                                </label>
                                <label>
                                <input type="radio" name="supplyMenHu" value="0"/>否
                                </label>
                            </div>
                        </div>
                        <div class="form-group" id="addLine"></div>
                    </fieldset>
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label" for="ds_host"></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
                           	</div>
                           	<label class="col-sm-2 control-label" for="ds_host"></label>
                           	<div class="col-sm-4">
                              	<input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
                           	</div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
	<script type="text/javascript" src="./js/dictionary.js"></script>
</html>