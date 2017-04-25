<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>教职工管理</title>
    <link rel="shortcut icon" href="img/logo.png">
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
        <!--当文档加载好-->
        $(document).ready(function(){
            $("ul.easyui-tree li").click(function(){
//                $("ul.easyui-tree li").removeClass("active");
//                $(this).addClass("active");
                var title = $(this).children().text();
//                $("#tt").tabs("select",title);
                addTab(title);
            });
            nowTime();
            setInterval("nowTime()", 1000);
        });
        function addTab(title){
            if($("#tt").tabs("exists",title)){
                $("#tt").tabs("select",title);
            }else{
                var html_str;
                if(title == "专业信息管理"){
                    html_str = "<iframe scrolling='auto' frameborder='0'  src='tab1.html' style='width:100%;height:500px;'></iframe>";
                    $("#tt").tabs("add",{
                        title:title,
                        closable: true,
                        content:html_str,
                        select:true,
                        icon:"icon-large-chart"
                    });
                }else if(title == "考生信息管理"){
                    html_str =  '<iframe scrolling="auto" frameborder="0"  src="tab2.html" style="width:100%;height:500px;"></iframe>';
                    $("#tt").tabs("add",{
                        title:title,
                        closable: true,
                        content:html_str,
                        select:true,
                        icon:"icon-man"
                    });
                }else if(title == "考生资料审核"){
                    html_str =  '<iframe scrolling="auto" frameborder="0"  src="tab3.html" style="width:100%;height:500px;"></iframe>';
                    $("#tt").tabs("add",{
                        title:title,
                        closable: true,
                        content:html_str,
                        select:true,
                        icon:"icon-large-picture"
                    });
                }else if(title == "考生基本信息查询"){
                    html_str =  '<iframe scrolling="auto" frameborder="0"  src="tab4.html" style="width:100%;height:500px;"></iframe>';
                    $("#tt").tabs("add",{
                        title:title,
                        closable: true,
                        content:html_str,
                        select:true,
                        icon:"icon-search"
                    });
                }else{
                    html_str =  '<iframe scrolling="auto" frameborder="0"  src="tab5.html" style="width:100%;height:500px;"></iframe>';
                    $("#tt").tabs("add",{
                        title:title,
                        closable: true,
                        content:html_str,
                        select:true,
                        icon:"icon-large-shapes"
                    });
                }
            }
        }
        //获取当前时间并拼接放到div中的函数
        function nowTime(){
            var nowDate = new Date();
            var year = nowDate.getFullYear();
            var month = nowDate.getMonth()+1;
            month = month>9 ? month : "0" + month;
            var date = nowDate.getDate();
            date = date>9 ? date : "0" + date;
            var hour = nowDate.getHours();
            hour = hour>9 ? hour : "0" + hour;
            var miunte = nowDate.getMinutes();
            miunte = miunte>9 ? miunte : "0" + miunte;
            var second = nowDate.getSeconds();
            second = second>9 ? second : "0" + second;
            $("#time").text(year+"年"+month+"月"+date+"日"+hour+"时"+miunte+"分"+second+"秒");
        }
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
    <div class="easyui-layout" style="width: 100%;height: 549px;position:relative;margin: 0px">
        <div region="north" style="height: 30px">
            <div style="height: 30px;position: absolute;right: 0px;line-height: 30px">
                <div style="text-align: center;vertical-align: middle">
                    <span style="color: #0000FF;font-weight: bolder;margin: 10px">超级管理员</span>
                    <span style="color: #0000FF;font-weight: bolder;margin: 10px">账号：1001</span>
                    <!--<span style="color: #0000FF;font-weight: bolder;margin: 10px"><a id="logout" iconCls="fa fa-sign-out" class="easyui-linkbutton" plain="true">注销</a></span>-->
                    <span style="color: #0000FF;font-weight: bolder;margin: 10px"><a id="logout" class="fa fa-sign-out" href="#">注销</a></span>
                    <span id="time" style="color: #0000FF;font-weight: bolder;margin: 10px"></span>
                </div>
            </div>
        </div>
        <div region="west" split="true" title="功能选项" style="width: 200px">
            <ul class="easyui-tree" style="margin-top: 5px">
                <li iconCls="icon-large-chart"><span>专业信息管理</span></li>
                <li iconCls="icon-man"><span>考生信息管理</span></li>
                <li iconCls="icon-large-picture"><span>考生资料审核</span></li>
                <li iconCls="icon-search"><span>考生基本信息查询</span></li>
                <li iconCls="icon-large-shapes"><span>系统设置</span></li>
            </ul>
        </div>
        <div id="content" region="center" style="padding:0px;">
            <div id="tt" class="easyui-tabs" style="width: 100%;height: 100%">
                <div title="首页" iconCls="icon-large-home" style="padding: 0px;background-image: url('img/wel.png');background-repeat: no-repeat;background-size: 100% 100%"></div>
            </div>
        </div>
    </div>
</body>
</html>