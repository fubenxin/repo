<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <title>数据 - AdminLTE2定制版</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">


    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="${pageContext.request.contextPath}/pages/header.jsp"></jsp:include>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <jsp:include page="${pageContext.request.contextPath}/pages/aside.jsp"></jsp:include>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <!-- @@master = admin-layout.html-->
    <!-- @@block = content -->

    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                用户管理
                <small>用户详情</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/index.jsp"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="${pageContext.request.contextPath}/user/list">用户管理</a></li>
                <li class="active">用户详情</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <!--订单信息-->
            <div class="panel panel-default">
                <div class="panel-heading">用户详情</div>
                <div class="row data-type">

                    <div class="col-md-2 title">ID</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="ID" value="${user.id}">
                    </div>

                    <div class="col-md-2 title">用户名称</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="用户名称" value="${user.username}">
                    </div>

                    <div class="col-md-2 title">密码</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="密码" value="${user.password}">
                    </div>

                    <div class="col-md-2 title">邮箱</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="邮箱" value="${user.email}">
                    </div>

                    <div class="col-md-2 title">手机号</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="手机号" value="${user.phoneNum}">
                    </div>

                    <div class="col-md-2 title">状态</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="状态" value="${user.statusStr}">
                    </div>

                </div>
            </div>
            <!--订单信息/-->

            <!--游客信息-->
            <div class="panel panel-default">
                <div class="panel-heading">角色->权限</div>
                <!--数据列表-->
                <div class="tab-pane" id="tab-treetable">
                    <table id="collapse-table"
                           class="table table-bordered table-hover dataTable">
                        <thead>
                        <tr>
                            <th>名称</th>
                            <th>描述</th>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach items="${user.roles}" var="role" varStatus="roleStat">
                            <tr data-tt-id="${roleStat.count}">
                                <td>${role.roleName }</td>
                                <td>${role.roleDesc }</td>
                            </tr>
                            <c:forEach items="${role.permissions}" var="permission" varStatus="permissionStat">
                                <tr data-tt-id="${roleStat.count}-${permissionStat.count}"
                                    data-tt-parent-id="${roleStat.count}">
                                    <td>${permission.permissionName}</td>
                                    <td>${permission.url}</td>
                                </tr>

                            </c:forEach>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <!--数据列表/-->
            </div>
            <!--游客信息/-->

        </section>
        <!-- 正文区域 /-->

    </div>
    <!-- @@close -->
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <jsp:include page="${pageContext.request.contextPath}/pages/footer.jsp"></jsp:include>
    <!-- 底部导航 /-->

</div>


<script>
    $(document).ready(function () {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
    });


    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }


    $(document).ready(function () {

        // 颜色选取器
        $(".my-colorpicker1").colorpicker();
        $(".my-colorpicker2").colorpicker();

    });


    $(document).ready(function () {
        // 选择框
        $(".select2").select2();
    });


    $(document).ready(function () {

        //Date picker
        $('#datepicker').datepicker({
            autoclose: true,
            language: 'zh-CN'
        });

        // datetime picker
        $('#dateTimePicker').datetimepicker({
            format: "mm/dd/yyyy - hh:ii",
            autoclose: true,
            todayBtn: true,
            language: 'zh-CN'
        });

        //Date range picker
        $('#reservation').daterangepicker({
            locale: {
                applyLabel: '确认',
                cancelLabel: '取消',
                fromLabel: '起始时间',
                toLabel: '结束时间',
                customRangeLabel: '自定义',
                firstDay: 1
            },
            opens: 'left', // 日期选择框的弹出位置
            separator: ' 至 '
            //showWeekNumbers : true,     // 是否显示第几周
        });

        //Date range picker with time picker
        $('#reservationtime').daterangepicker({
            timePicker: true,
            timePickerIncrement: 30,
            format: 'MM/DD/YYYY h:mm A',
            locale: {
                applyLabel: '确认',
                cancelLabel: '取消',
                fromLabel: '起始时间',
                toLabel: '结束时间',
                customRangeLabel: '自定义',
                firstDay: 1
            },
            opens: 'right', // 日期选择框的弹出位置
            separator: ' 至 '
        });

        //Date range as a button
        $('#daterange-btn').daterangepicker({
                locale: {
                    applyLabel: '确认',
                    cancelLabel: '取消',
                    fromLabel: '起始时间',
                    toLabel: '结束时间',
                    customRangeLabel: '自定义',
                    firstDay: 1
                },
                opens: 'right', // 日期选择框的弹出位置
                separator: ' 至 ',
                ranges: {
                    '今日': [moment(), moment()],
                    '昨日': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    '最近7日': [moment().subtract(6, 'days'), moment()],
                    '最近30日': [moment().subtract(29, 'days'), moment()],
                    '本月': [moment().startOf('month'), moment().endOf('month')],
                    '上个月': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                startDate: moment().subtract(29, 'days'),
                endDate: moment()
            },
            function (start, end) {
                $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            }
        );

    });


    $(document).ready(function () {

        /*table tree*/
        $("#collapse-table").treetable({
            expandable: true
        });

    });


    $(document).ready(function () {

        CKEDITOR.replace('editor1');

        // $(".textarea").wysihtml5({
        //     locale:'zh-CN'
        // });

        $("#markdown-textarea").markdown({
            language: 'zh',
            autofocus: false,
            savable: false
        });

    });


    $(document).ready(function () {

        // 激活导航位置
        setSidebarActive("admin-dataform");

    });
</script>
</body>

</html>
