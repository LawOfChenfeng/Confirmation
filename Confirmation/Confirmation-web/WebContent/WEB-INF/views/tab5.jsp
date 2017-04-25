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
        function showExplain(c){
            var option = c.text;
            var exp = $('#explain');
            if(option == '导入数据'){
                $(exp).text('导入一些基本信息的dbf文件。导入一些基本信息的dbf文件。导入一些基本信息的dbf文件。导入一些基本信息的dbf文件。导入一些基本信息的dbf文件。导入一些基本信息的dbf文件。');
            }else if(option == '定时任务'){
                $(exp).text('设置各批次考生可以登录的时间。设置各批次考生可以登录的时间。设置各批次考生可以登录的时间。设置各批次考生可以登录的时间。设置各批次考生可以登录的时间。');
            }else if(option == '权限管理'){
                $(exp).text('管理各管理员的权限。管理各管理员的权限。管理各管理员的权限。管理各管理员的权限。管理各管理员的权限。管理各管理员的权限。管理各管理员的权限。管理各管理员的权限。');
            }
        }
    </script>
    <style type="text/css">
        ul{
            list-style-type: none;
            margin: 0px;
            padding: 0px;

        }
        li a{
            font-size: 15px;
            text-decoration: none;
            display: block;
            color: silver;
            text-align: center;
        }
        li a:link{
            font-size: 15px;
            font-weight: bold;
            text-decoration: none;
            display: block;
            color: silver;
            text-align: center;
        }
        li a:hover{
            font-size: 15px;
            text-decoration: none;
            display: block;
            color: black;
            font-weight: bold;
            text-align: center;
        }
        li a:active{
            font-size: 15px;
            text-decoration: none;
            display: block;
            color: black;
            font-weight: bold;
            text-align: center;
        }
        .smTitle{
            width: 60%;
            padding-left: 5px;
            padding-bottom: 5px;
            font-size: 20px;
            font-weight: bolder;
            border-bottom: solid 1px #cccccc;
            margin-top: 5px;
            margin-bottom: 5px;
        }
    </style>
</head>
<body style="padding-bottom: 15px">
    <div class="panelLeft">
        <div style="position: fixed">
            <div class="listTitle">
                设置
            </div>
            <ul>
                <li>
                    <a href="#daoru" onclick="showExplain(this)">导入数据</a>
                </li>
                <li>
                    <a href="#dingshi" onclick="showExplain(this)">定时任务</a>
                </li>
                <li>
                    <a href="#quanxian" onclick="showExplain(this)">权限管理</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="panelRight">
        <div style="width: 20%;height: 60%;position: fixed;right: 7%;z-index: 999">
            <div class="smTitle" style="width: 100%">
                说明
            </div>
            <div style="width: 100%;height: 358px">
                <p id="explain" class="text-justify" style="font-size: 15px"></p>
            </div>
        </div>
        <div class="smTitle" id="daoru" name="daoru">
            导入数据
        </div>
        <div style="width: 60%;height: 400px;margin-bottom: 5px;background-color: orange">

        </div>
        <div class="smTitle" id="dingshi" name="dingshi">
            定时任务
        </div>
        <div style="width: 60%;height: 400px;margin-bottom: 5px;background-color: red">

        </div>
        <div class="smTitle" id="quanxian" name="quanxian">
            权限管理
        </div>
        <div style="width: 60%;height: 400px;margin-bottom: 5px;background-color: aqua">

        </div>
    </div>
</body>
</html>