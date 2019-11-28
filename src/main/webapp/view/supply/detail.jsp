<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>菜单添加页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
		<link href="<%=path%>static/css/plugins/bootstrap-switch/bootstrap-switch.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form action="supply/list.jsp" method="post" class="form-horizontal" role="form">
                    <fieldset>
						<legend>供货商详细信息</legend>
						<div class="form-group">
							<label class="col-sm-2 control-label">供应商编码</label>
							<div class="col-sm-4">
								<input class="form-control" style="border: none" id="supplyId" value="${entity.supplyId}" type="text" readonly />
							</div>
							<label class="col-sm-2 control-label">供应商名称</label>
							<div class="col-sm-4">
								<input class="form-control" id="supplyName" value="${entity.supplyName}" type="text" readonly />
							</div>
						</div>

                       	<div class="form-group">
							<label class="col-sm-2 control-label">供应商类型</label>
							<div class="col-sm-4">
								<input class="form-control" id="supplyType" value="${entity.supplyType}" type="text" readonly />
							</div>
							<label class="col-sm-2 control-label">供应商简称</label>
							<div class="col-sm-4">
								<input class="form-control" id="supplySimpName" value="${entity.supplySimpName}" type="text" readonly />
							</div>
                       	</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">供应商法人</label>
							<div class="col-sm-4">
								<input class="form-control" id="supplyLawer" value="${entity.supplyLawer}" type="text" readonly />
							</div>
							<label class="col-sm-2 control-label">法人电话</label>
							<div class="col-sm-4">
								<input class="form-control" id="supplyLawNum" value="${entity.supplyLawNum}" type="text" readonly />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">供应商地址</label>
							<div class="col-sm-4">
								<input class="form-control" id="supplyAddress" value="${entity.supplyAddress}" type="text" readonly />
							</div>
							<label class="col-sm-2 control-label">联系人</label>
							<div class="col-sm-4">
								<input class="form-control" id="supplyRelation" value="${entity.supplyRelation}" type="text" readonly />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">联系人电话</label>
							<div class="col-sm-4">
								<input class="form-control" id="supplyRelationNum" value="${entity.supplyRelationNum}" type="text" readonly />
							</div>
							<label class="col-sm-2 control-label">联系人邮箱</label>
							<div class="col-sm-4">
								<input class="form-control" id="supplyRelationEmail" value="${entity.supplyRelationEmail}" type="text" readonly />
							</div>
						</div>
						<div class="form-group">

							<label class="col-sm-2 control-label">社会统一信任代码</label>
							<div class="col-sm-4">
								<input class="form-control" id="supplyAgreement" value="${entity.supplyAgreement}" type="text" readonly />
							</div>
						</div>


                       	<div class="form-group">
							<label class="col-sm-2 control-label">状态</label>
							<div class="col-sm-2 radio i-checks">
								${entity.supplyStatus==0? "停用":"启用"}

							</div>

							<label class="col-sm-2 control-label">是否启用门户</label>
							<div class="col-sm-2 radio i-checks">
								${entity.supplyMenHu==0? "停用":"启用"}

							</div>

								<label class="col-sm-2 control-label" >必须合同</label>

								<div class="col-sm-2 radio i-checks">

									<div class="col-sm-4 radio i-checks">
										<label ${entity.supplyAgreement==0?"null":"hidden" }>
											<input type="radio" name="supplyMenHu" value="0" ${entity.supplyAgreement==0?"checked":null }/>否
										</label>
										<label ${entity.supplyAgreement==1?"null":"hidden" }>
											<input type="radio" name="supplyMenHu" value="1" ${entity.supplyAgreement==1?"checked":null }/>是
										</label>
									</div>
							</div>
                       	</div>
                    </fieldset>     
                    <fieldset>
							<div>
								<div align="center" class="col-sm-12"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
							</div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/bootstrap-switch/bootstrap-switch.min.js"></script>
	<script type="text/javascript" src="${path }/view/system/menu/js/menu-create.js"></script>
</html>