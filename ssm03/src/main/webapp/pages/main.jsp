<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <!-- 页面头部 /-->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- 导航侧栏 /-->
    <jsp:include page="aside.jsp"></jsp:include>
    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                控制面板
                <small>首页</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="all-admin-index.html"><i class="fa fa-dashboard"></i> 首页</a></li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">


            <!-- 统计数值 -->
            <div class="row">
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-aqua">
                        <div class="inner">
                            <h3>150</h3>

                            <p>新订单</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                        <a href="all-order-manage-list.html" class="small-box-footer">详细 <i
                                class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-green">
                        <div class="inner">
                            <h3>53<sup style="font-size: 20px">%</sup></h3>

                            <p>转化率</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="all-ad-statistics-list.html" class="small-box-footer">详细 <i
                                class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-yellow">
                        <div class="inner">
                            <h3>44</h3>

                            <p>新注册用户</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person-add"></i>
                        </div>
                        <a href="all-member-manage-list.html" class="small-box-footer">详细 <i
                                class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h3>65</h3>

                            <p>日PV</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-pie-graph"></i>
                        </div>
                        <a href="all-ad-statistics-list.html" class="small-box-footer">详细 <i
                                class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
            </div>
            <!-- /.row -->


            <!-- 待处理订单 -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <i class="fa fa-cube"></i>
                    <h3 class="box-title">待处理订单</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--数据列表-->
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="">订单号</th>
                                <th class="">产品名称</th>
                                <th class="">会员</th>
                                <th class="">价格</th>
                                <th class="">状态</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td>2017020200001</td>
                                <td>西安3日自由行·超级自由行</td>
                                <td>bi'peng0405</td>
                                <td>￥500</td>
                                <td>已取消</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs"
                                            onclick='location.href="all-product-line-edit.html"'>编辑
                                    </button>
                                </td>
                            </tr>

                            <tr>
                                <td>2017020200001</td>
                                <td>西安3日自由行·超级自由行</td>
                                <td>bi'peng0405</td>
                                <td>￥500</td>
                                <td>已出团(待点评)</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs"
                                            onclick='location.href="all-product-line-edit.html"'>编辑
                                    </button>
                                </td>
                            </tr>

                            <tr>
                                <td>2017020200001</td>
                                <td>西安3日自由行·超级自由行</td>
                                <td>bi'peng0405</td>
                                <td>￥500</td>
                                <td>已处理(待付款)</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs"
                                            onclick='location.href="all-product-line-edit.html"'>编辑
                                    </button>
                                </td>
                            </tr>

                            <tr>
                                <td>2017020200001</td>
                                <td>西安3日自由行·超级自由行</td>
                                <td>bi'peng0405</td>
                                <td>￥500</td>
                                <td>已处理(待出团)</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs"
                                            onclick='location.href="all-product-line-edit.html"'>编辑
                                    </button>
                                </td>
                            </tr>

                            <tr>
                                <td>2017020200001</td>
                                <td>西安3日自由行·超级自由行</td>
                                <td>bi'peng0405</td>
                                <td>￥500</td>
                                <td>已取消</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs"
                                            onclick='location.href="all-product-line-edit.html"'>编辑
                                    </button>
                                </td>
                            </tr>

                            <tr>
                                <td>2017020200001</td>
                                <td>西安3日自由行·超级自由行</td>
                                <td>bi'peng0405</td>
                                <td>￥500</td>
                                <td>已取消</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs"
                                            onclick='location.href="all-product-line-edit.html"'>编辑
                                    </button>
                                </td>
                            </tr>

                            </tbody>
                        </table>
                        <!--数据列表/-->

                    </div>
                    <!-- 数据表格 /-->

                </div>
                <!-- /.box-body -->

            </div>
            <!-- 待处理订单 /-->

            <!-- 待处理游记 -->
            <div class="box box-success">
                <div class="box-header with-border">
                    <i class="fa fa-book"></i>
                    <h3 class="box-title">待处理游记</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--数据列表-->
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="">会员昵称</th>
                                <th class="">游记标题</th>
                                <th class="">发布时间</th>
                                <th class="">状态</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>待审核</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs"
                                            onclick='location.href="all-travellog-manage-edit.html"'>编辑
                                    </button>
                                </td>
                            </tr>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>已发布</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs"
                                            onclick='location.href="all-travellog-manage-edit.html"'>编辑
                                    </button>
                                </td>
                            </tr>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>待审核</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs"
                                            onclick='location.href="all-travellog-manage-edit.html"'>编辑
                                    </button>
                                </td>
                            </tr>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>待审核</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs"
                                            onclick='location.href="all-travellog-manage-edit.html"'>编辑
                                    </button>
                                </td>
                            </tr>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>待审核</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs"
                                            onclick='location.href="all-travellog-manage-edit.html"'>编辑
                                    </button>
                                </td>
                            </tr>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>待审核</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs"
                                            onclick='location.href="all-travellog-manage-edit.html"'>编辑
                                    </button>
                                </td>
                            </tr>


                            </tbody>
                        </table>
                        <!--数据列表/-->

                    </div>
                    <!-- 数据表格 /-->

                </div>
                <!-- /.box-body -->

            </div>
            <!-- 待处理游记 /-->

        </section>
        <!-- 正文区域 /-->

    </div>
    <!-- 内容区域 /-->
    <!-- 底部导航 /-->
    <jsp:include page="footer.jsp"></jsp:include>
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
        setSidebarActive("admin-index");
    });
</script>
</body>
</html>