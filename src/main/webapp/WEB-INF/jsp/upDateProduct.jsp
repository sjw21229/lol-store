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
        <h1 style="text-align: center">修改商品</h1>
        <form class="bs-example bs-example-form" role="form" action="upDateProduct" method="get">
            <tbody>
            <tr style="display: none">
                <td>
                    商品序号<input name="pid" value="${product.pid}">
                </td>
            </tr>
            <tr>
                <td style="height: 100px">
                    <div class="input-group" style="width: 500px" >
                        <span class="input-group-addon" >商品名称</span>
                        <input  type="text" class="form-control" name="pname" value="${product.pname}">
                    </div>
                </td>
            </tr>
            <tr>
                <td style="height: 100px;line-height: 100px">
                    <div class="input-group" style="width: 500px">
                        <span class="input-group-addon">商品价格</span>
                        <input type="text" class="form-control" name="price" value="${product.price}">
                    </div>
                </td>
            </tr>
            <tr>
                <td style="height: 100px;line-height: 100px">
                    <div class="input-group" style="width: 500px">
                        <span class="input-group-addon">商品库存</span>
                        <input type="text" class="form-control" name="number"value="${product.number}">
                    </div>
                </td>
            </tr>
            <tr >
                <td style="height: 100px;line-height: 100px">
                    <img width="100px"height="100px" src="${pageContext.request.contextPath }/img/${product.pimage}">
                    <input style="display: none" type="text" value="${product.pimage}" name="pimage">
                </td>
            </tr>
            <tr>
                <td style="height: 100px;line-height: 100px">
                    商品分类:<input type="radio" name="cid" value="1" />雕塑手办
                    <input class="sle" type="radio" name="cid" value="2" />毛绒玩具
                    <input class="sle" type="radio" name="cid" value="3" />男女服饰
                    <input class="sle" type="radio" name="cid" value="4" />珠宝首饰
                </td>
            </tr>
            <tr>
                <td>
                    <a ><button type="submit" class="btn btn-success btn-lg btn-block">
                        确认修改商品
                    </button></a>
                </td>
            </tr>
            </tbody>
        </form>
        <tr>
            <td>
                <a href="../showAllProduct"><button  class="btn btn-primary btn-lg btn-block">
                    放弃修改
                </button></a>
            </td>
        </tr>
    </table>
</div>
<script>
    var sel=document.getElementsByClassName("sle");
    for (var i=0;i<sel.length;i++){
        if (sel[i].value==${product.cid}) {
            sel[i].checked=true;
            break;
        }
    }
</script>
</body>
</html>