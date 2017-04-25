<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>考生投档信息</title>
    <link rel="shortcut icon" href="img/logo.png">
    <!--导入自定义样式-->
    <link rel="stylesheet" type="text/css" href="css/stu_info-style.css">
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
    <script type="text/javascript">
        //验证是否读了注意事项
        function verifyIsRead(){
            var isCheck = document.getElementById("isRead").checked;
            if(isCheck == true){
                $("#btn_next").removeClass("disabled");
            }else{
                $("#btn_next").addClass("disabled");
            }
        }
        //从第一步到第二步
        function nextPanel(){
            var isCheck = document.getElementById("isRead").checked;
            if(isCheck == true){
                $("#nav_ul li").removeClass("active");
                $("#nav_ul li").eq(1).addClass("active");
                $("#attentions").slideUp("slow");
                $("#perfect_info").show();
            }
        }
        //从第二步到第三步
        function submitCompleted(){
            $("#nav_ul li").removeClass("active");
            $("#nav_ul li").eq(2).addClass("active");
            $("#perfect_info").slideUp("slow");
            $("#confirmation").show();
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
            var telnum = $("#tel_num").val();
            var regex = /^1[34578]\d{9}$/;
            if(!regex.test(telnum)){
                openDialog4();
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
        function openDialog4(){
            $("#dd4").show();
            $("#dd4").dialog({
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
                            $('#dd4').dialog('close');
                        }
                    }
                ]
            });
        }
        //ajax上传表单
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
                    submitCompleted();
                }
            }
        }
        //申请退档
        function applyReverse(){
            $.messager.confirm("申请退档","你确定申请退档吗？",function(data){
                if(data){
                    //如果点击确定，就执行退档操作，访问退档链接

                }
            });
        }
        //确认就读
        function confirmationStudy(){

        }
        //页面加载好-事件
        $(document).ready(function(){
            $("#tel_num").tooltip({
                show: {
                    effect: "slideDown",
                    delay: 250
                }
            });
            $("#pic").tooltip({
                show: {
                    effect: "slideDown",
                    delay: 250
                }
            });
            $("#changeMajor").tooltip({
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
            <div style="background-image: url('img/loading.gif');background-repeat: no-repeat;background-size: 100% 100%;width: 50px;height: 50px;display: inline-block">

            </div>
        </div>
    </div>
    <div class="head"></div>
    <div class="easyui-layout" style="width: 100%;height: 549px;position:relative;margin: 0px">
        <div region="west" split="true" title="步骤" style="width: 150px">
            <ul id="nav_ul" class="nav nav-pills nav-stacked">
                <li class="active"><a>1.阅读注意事项</a></li>
                <li><a>2.完善个人信息</a></li>
                <li><a>3.确认投档信息</a></li>
            </ul>
        </div>
        <div id="content" region="center" title="操作面板" style="padding:0px;">
            <div id="attentions" style="width: 100%;height: 100%;padding: 10px">
                <p class="text-center" style="font-size: 30px">考生操作注意事项</p>
                <p class="text-justify" style="font-size: 15px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎各位同学报考南华大学船山学院！
                </p>
                <p class="text-justify" style="font-size: 15px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;南华大学船山学院是湖南省人民政府于2001年
                    8月批准，国家教育部2004年首批确认，由南华大学按新机制、新模式举办的全日制本科独立学院。学院
                    座落在著名的哲学家、思想家王船山的故乡——湖南省衡阳市，交通便捷，环境优美，是读书治学的理想
                    园地。学校秉承“以人为本，质量立校，文化育人，能力立身”的办学理念，弘扬南华大学“明德、博学
                    、求是、致远”的校训，依托南华大学雄厚的师资力量和优质的教学资源，采用全新的模式和机制，科学
                    定位，特色办学，“依托母体”与“错位发展”并举，致力于培养科文兼备、具有国际视野、本领过硬的
                    高级学术型人才，为区域经济社会发展服务。
                </p>
                <p class="text-justify" style="font-size: 15px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为了提高招生工作效率，南华大学船山学院招
                    生就业科何老师于2016年6月份首次提出“招生工作信息化、自动化”，并成立了由南华大学船山学院与
                    南华大学计算机科学与技术学院的同学一同组成的项目组，经过不懈地努力和奋斗，我项目组独立自主设
                    计并开发此网站，以便于各位考生能方便快捷地确认自己的投档信息。以下则是各位同学操作本系统时需
                    要注意的事项。
                </p>
                <p class="text-justify text-danger" style="font-size: 15px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.本网站为专业确认网站，请认真填读！
                </p>
                <p class="text-justify text-danger" style="font-size: 15px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.南华大学船山学院地址：湖南省衡阳市常胜西路28号
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系电话：0734-8160763
                </p>
                <p class="text-justify text-danger" style="font-size: 15px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.完善个人信息需要上传个人身份证的正面照，
                    身份证正面照是把身份证的正面拍一张照片，要求图片清晰易识别，照片文件格式仅限于.jpg .jpeg .png
                    三种之间的一种，照片文件的大小不得大于2MB。
                </p>
                <p class="text-justify text-danger" style="font-size: 15px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.完善个人信息还需要提交一个自己或家长近期
                    正在使用并保证能接通的手机号码，以便于及时接受学校的短信、语音等信息。
                </p>
                <p class="text-justify text-danger" style="font-size: 15px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.欲就读预录专业的同学，请在确认投档信息时
                    直接点击“确认就读”。
                </p>
                <p class="text-justify text-danger" style="font-size: 15px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.不想就读预录专业，欲更换专业仍就读我校的
                    同学，请先点击“确认就读”，然后联系南华大学船山学院招生就业科，按照老师的指示准备好相应材料来
                    我校办理相关事务。
                </p>
                <p class="text-justify text-danger" style="font-size: 15px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7.不想就读预录专业，并且想退档的同学，在
                    点击“申请退档”操作成功之后，请立即联系南华大学船山学院招生就业科，按照老师的指示准备好相应
                    材料来我校办理相关事务，不然将导致退档操作失败，所造成的一切后果本校不承担任何责任。
                </p>
                <div style="width: 100%; height: 100px;margin :10px;text-align: center;display: table">
                    <div style="font-size: 15px;display: table-cell;vertical-align: middle">
                        <strong>我已经仔细阅读以上注意事项</strong>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input id="isRead" name="isRead" type="checkbox" onclick="verifyIsRead()">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <button id="btn_next" type="button" class="btn btn-primary disabled" onclick="nextPanel()">下一步</button>
                    </div>
                </div>
            </div>
            <div id="perfect_info" style="width: 100%;height: 100%;padding: 10px;display: none">
                <div class="my_container">
                    <div style="width: 100%;height: 100px;line-height: 100px">
                        <div style="text-align: center;vertical-align: middle;font-size: 30px">完善个人信息</div>
                    </div>
                    <div style="width: 100%;height: 400px">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="pic" class="col-sm-3 control-label">身份证正面照:</label>
                                <div class="image col-sm-5">
                                    <img id="id_picture" style="width:100%;height:100%" src="img/timg.jpg">
                                </div>
                                <input id="pic" name="pic" type="file" style="position: relative;top: 127px" class="col-sm-2" onchange="preview(this)"
                                        title="身份证正面照是把身份证的正面拍一张照片，要求图片清晰易识别，照片文件格式仅限于.jpg .jpeg .png三种之间的一种，照片文件的大小不得大于2MB。">
                            </div>
                            <div class="form-group">
                                <label for="tel_num" class="col-sm-3 control-label">手机号码：</label>
                                <input id="tel_num" name="tel_num" class="col-sm-3" style="position: absolute;margin-left: 15px;padding-left: 0px"
                                        title="近期正在使用并保证能接通的手机号码，以便于及时接受学校的短信、语音等信息。">
                            </div>
                        </form>
                        <div style="width: 100%;height: 100px;line-height: 100px">
                            <div style="text-align: center;vertical-align: middle">
                                <button class="btn btn-primary btn-sm" onclick="upload()">提交</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="confirmation" style="width: 100%;height: 100%;padding: 10px;display: none">
                <div class="info_container">
                    <table class="table table-bordered">
                        <caption style="text-align: center;font-size: 25px;color: black;font-weight: bold">确认信息表</caption>
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
                                <td>录取状态</td>
                                <td>未开始</td>
                            </tr>
                        </tbody>
                    </table>
                    <div style="width: 100%;height: 100px;line-height: 100px">
                        <div style="text-align: center;vertical-align: middle;">
                            <button class="btn btn-success btn-sm" style="margin: 10px" onclick="confirmationStudy()">确认就读</button>
                            <button id="changeMajor" class="btn btn-info btn-sm disabled" style="margin: 10px"
                                    title="请先点击“确认就读”，然后联系南华大学船山学院招生就业科，按照老师的指示准备好相应材料来我校办理相关事务。">更换专业</button>
                            <button class="btn btn-danger btn-sm" style="margin: 10px" onclick="applyReverse()">申请退档</button>
                        </div>
                    </div>
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
    <div id="dd4" style="width:300px;height:150px;display: none">
        手机号码格式不正确！
    </div>
</body>
</html>