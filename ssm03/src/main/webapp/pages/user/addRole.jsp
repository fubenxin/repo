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
    <!-- 页面头部/ -->

    <!-- 导航侧栏 -->
    <jsp:include page="${pageContext.request.contextPath}/pages/aside.jsp"></jsp:include>
    <!-- 导航侧栏/ -->

    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                用户管理
                <small>用户角色</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/index.jsp"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="${pageContext.request.contextPath}/user/list">用户管理</a></li>
                <li class="active">用户角色</li>
            </ol>
        </section>
        <!-- 内容头部 /-->
        <form action="${pageContext.request.contextPath}/user/addRoleSave" method="post">
            <!-- 正文区域 -->
            <section class="content">
                <input type="hidden" name="userId" value="${user.id}">
                <table id="dataList"
                       class="table table-bordered table-striped table-hover dataTable">
                    <thead>
                    <tr>
                        <th class="" style="padding-right: 0px">
                            <input id="selall"
                                   type="checkbox" class="icheckbox_square-blue"></th>
                        <th class="sorting_asc">ID</th>
                        <th class="sorting">角色名称</th>
                        <th class="sorting">角色描述</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${roleList}" var="role">
                        <tr>
                            <td>

                                <input name="ids" type="checkbox" value="${role.id}">

                            </td>
                            <td>${role.id}</td>
                            <td>${role.roleName }</td>
                            <td>${role.roleDesc}</td>

                        </tr>
                    </c:forEach>
                    </tbody>

                </table>
                <!--订单信息/-->


                <!--工具栏-->
                <div class="box-tools text-center">
                    <button type="submit" class="btn bg-maroon">保存</button>
                    <button type="button" class="btn bg-default" onclick="history.back(-1);">返回</button>
                </div>
                <!--工具栏/-->

            </section>
            <!-- 正文区域 /-->
        </form>
    </div>
    <!-- 内容区域/ -->

    <!-- 底部导航 -->
    <jsp:include page="${pageContext.request.contextPath}/pages/footer.jsp"></jsp:include>
    <!-- 底部导航/ -->

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

        // 激活导航位置
        setSidebarActive("admin-datalist");

        // 列表按钮
        $("#dataList td input[type='checkbox']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });
        // 全选操作
        $("#selall").click(function () {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList td input[type='checkbox']").iCheck("check");
            }
            $(this).data("clicks", !clicks);
        });
    });
</script>
</body>

</html>
