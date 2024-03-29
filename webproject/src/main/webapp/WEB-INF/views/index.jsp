<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>焦首页</title>
    <!-- 若您需要使用Kendo UI Professional，请联系版权人获得合法的授权或许可。 -->
    <!-- Bootstrap css -->
    <link href="https://magicbox.bk.tencent.com/static_api/v3/assets/bootstrap-3.3.4/css/bootstrap.min.css"
          rel="stylesheet">
    <!-- kendo ui css -->
    <link href="https://magicbox.bk.tencent.com/static_api/v3/assets/kendoui-2015.2.624/styles/kendo.common.min.css"
          rel="stylesheet">
    <link href="https://magicbox.bk.tencent.com/static_api/v3/assets/kendoui-2015.2.624/styles/kendo.default.min.css"
          rel="stylesheet">
    <!-- font-awesome -->
    <link href="https://magicbox.bk.tencent.com/static_api/v3/assets/fontawesome/css/font-awesome.css" rel="stylesheet">
    <!--蓝鲸提供的公用样式库 -->
    <link href="https://magicbox.bk.tencent.com/static_api/v3/bk/css/bk.css" rel="stylesheet">
    <link href="https://magicbox.bk.tencent.com/static_api/v3/bk/css/bk_pack.css" rel="stylesheet">
    <!-- 如果要使用Bootstrap的js插件，必须先调入jQuery -->
    <script src="https://magicbox.bk.tencent.com/static_api/v3/assets/js/jquery-1.10.2.min.js"></script>
    <!-- 包括所有bootstrap的js插件或者可以根据需要使用的js插件调用　-->
    <script src="https://magicbox.bk.tencent.com/static_api/v3/assets/echarts-2.0/echarts-all.js"></script>
    <script src="https://magicbox.bk.tencent.com/static_api/v3/assets/bootstrap-3.3.4/js/bootstrap.min.js"></script>
    <!-- 包括所有kendoui的js插件或者可以根据需要使用的js插件调用　-->
    <script src="https://magicbox.bk.tencent.com/static_api/v3/assets/kendoui-2015.2.624/js/kendo.all.min.js"></script>
    <script src="https://magicbox.bk.tencent.com/static_api/v3/assets/echarts-2.0/echarts-all.js"></script>
    <script src="https://magicbox.bk.tencent.com/static_api/v3/bk/js/bk.js"></script>
    <!-- 数据埋点统计 -->
    <script src="http://magicbox.bk.tencent.com/static_api/analysis.js"></script>

    <!-- 放到蓝鲸开发框架后，请引用csrftoken.js解决jquery下POST请求403问题，如果使用的是mako模板，可以直接去掉下面的注释 -->
    <!--script src="${STATIC_URL}js/csrftoken.js?v=${STATIC_VERSION}" type="text/javascript"></script-->
    <!-- 这个是全局配置，如果需要在js中使用app_id和site_url,则这个javascript片段一定要保留 -->
    <!--script type="text/javascript">
        var app_id = "${APP_ID}";
        var site_url = "${SITE_URL}";	  // app的url前缀,在ajax调用的时候，应该加上该前缀
        var static_url = "${STATIC_URL}"; // 静态资源前缀
    </script-->

    <!-- 以下两个插件用于在IE8以及以下版本浏览器支持HTML5元素和媒体查询，如果不需要用可以移除 -->
    <!--[if lt IE 9]><script src="https://magicbox.bk.tencent.com/static_api/v3/assets/js/html5shiv.min.js"></script><script src="https://magicbox.bk.tencent.com/static_api/v3/assets/js/respond.min.js"></script>
    <![endif]-->
    <style>
        .form-horizontal .control-label {
            padding-top: 7px;
            margin-bottom: 0;
            text-align: left;
        }
    </style>
</head>

