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
            $("#hg").tooltip({
                show:{
                    effect: "slideDown",
                    delay: 250
                }
            });
            $("#nhg").tooltip({
                show:{
                    effect: "slideDown",
                    delay: 250
                }
            });
            $("#refresh").tooltip({
                show:{
                    effect: "slideDown",
                    delay: 250
                }
            });
        });
    </script>
    <style type="text/css">
        .fitem{
            margin-bottom: 5px;
        }
        .fitem label{
            display: inline-block;
            width: 80px;
            font-size: 15px;
        }
        .fitem span{
            display: inline-block;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div id="sh_panel" class="easyui-panel" title="审核考生资料" style="width: 700px;height: 400px" data-options="style:{margin: '0 auto',position: 'relative', top: 50}" tools="#tt" toolbar="#toolbar">
        <div id="content" fit="true" class="easyui-layout">
            <div region="center" border="false">
                <div style="width: 80%;height: 250px;margin: 0 auto;position: relative;top: 50%;transform: translateY(-50%)">
                    <img src="#" alt="身份证预览图" style="width: 300px;height: 180px;margin-top: 35px">
                    <div style="position: relative;float: right;width: 230px;height: 180px;margin-top: 35px">
                        <div class="fitem">
                            <label>姓名</label>
                            <span>刘备</span>
                        </div>
                        <div class="fitem">
                            <label>性别</label>
                            <span>男</span>
                        </div>
                        <div class="fitem">
                            <label>身份证号</label>
                            <span>130625199411260035</span>
                        </div>
                        <div class="fitem">
                            <label>考生号</label>
                            <span>15698745896</span>
                        </div>
                        <div class="fitem">
                            <label>预录专业</label>
                            <span>软件工程</span>
                        </div>
                        <div class="fitem">
                            <label>考生操作</label>
                            <span>确认就读</span>
                        </div>
                    </div>
                </div>
            </div>
            <div region="south" style="padding-right: 10px" border="false">
                <div style="position: relative;float: right">
                    还有<span id="dshrs">1</span>人没有被审核
                </div>
            </div>
        </div>
        <div style="width: 100%;height: 100%;text-align: center;display: none">
            <div style="display: table-cell;vertical-align: middle">
                暂无需要审核的数据。
            </div>
        </div>
    </div>
    <div id="tt">
        <a id="hg" href="#" class="icon-ok" title="合格" style="margin:auto 5px"></a>
        <a id="nhg" href="#" class="icon-cancel" title="不合格" style="margin:auto 5px"></a>
        <a id="refresh" href="#" class="icon-reload" title="刷新" style="margin:auto 5px"></a>
    </div>
</body>
</html>