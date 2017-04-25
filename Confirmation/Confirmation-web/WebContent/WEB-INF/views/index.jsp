<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>南华大学船山学院考生投档信息确认系统</title>
    <link rel="shortcut icon" href="img/logo.png">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!--JQuery EasyUI 样式-->
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.1/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.1/themes/icon.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--JQuery EasyUI-->
    <script src="jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
    <!-- 自定义的样式 -->
    <link rel="stylesheet" type="text/css" href="css/index-style.css"/>
    <!--JQuery Validation-->
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
    <!--添加自定义的验证方法-->
    <script src="js/additional-methods.js"></script>
    <script>
        $(document).ready(function () {
            $("#commentForm").validate({
                rules: {
                    account: {
                        required: true,
                        rangelength: [14, 14],
                        isKSH: true
                    },
                    pwd: {
                        required: true,
                        rangelength: [6, 6],
                        isPWD: true
                    },
                    con_code: {
                        required: true
                    }
                },
                messages: {
                    account: {
                        rangelength: "账号的长度为14位",
                        isKSH: "请正确填写您的考生号"
                    },
                    pwd: {
                        rangelength: "密码的长度为6位",
                        isPWD: "请正确填写您的身份证号后6位"
                    }
                }
            });
            $("#confirmForm").validate({
                rules:{
                    t_account:{
                        required:true
                    },
                    t_pwd:{
                        required:true
                    }
                }
            });
            $("#stu_log").click(function(){
                $("#stu_log").addClass("active");
                $("#tea_log").removeClass("active");
                $("#stu_log_panel").css("display","block");
                $("#tea_log_panel").css("display","none");
            });
            $("#tea_log").click(function(){
                $("#stu_log").removeClass("active");
                $("#tea_log").addClass("active");
                $("#stu_log_panel").css("display","none");
                $("#tea_log_panel").css("display","block");
            });
        });
    </script>
</head>
<body>
<div class="content">
    <div class="image"></div>
    <div id="stu_log_panel" class="lg">
        <div class="my-header">
            <h2>欢迎报考南华大学船山学院</h2>
        </div>
        <div style="width: 396px;height: 292px;margin-bottom: 0px;margin-top: 20px">
            <form role="form" class="form-horizontal" id="commentForm" method="post" action="#">
                <div class="form-group" style="margin-top: 50px">
                    <label for="account" class="col-sm-3 control-label">账号</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="account" name="account" placeholder="14位考生号">
                    </div>
                </div>
                <div class="form-group">
                    <label for="pwd" class="col-sm-3 control-label">密码</label>
                    <div class="col-sm-7">
                        <input type="password" class="form-control" id="pwd" name="pwd" placeholder="身份证后六位">
                    </div>
                </div>
                <div class="form-group">
                    <label for="con_code" class="col-sm-3 control-label">验证码</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="con_code" name="con_code" placeholder="请输入验证码">
                    </div>
                    <div class="col-sm-3">
                        <img id="cci" src="" alt="验证码" style="width: 100%;height: 30px">
                    </div>
                </div>
                <div class="form-group">
                    <div id="err_msg" style="color: red;font-size: small;text-align: center;font-weight: bold">
                        ${error_message}
                    </div>
                </div>
                <div class="form-group">
                    <div style="text-align: center">
                        <button type="submit" class="btn btn-primary" style="width: 200px">登录</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div id="tea_log_panel" class="lg" style="display: none">
        <div class="my-header">
            <h2>欢迎使用本系统</h2>
        </div>
        <div style="width: 396px;height: 292px;margin-bottom: 0px;margin-top: 20px">
            <form role="form" class="form-horizontal" id="confirmForm" method="post" action="#">
                <div class="form-group" style="margin-top: 50px">
                    <label for="t_account" class="col-sm-3 control-label">账号</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="t_account" name="t_account" placeholder="请输入账号">
                    </div>
                </div>
                <div class="form-group">
                    <label for="t_pwd" class="col-sm-3 control-label">密码</label>
                    <div class="col-sm-7">
                        <input type="password" class="form-control" id="t_pwd" name="t_pwd" placeholder="请输入密码">
                    </div>
                </div>
                <div class="form-group">
                    <div id="t_err_msg" style="color: red;font-size: small;text-align: center;font-weight: bold">
                        ${error_message2}
                    </div>
                </div>
                <div class="form-group">
                    <div style="text-align: center">
                        <button type="submit" class="btn btn-primary" style="width: 200px">登录</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="btn_group btn-group">
    <button id="stu_log" class="btn-primary active" style="width: 50px;height: 50px"><span class="glyphicon glyphicon-user"></span>S</button>
    <button id="tea_log" class="btn-primary" style="width: 50px;height: 50px"><span class="glyphicon glyphicon-user"></span>T</button>
</div>
</body>
</html>