<body class="bg-white" data-bg-color="bg-white">
<div class="king-page-box">
    <div class="king-layout1-header">
        <nav role="navigation" class="navbar navbar-default king-horizontal-nav2    f14 ">
            <div class="container " style="width:100%;overflow:hidden;">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed navbar-toggle-sm" data-toggle="collapse"
                            data-target="#king-horizontal-nav2-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="javascript:;">
                        <img src="https://magicbox.bk.tencent.com/static_api/v3/bk/images/logo3.png" alt=""
                             class="logo"> </a>
                </div>
                <div class="collapse navbar-collapse navbar-responsive-collapse" id="king-horizontal-nav2-collapse">
                    <ul class="nav navbar-nav">
                        <li class="king-navbar-active"><a href="javascript:void(0);">首页</a></li>
                        <li><a href="javascript:void(0);">执行记录</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="javascript:;">
                                <span>${sessionScope.BK_J_USER}</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div class="king-layout2-main mt15" style="width:960px;">
        <form class="form-horizontal">
            <div class="form-group clearfix ">
                <label class="col-sm-3 control-label bk-lh30 pt0">选择业务：</label>
                <div class="col-sm-9">
                    <select name="serviceName" id="serviceId" class="form-control bk-valign-top">
                        <option value="选择项1">选择项1</option>
                        <option value="选择项2">选择项2</option>
                        <option value="选择项3">选择项3</option>
                        <option value="选择项4">选择项4</option>
                    </select>
                </div>
            </div>
            <div class="form-group clearfix ">
                <label class="col-sm-3 control-label bk-lh30 pt0">任务类型：</label>
                <div class="col-sm-9">
                    <select name="workId" id="workId" class="form-control bk-valign-top">
                        <option value="选择项1">选择项1</option>
                        <option value="选择项2">选择项2</option>
                        <option value="选择项3">选择项3</option>
                        <option value="选择项4">选择项4</option>
                    </select>
                </div>
            </div>
            <div class="form-group clearfix ">
                <label class="col-sm-3 control-label bk-lh30 pt0">脚本参数：</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control bk-valign-top" id="" placeholder="请输入脚本参数"></div>
            </div>
            <div class="form-group clearfix">
                <div class="col-sm-9 col-sm-offset-3">
                    <button type="button" class="king-btn mr10  king-success">执行</button>
                </div>
            </div>
        </form>

        <div class="panel panel-default pannel-overflow panel-tables table7_demo">
            <div class="panel-heading"><i class="fa fa-list-ulx"></i> 主机列表
            </div>
            <div class="panel-content">
                <table class="table table-header-bg table-hover mb0" id="table_demo2">
                    <thead>
                    <tr>
                        <th style="width: 25px">
                            <input type="checkbox" name="checkall" value="">
                        </th>
                        <th style="width: 100px">序号</th>
                        <th style="width:25%">内网IP</th>
                        <th style="width:25%">操作系统</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>
                        <td>
                            <input type="checkbox" value="">
                        </td>
                        <td>1</td>
                        <td>192.168.0.1</td>
                        <td>CentOS7</td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" value="">
                        </td>
                        <td>2</td>
                        <td>192.168.0.1</td>
                        <td>CentOS7</td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" value="">
                        </td>
                        <td>3</td>
                        <td>192.168.0.1</td>
                        <td>CentOS7</td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" value="">
                        </td>
                        <td>4</td>
                        <td>192.168.0.1</td>
                        <td>CentOS7</td>
                    </tr>
                    </tbody>
                </table>

                <div><span id="username"></span></div>
            </div>
        </div>
        <!-- 设置面板End -->
    </div>
</div>

<script>
    function loadService() {
        $.ajax({
            method: 'GET',
            url: "${sessionScope.SITE_URL}",
            success: function(jData){
                console.log(jData);
                if(jData.code==0){
                    //$("[name='serviceName']").attr();
                }
            },
            dataType: "json",
            headers: {'Content-Type': 'application/json'}
        });
    }

    function loadUser() {
        $.ajax({
            method: 'GET',
            url: "${sessionScope.SITE_URL}rest/user/info/",
            success: function(result){
                console.log(result);
                if(result.code==0){
                    $("#username").html(result.data.chname);
                }
            },
            dataType: "json",
            headers: {'Content-Type': 'application/json'}
        });
    }

</script>




<script>
    $(function () {
        loadService();
        loadUser();

        $('#table_demo2').find('input[name="checkall"]').click(function () {
            var checked = $(this).prop('checked');
            $('#table_demo2>tbody input').prop('checked', checked);
        });
        $('#table_demo2').find(':checkbox').on('click', function () {
            if (!this.checked) {
                $('#table_demo2').find('input[name="checkall"]').prop('checked', false);
            }
        });
        $('#table_demo2').find('.glyphicon-remove').parent('button').click(function () {
            if (confirm('确定要删除？')) {
                $(this).closest('tr').remove();
            }
        });
        $('#deleteAll').click(function (event) {
            var records = $('#table_demo2>tbody input:checked').closest('tr');
            if (!records.length) {
                alert('请选择要删除的记录！');
                return false;
            }
            if (confirm('确定要删除？')) {
                records.remove();
            }
        });
    });
</script>
</body>

</html>