<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>考生状态信息</title>
    <link rel="shortcut icon" href="img/logo.png">
    <!--添加自定义样式-->
    <link type="text/css" rel="stylesheet" href="css/stu_state-style.css">
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
        //打开上传图片窗口
        function openWindow(){
            $("#win").window({
                minimizable:false,
                maximizable:false,
                resizable:false
            }).window("open");
        }
        //预览将选中的图片
        function preview(file){
            if (file.files && file.files[0]){
                var reader = new FileReader();
                reader.onload = function(evt){
                    $("#id_picture").attr("src",evt.target.result);
                };
                reader.readAsDataURL(file.files[0]);
            }
        }
        //得到文件后缀名
        function getFileSuffixName(value){
            var suffix = value.substr(value.lastIndexOf(".")).toLowerCase();//获得文件后缀名
            return suffix;
        }
        //得到照片大小
        function getFileSize() {
            var dom = document.getElementById("pic");
            var fileSize =  dom.files[0].size;
            return fileSize;
        }
        //验证文件表单
        function isVerification(){
            var fileVal = $("#pic").val();
            var suffix = getFileSuffixName(fileVal);
            if(suffix!=".jpg" && suffix!=".jpeg" && suffix!=".png"){
                openDialog2();
                return false;
            }
            var fileSize = getFileSize();
            if(fileSize > 2097152){
                openDialog3();
                return false;
            }
            return true;
        }
        function openDialog1(){
            $("#dd1").show();
            $("#dd1").dialog({
                title: '提示',
                width: 300,
                height: 150,
                closed:false,
                cache:false,
                buttons:[
                    {
                        text:'OK',
                        iconCls:'icon-ok',
                        handler:function(){
                            $('#dd1').dialog('close');
                        }
                    }
                ]
            });
        }
        function openDialog2(){
            $("#dd2").show();
            $("#dd2").dialog({
                title: '提示',
                width: 300,
                height: 150,
                closed:false,
                cache:false,
                buttons:[
                    {
                        text:'OK',
                        iconCls:'icon-ok',
                        handler:function(){
                            $('#dd2').dialog('close');
                        }
                    }
                ]
            });
        }
        function openDialog3(){
            $("#dd3").show();
            $("#dd3").dialog({
                title: '提示',
                width: 300,
                height: 150,
                closed:false,
                cache:false,
                buttons:[
                    {
                        text:'OK',
                        iconCls:'icon-ok',
                        handler:function(){
                            $('#dd3').dialog('close');
                        }
                    }
                ]
            });
        }
        function upload(){
            var fileVal = $("#pic").val();
            if(!fileVal){
                openDialog1();
            }else{
                //要接受jpg,jpeg,png三种格式
                var isVerify = isVerification();
                if(isVerify){
//                    $("#pre_panel").css("display","table");
                    var formData = new FormData($("#pic_form")[0]);
                    $.ajax({
                        url: "#" ,
                        type: 'POST',
                        data: formData,
                        async: false,
                        cache: false,
                        contentType: false,
                        processData: false,
                        success: function (data) {
//                    $("#pre_panel").css("display","none");
                        },
                        error: function (data) {
//                    $("#pre_panel").css("display","none");
                        }
                    });
                }
            }
        }
        //页面加载好-事件
        $(document).ready(function(){
            $("#pic").tooltip({
                show: {
                    effect: "slideDown",
                    delay: 250
                }
            });
        });
    </script>
</head>
<body>
    <!--若想打开加载页面，将此div的display设置为table-->
    <div id="pre_panel" class="loading" style="text-align: center;display: none">
        <div style="position: relative;display: table-cell;vertical-align: middle;">
            <i class="fa fa-spinner fa-pulse fa-5x"></i><br/>
            Loading...
        </div>
    </div>
    <div class="head"></div>
    <div style="width: 100%;height: 549px;position: relative;margin: 0px">
        <div class="my_container">
            <table class="table table-bordered">
                <caption style="text-align: center;font-size: 25px;color: black;font-weight: bold">考生状态信息表</caption>
                <tbody style="text-align: center;vertical-align: middle;font-size: 15px">
                    <tr>
                        <td>姓名</td>
                        <td>关羽</td>
                        <td>性别</td>
                        <td>男</td>
                    </tr>
                    <tr>
                        <td>考生号</td>
                        <td>15430103151332</td>
                        <td>预录专业</td>
                        <td style="color: #0000FF">麻醉学</td>
                    </tr>
                    <tr>
                        <td>身份证号</td>
                        <td>430124199701188761</td>
                        <td>录取专业</td>
                        <td style="color: #0000FF"></td>
                    </tr>
                    <tr>
                        <td>手机号码</td>
                        <td>13025698742</td>
                        <td>录取状态</td>
                        <td style="color: #0000FF">审核中</td>
                    </tr>
                    <tr>
                        <td>已执行操作</td>
                        <td>确认就读</td>
                        <td>审核意见</td>
                        <td style="color: #0000FF"></td>
                    </tr>
                </tbody>
            </table>
            <p style="font-size: 10px;color: red;position: relative;float: right;font-weight: bolder">注意：审核意见为不合格者，请重新上传身份证正面照！</p>
            <div style="width: 100%;height: 50px;position: relative;top: 30px;left: 0px">
                <button class="btn btn-primary btn-sm" style="position: absolute;right: 0px" onclick="openWindow()">点我重新上传图片</button>
            </div>
        </div>
    </div>
    <div id="win" class="easyui-window" title="上传身份证正面照" closed="true" style="width: 500px;height: 300px;padding: 5px">
        <div class="my_con1">
            <div class="image col-sm-5 col-sm-offset-3">
                <img id="id_picture" style="width:100%;height:100%" src="img/timg.jpg">
            </div>
            <input id="pic" name="pic" type="file" style="position: relative;top: 127px" class="col-sm-2" onchange="preview(this)"
                   title="身份证正面照是把身份证的正面拍一张照片，要求图片清晰易识别，照片文件格式仅限于.jpg .jpeg .png三种之间的一种，照片文件的大小不得大于2MB。">
            <div style="width: 100%;height: 50px;line-height: 50px;position: absolute;top: 165px">
                <div style="text-align: center;vertical-align: middle">
                    <a href="#" class="easyui-linkbutton" iconCls="icon-save" onclick="upload()">上传</a>
                </div>
            </div>
        </div>
    </div>
    <div id="dd1" style="width:300px;height:150px;display: none">
        请选择身份证正面照片文件！
    </div>
    <div id="dd2" style="width:300px;height:150px;display: none">
        请选择格式正确的图片！
    </div>
    <div id="dd3" style="width:300px;height:150px;display: none">
        图片文件大于2M，请重新选择！
    </div>
</body>
</html>