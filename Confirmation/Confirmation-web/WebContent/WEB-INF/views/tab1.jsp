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
    <!--JQuery Validation-->
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
    <!--JavaScript-->
    <script type="text/javascript">
        $(document).ready(function(){
            var p = $("#zy_info").datagrid("getPager");
            $(p).pagination({
                pageSize:10,
                pageList:[10,15,20],
                beforePageText:"第",
                afterPageText:"页  共{pages}页",
                displayMsg:"当前显示 {from} - {to} 条记录  共 {total} 条记录"
            });
            $.extend($.fn.validatebox.defaults.rules, {
                number: {
                    validator: function (value, param) {
                        return /^[0-9]+.?[0-9]*$/.test(value);
                    },
                    message: '请输入合法数字'
                },
                integ:{
                    validator:function(value,param){
                        return /^[+]?[0-9]\d*$/.test(value);
                    },
                    message: '请输入整数'
                },
                dbfile:{
                    validator:function(value,param){
                        var suffix = getFileSuffixName(value);
                        if(suffix == '.dbf'){
                            return true
                        }
                        return false;
                    },
                    message:'请选择.dbf文件'
                }
            });
        });
        function getFileSuffixName(value){
            var suffix = value.substr(value.lastIndexOf(".")).toLowerCase();//获得文件后缀名
            return suffix;
        }
        function addNewZY(){
            $('#dlg').dialog('open').dialog('setTitle','新建专业');
            $('#fm').form('clear');
//            url = 'save_user.php';
        }
        function saveUser(){
            $('#fm').form('submit',{
                url: url,
                onSubmit: function(){
                    return $(this).form('validate');
                },
                success: function(result){
                    var result = eval('('+result+')');
                    if (result.errorMsg){
                        $.messager.show({
                            title: 'Error',
                            msg: result.errorMsg
                        });
                    } else {
                        $('#dlg').dialog('close');		// close the dialog
                        $('#zy_info').datagrid('reload');	// reload the user data
                    }
                }
            });
        }
        function editZY(){
            var row = $('#zy_info').datagrid('getSelected');
            if (row){
                $('#dlg').dialog('open').dialog('setTitle','Edit User');
                $('#fm').form('load',row);
//                url = 'update_user.php?id='+row.id;
            }
        }
        function destroyZY(){
            var row = $('#zy_info').datagrid('getSelected');
            if (row){
                $.messager.confirm('Confirm','Are you sure you want to destroy this user?',function(r){
                    if (r){
                        $.post('destroy_user.php',{id:row.id},function(result){
                            if (result.success){
                                $('#zy_info').datagrid('reload');	// reload the user data
                            } else {
                                $.messager.show({	// show error message
                                    title: 'Error',
                                    msg: result.errorMsg
                                });
                            }
                        },'json');
                    }
                });
            }
        }
        function uploadFile(){
            $('#dlg2').dialog('open');
            $('#fm2').form('clear');
            url = '/uploadFile';
        }
        function upload(){
            $("#fm2").form('submit',{
                url:url,
                onSubmit: function(){
                    return $(this).form('validate');
                },
                success: function(result){
                    var result = eval('('+result+')');
                    if (result.errorMsg){
                        $.messager.show({
                            title: 'Error',
                            msg: result.errorMsg
                        });
                    } else {
                        $('#dlg2').dialog('close');		// close the dialog
                        $('#zy_info').datagrid('reload');	// reload the user data
                    }
                }
            });
        }
    </script>
    <style type="text/css">
        #fm{
            margin:0;
            padding:10px 30px;
        }
        #fm2{
            margin:0;
            padding:10px 30px;
        }
        .ftitle{
            font-size:14px;
            font-weight:bold;
            color:#666;
            padding:5px 0;
            margin-bottom:10px;
            border-bottom:1px solid #ccc;
        }
        .fitem{
            margin-bottom:5px;
        }
        .fitem label{
            display:inline-block;
            width:80px;
        }
    </style>
