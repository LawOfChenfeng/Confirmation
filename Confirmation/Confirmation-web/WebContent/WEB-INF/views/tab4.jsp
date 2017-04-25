<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="shortcut icon" href="img/logo.jpg">
    <!--添加自定义样式-->
    <link type="text/css" rel="stylesheet" href="css/tea_manager-style.css">
    <!--JQuery UI css-->
    <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!--JQuery EasyUI 样式-->
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.1/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.1/themes/icon.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--JQuery UI-->
    <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <!--JQuery EasyUI-->
    <script src="jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <!--JavaScript-->
    <script type="text/javascript">
        $(document).ready(function(){
            var p = $("#ks_base").datagrid("getPager");
            $(p).pagination({
                pageSize:10,
                pageList:[10,15,20],
                beforePageText:"第",
                afterPageText:"页  共{pages}页",
                displayMsg:"当前显示 {from} - {to} 条记录  共 {total} 条记录"
            });
        });
    </script>
</head>
<body>
    <div style="width: 700px;height: 400px;margin: 0 auto;position: relative; top: 50%;transform: translateY(-50%)">
        <table id="ks_base" title="考生基本信息查询" class="easyui-datagrid" style="width: 700px;height: 400px"
                toolbar="#toolbar" url="#" rownumbers="true" fitColumns="true" singleSelect="true" pagination="true">
            <thead>
                <tr>
                    <th field="ksh" width="80">考生号</th>
                    <th field="ks_name" width="80">姓名</th>
                    <th field="ksxb" width="80">性别</th>
                    <th field="sfzh" width="80">身份证号</th>
                    <th field="ylzy" width="80">预录专业</th>
                </tr>
            </thead>
        </table>
        <div id="toolbar">
            <a href="#" class="easyui-linkbutton" iconCls="icon-reload" plain="true">刷新</a>
            <div style="float: right">
                学号：<input class="easyui-validatebox textbox" type="text">
                <a href="#" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>
            </div>
        </div>
    </div>
</body>
</html>