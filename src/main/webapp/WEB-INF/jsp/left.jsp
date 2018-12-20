<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/13
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>导航</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<div style="font-size: medium;color: lightgray;background-color: #5bc0de;margin-top: 10px;width: 60px">导航一</div>
<div class="tjskl-sidebar">
    <ul class="tj_submain" style="margin-top: 20px">

        <li onMouseOut="do_list_row_unshow(this);" onMouseOver="do_list_row_show(this);">
            <a href="#" target="right_content"><p style="color: #5bc0de;font-size: large">商品管理</p></a>
        </li>
        <li onMouseOut="do_list_row_unshow(this);" onMouseOver="do_list_row_show(this);">
            <a href="#" target="right_content"><p style="color: #5bc0de;font-size: large">购物车管理</p></a>

        </li>
        <li onMouseOut="do_list_row_unshow(this);" onMouseOver="do_list_row_show(this);">
            <a href="#" target="right_content"><p style="color: #5bc0de;font-size: large">订单管理</p></a>

        </li>
        <li onMouseOut="do_list_row_unshow(this);" onMouseOver="do_list_row_show(this);">
            <a href="index" target="right_content"><p style="color: #5bc0de;font-size: large">资讯管理</p></a>
        </li>
    </ul>
</div>
<div style="margin-left: 27px;margin-top: 20px">
    <div> <img src="img/wb.jpg" width="60px" height="60px"></div>
    <div>微博二维码</div>
</div>
<%--<div style="margin-left: 27px;margin-top: 10px">
    <div> <img src="img/zm.jpg" width="50px" height="50px"></div>
    <div>掌盟二维码</div>
</div>--%>
</body>
</html>
