<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>原料修改页面</title>
    <%@ include file="../../../common/jsp/header.jsp"%>
<%--    <link href="<%=path%>static/css/plugins/bootstrap-switch/bootstrap-switch.min.css" rel="stylesheet">--%>
<%--    <link rel="stylesheet" href="../../../static/css/plugins/ztree/demo.css" type="text/css">--%>
    <link rel="stylesheet" href="<%=path%>static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="<%=path%>static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>

    <script language="JavaScript">
        /*页面加载完*/
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
                //回调函数
                callback: {
                    onClick: onClick
                }
            };
            //异步加载数据
            $.post(root+"mtype/queryAll.do",function (zNodes) {
                $.fn.zTree.init($("#treeDemo"), setting, zNodes);
            },'json');
        });


        function onClick(e, treeId, treeNode) {
            var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
                nodes = zTree.getSelectedNodes(),
                v = "";
                id="";
            console.log(nodes)


            nodes.sort(function compare(a,b){return a.id-b.id;});
            for (var i=0, l=nodes.length; i<l; i++) {
                v += nodes[i].name + ",";
                id+= nodes[i].id + ",";
            }
            if (v.length > 0 ) v = v.substring(0, v.length-1);
            if (v.length > 0 ) id = id.substring(0, id.length-1);
            var mtypeObj = $("#mtypeSel");
            mtypeObj.attr("value", v);
            $("#typeParentId").val(id);
        }

        function showMenu(){
            var mtypeObj = $("#mtypeSel");
            var cityOffset = $("#mtypeSel").offset();
            $("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + mtypeObj.outerHeight() + "px"}).slideDown("fast");

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

</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <form action="${path }/mtype/update.do" method="post" class="form-horizontal" role="form">
            <input type="hidden1" id="typeParentId" name="typeParentId" value="${entity.typeParentId}" />
            <input type="hidden1" id="typeId" name="typeId" value="${entity.typeId}" />

            <fieldset>
                <legend>原料类型基本信息</legend>
                <div class="form-group">
                    <label class="col-sm-2 control-label" >选择父类</label>
                    <div class="col-sm-2">
                        <input class="form-control" id="mtypeSel" name="menuName" readonly type="text" value="${parentName}" />
                        <div id="menuContent" class="menuContent" style="display:none; position: static;">
                            <ul id="treeDemo" class="ztree" style="margin-top:0; width:160px;"></ul>
                        </div>
                    </div>
                    <a id="menuBtn" href="#" onclick="showMenu(); return false;">选择</a></li>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">类别名称</label>
                    <div class="col-sm-2">
                        <input class="form-control" value="${entity.typeName}" id="typeName" name="typeName" type="text" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" >类别简称</label>
                    <div class="col-sm-2">
                        <input class="form-control" value="${entity.typeSimpName}" id="typeSimpName" name="typeSimpName" type="text" />
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <div class="form-group">
                    <label class="col-sm-2 control-label"></label>
                    <div class="col-sm-2">
                        <input type="submit" value="提交" class="btn btn-primary"/>
                        <input type="reset" value="重置" class="btn btn-danger" />
                    </div>
                    <label class="col-sm-2 control-label"></label>
                </div>
            </fieldset>
        </form>
    </div>
</div>
</body>
</html>