</head>
<body>
    <div style="width: 700px;height: 400px;margin: 0 auto;position: relative; top: 50%;transform: translateY(-50%)">
        <table id="zy_info" title="专业信息表" class="easyui-datagrid" style="width: 700px;height: 400px"
               toolbar="#toolbar" url="#" rownumbers="true" fitColumns="true" singleSelect="true" pagination="true">
            <thead>
            <tr>
                <th field="zydh" width="80">专业代号</th>
                <th field="zymc" width="80">专业名称</th>
                <th field="zyrs" width="80">专业计划人数</th>
                <th field="lqrs" width="80">实际录取人数</th>
                <th field="zylb" width="80">专业招生方向</th>
                <th field="kzzy" width="80">控制专业</th>
                <th field="kzfs" width="80">控制分数</th>
            </tr>
            </thead>
        </table>
        <div id="toolbar">
            <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addNewZY()">添加</a>
            <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editZY()">编辑</a>
            <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyZY()">删除</a>
            <a href="#" class="easyui-linkbutton" iconCls="icon-more" plain="true" onclick="uploadFile()">批量导入</a>
        </div>
    </div>
    <div id="dlg" class="easyui-dialog" style="width: 400px;height: 330px;padding: 10px 20px" closed="true" buttons="#dlg-buttons">
        <div class="ftitle">专业信息</div>
        <form id="fm" method="post">
            <div class="fitem">
                <label>专业代号</label>
                <input name="zydh" type="text" class="easyui-validatebox textbox" required="true">
            </div>
            <div class="fitem">
                <label>专业名称</label>
                <input name="zymc" type="text" class="easyui-validatebox textbox" required="true">
            </div>
            <div class="fitem">
                <label>专业计划人数</label>
                <input name="zyrs" type="text" class="easyui-validatebox textbox" required="true" validType="integ">
            </div>
            <div class="fitem">
                <label>专业招生方向</label>
                <select name="zylb" class="easyui-combobox" style="width: 150px;height: 20px" required="true" panelHeight="auto">
                    <option value="理工类">理工类</option>
                    <option value="文史类">文史类</option>
                </select>
            </div>
            <div class="fitem">
                <label>控制专业</label>
                <select name="kzzy" class="easyui-combobox" style="width: 150px;height: 20px" required="true" panelHeight="auto">
                    <option value="是">是</option>
                    <option value="否">否</option>
                </select>
            </div>
            <div class="fitem">
                <label>控制分数</label>
                <input name="kzfs" type="text" class="easyui-validatebox textbox" required="true" validType="number">
            </div>
        </form>
    </div>
    <div id="dlg-buttons">
        <a href="#" class="easyui-linkbutton" iconCls="icon-save" onclick="saveUser()">保存</a>
        <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
    </div>
    <div id="dlg2" title="上传专业信息文件" class="easyui-dialog" style="width: 400px;height: 250px;padding: 10px 20px" closed="true" buttons="#dlg2-buttons">
        <div class="ftitle">选择文件</div>
        <form id="fm2" method="post" enctype="multipart/form-data">
            <div class="fitem">
                <label>专业信息文件</label>
                <input name="info_file" type="file" class="easyui-validatebox filebox" required="true" style="width: 200px" validType="dbfile">
            </div>
        </form>
    </div>
    <div id="dlg2-buttons">
        <a href="#" class="easyui-linkbutton" iconCls="icon-save" onclick="upload()">上传</a>
        <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg2').dialog('close')">取消</a>
    </div>
</body>
</html>

<!--
我们定义数据网格（datagrid）列，并设置 'pagination' 属性为 true，它将在数据网格（datagrid）的底部生成一个分页（pagination）工具栏。pagination将发送两个参数到服务器：
page：页码，起始值 1。
rows：每页显示行。
分页参考http://www.cnblogs.com/huozhicheng/archive/2011/09/27/2193605.html
-->