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
            var p = $("#ks_info").datagrid("getPager");
            $(p).pagination({
                pageSize:10,
                pageList:[10,15,20],
                beforePageText:"第",
                afterPageText:"页  共{pages}页",
                displayMsg:"当前显示 {from} - {to} 条记录  共 {total} 条记录"
            });
        });
        //导出全部数据
        function derivedData(){
            $.ajax({
                url: '/download',
                type: 'POST',
                async: true,
                data: {

                },
                timeout: 5000,
                dataType: 'json',
                success: function(data){

                },
                error: function(data){

                }
            });
        }
        //编辑学生信息
        function editStudentInfo(){
//            var row = $('#ks_info').datagrid('getSelected');
//            if (row){
//                $('#dlg').dialog('open');
//                $('#fm').form('load',row);
//                url = 'update_user.php?id='+row.id;
//            }
            $("#dlg").dialog('open');
        }
        //批量导入学生信息
        function batchImport(){
            $("#dlg-stufile").dialog('open');
        }
        //按条件搜索
        function searchByConditions(){

        }
        //保存考生信息
        function saveKSInfo(){

        }
        //上传（重传）图片信息
        function updateKSPhoto(){
            $("#dlg-photo").dialog('open');
            $("#fm2").clear();
        }
    </script>
    <style type="text/css">
        .myfm{
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
        <table id="ks_info" title="考生信息表" class="easyui-datagrid" style="width: 700px;height: 400px"
               toolbar="#toolbar" url="#" rownumbers="true" fitColumns="true" singleSelect="true" pagination="true">
            <thead>
                <tr>
                    <th field="ksh" width="80">考生号</th>
                    <th field="ks_name" width="80">姓名</th>
                    <th field="ksxb" width="80">性别</th>
                    <th field="sfzh" width="80">身份证号</th>
                    <th field="ylzy" width="80">预录专业</th>
                    <th field="lqzy" width="80">录取专业</th>
                    <th field="shyj" width="80">审核意见</th>
                    <th field="shzt" width="80">审核状态</th>
                </tr>
            </thead>
        </table>
        <div id="toolbar">
            <a href="#" class="easyui-linkbutton" iconCls="icon-print" plain="true" onclick="derivedData()">导出</a>
            <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editStudentInfo()">编辑</a>
            <a href="#" class="easyui-linkbutton" iconCls="icon-more" plain="true" onclick="batchImport()">批量导入</a>
            <span style="position: relative;float: right">
                批次：<select class="easyui-combobox" panelHeight="auto" style="width: 35px;height: 20px">
                            <option value="1" selected="selected">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                       </select>
                条件：<select class="easyui-combobox" panelHeight="auto" style="width: 80px;height: 20px">
                            <option value="全部" selected="selected">全部</option>
                            <option value="确认就读">确认就读</option>
                            <option value="申请退档">申请退档</option>
                       </select>
                学号：<input type="text" class="easyui-validatebox textbox">
                <a href="#" class="easyui-linkbutton" iconCls="icon-search" plain="true" onclick="searchByConditions()">搜索</a>
            </span>
        </div>
    </div>
    <div id="dlg" title="编辑考生信息" class="easyui-dialog" style="width: 400px;height: 480px;padding: 10px 20px" closed="true" buttons="#dlg-buttons">
        <div class="ftitle">考生信息</div>
        <form id="fm" class="myfm" method="post">
            <div class="fitem">
                <label>考生号</label>
                <input name="ksh" type="text" class="easyui-validatebox textbox" disabled="disabled">
            </div>
            <div class="fitem">
                <label>姓名</label>
                <input name="ks_name" type="text" class="easyui-validatebox textbox" disabled="disabled">
            </div>
            <div class="fitem">
                <label>性别</label>
                <input name="ksxb" type="text" class="easyui-validatebox textbox" disabled="disabled">
            </div>
            <div class="fitem">
                <label>身份证号</label>
                <input name="sfzh" type="text" class="easyui-validatebox textbox" disabled="disabled">
            </div>
            <div class="fitem">
                <label>预录专业</label>
                <input name="ylzy" type="text" class="easyui-validatebox textbox" disabled="disabled">
            </div>
            <div class="fitem">
                <label>审核状态</label>
                <input name="shzt" type="text" class="easyui-validatebox textbox" disabled="disabled">
            </div>
            <div class="fitem">
                <label>录取专业</label>
                <input id="lqzy" name="lqzy" class="easyui-combobox" style="width: 150px;height: 20px" panelHeight="auto" valueField="id" textField="txt" url="getdata.php">
            </div>
            <div class="fitem">
                <label>身份证正面照</label>
                <img src="img/timg.jpg" style="width: 300px;height: 180px;border: solid 1px #cccccc" alt="身份证正面照">
                <a href="#"  style="margin-top: 5px" class="easyui-linkbutton" iconCls="icon-reload" onclick="updateKSPhoto()">上传(重传)</a>
            </div>
            <div class="fitem">
                <label>审核意见</label>
                <select name="shyj" class="easyui-combobox" panelHeight="auto" style="width: 150px;height: 20px">
                    <option value="合格">合格</option>
                    <option value="不合格">不合格</option>
                </select>
            </div>
        </form>
    </div>
    <div id="dlg-buttons">
        <a href="#" class="easyui-linkbutton" iconCls="icon-save" onclick="saveKSInfo()">保存</a>
        <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
    </div>
    <div id="dlg-photo" title="上传（重传）图片" class="easyui-dialog" style="width: 400px;height: 420px;padding: 10px 20px" closed="true" buttons="#dlg-photo-buttons">
        <div class="ftitle">上传（重传)身份证正面照</div>
        <form id="fm2" class="myfm" method="post">
            <div class="fitem">
                <label>预览照片</label>
                <img src="img/timg.jpg" style="width: 300px;height: 180px;border: solid 1px #cccccc" alt="身份证正面照">
            </div>
            <div class="fitem">
                <label>选择文件</label>
                <input name="pic_file" class="easyui-validatebox filebox" type="file" required="true" style="width: 200px">
            </div>
        </form>
    </div>
    <div id="dlg-photo-buttons">
        <a href="#" class="easyui-linkbutton" iconCls="icon-save">保存</a>
        <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg-photo').dialog('close')">取消</a>
    </div>
    <div id="dlg-stufile" title="上传文件" class="easyui-dialog" style="width: 400px;height: 240px;padding: 10px 20px" closed="true" buttons="#dlg-stu-buttons">
        <div class="ftitle">上传考生信息文件</div>
        <form id="fm3" class="myfm" method="post">
            <div class="fitem">
                <label>批次</label>
                <select name="pici" class="easyui-combobox" style="width: 150px;height: 20px" required="true" panelHeight="auto">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                </select>
            </div>
            <div class="fitem">
                <label>选择文件</label>
                <input name="ks_info_file" class="easyui-validatebox filebox" type="file" required="true" style="width: 150px">
            </div>
        </form>
    </div>
    <div id="dlg-stu-buttons">
        <a href="#" class="easyui-linkbutton" iconCls="icon-save">上传</a>
        <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg-stufile').dialog('close')">取消</a>
    </div>
</body>
</html>