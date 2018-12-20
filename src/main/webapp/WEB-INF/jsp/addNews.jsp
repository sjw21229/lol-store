<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>AddStudent</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <%--表格控件css--%>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">
    <%--时间控件css--%>
    <link rel="stylesheet"
          href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <!--<script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>-->
    <!--[endif]-->

</head>
<body style="align-content: center ;background: #dff0d8" >
<div class="col-lg-offset-4" style="font-size: xx-large;color: silver">新增商品</div>
<div class="container">
    <form action="addNews" method="post" class="form-horizontal" enctype="multipart/form-data">
        <div class="form-group form-group-lg">
            <label for="inputSuccess2" class="col-lg-2" style="font-size: x-large;color: #d43f3a">商品名称</label>
            <div class="col-lg-6">
                <input type="text" class="form-control" id="inputSuccess2" aria-describedby="inputSuccess2Status" name="pname" placeholder="商品名称">
                <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
            </div>
        </div>
        <div class="form-group form-group-lg">
            <label for="exampleInputmarketPrice" class="col-lg-2" style="font-size: x-large;color: #d9534f">价格</label>
            <div class="col-lg-6">
                <input type="text" class="form-control" id="exampleInputmarketPrice" name="price" placeholder="价格">
                <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
            </div>
        </div>
        <div class="form-group form-group-lg">
            <label for="exampleInputshopPrice" class="col-lg-2" style="font-size: x-large;color: deeppink">更新时间</label>
            <div class="col-lg-6">
                <input type="text" class="form-control" id="exampleInputshopPrice" name="updataStamp" placeholder="上架时间">
                <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
            </div>
        </div>
        <fieldset class="form-group">
            <label class="control-label">分类</label>
            <div class="form-check">
                <label class="form-check-label">
                    <input class="form-check-input" type="radio" name="category" value="roost">上架
                </label>
                <label class="form-check-label">
                    <input class="form-check-input" type="radio" name="category" value="drop" style="margin-left: 50px">下架
                </label>
            </div>
        </fieldset>
        <div class="form-group form-group-lg">
            <label for="pdesc" class="control-label" style="color: red">详细介绍</label>
            <input type="text" class="form-control" id="pdesc" name="pdesc"></input>
        </div>
        <div class="form-group">
            <label for="exampleInputFile" style="font-size: x-large;color: #888888">添加照片</label>
            <input type="file" id="exampleInputFile" name="file">
            <p class="help-block">Do not fold as default</p>
        </div>
        <div style="align-content: center" class="col-lg-offset-4">
            <button type="submit" class="btn btn-success" style="align-content: center">添加</button>
            <button type="reset" class="btn btn-primary" style="align-content: center">重置</button>
        </div>
    </form>
</div>

<!--jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
<%--bootstrap-table中文库--%>
<script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>
<%--时间控件js--%>
<script src="https://cdn.bootcss.com/moment.js/2.18.1/moment-with-locales.min.js"></script>
<%--时间控件库--%>
<script src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
</body>
</html>