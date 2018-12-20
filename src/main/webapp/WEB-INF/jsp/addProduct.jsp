<!DOCTYPE html>
<%@page pageEncoding="utf-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>添加商品</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>

        div{
            float: none;
            display: block;
            margin-left: auto;
            margin-right: auto;
            padding-top: 27px;
        }

    </style>
</head>
<body >
<div class="container" style="padding: 100px 100px 10px;">
    <table class="table table-condensed" style="text-align: center;font-size: 25px">
        <h1 style="text-align: center">添加商品</h1>
        <form class="bs-example bs-example-form" role="form" action="addProduct" method="post">
            <tbody>
            <tr>
                <td style="height: 100px">
                    <div class="input-group" style="width: 500px" >
                        <span class="input-group-addon" >商品名称</span>
                        <input  type="text" class="form-control" placeholder="例如：魄罗公仔" name="pname">
                    </div>
                </td>
            </tr>
            <tr>
                <td style="height: 100px;line-height: 100px">
                    <div class="input-group" style="width: 500px">
                        <span class="input-group-addon">商品价格</span>
                        <input type="text" class="form-control" placeholder="例如：150" name="price">
                    </div>
                </td>
            </tr>
            <tr>
                <td style="height: 100px;line-height: 100px">
                    <div class="input-group" style="width: 500px">
                        <span class="input-group-addon">商品库存</span>
                        <input type="text" class="form-control" placeholder="例如：500" name="number">
                    </div>
                </td>
            </tr>
            <tr style="display: none">
                <td style="height: 100px;line-height: 100px">
                    <%--<img style="height: 150px;width: 150px" src="img/1/timg.jpg">--%>
                    <input type="text" value="1/timg.jpg" name="pimage">
                </td>
            </tr>
            <tr>
                <td style="height: 100px;line-height: 100px">
                    商品分类:<input type="radio" name="cid" value="1" />雕塑手办
                            <input type="radio" name="cid" value="2" />毛绒玩具
                            <input type="radio" name="cid" value="3" />男女服饰
                            <input type="radio" name="cid" value="4" />珠宝首饰
                </td>
            </tr>
            <tr>
                <td>
                    <a><button type="submit" class="btn btn-success btn-lg btn-block">
                        确认添加商品
                    </button></a>
                </td>
            </tr>
            </tbody>
        </form>
        <tr>
            <td>
                <button  onclick="window.location.href='showAllProduct'" class="btn btn-primary btn-lg btn-block">
                    放弃添加
                </button></a>
            </td>
        </tr>
    </table>

</div>
</body>
</html>