<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <!-- Main CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <%--表格控件css--%>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">
    <%--时间控件css--%>
    <link rel="stylesheet"
          href="https://cdn.bootcss.com/bootstrap	-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
</head>
<body>
<table id="table" class="table-striped " style="text-align: center"></table>
<%--jquery库--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%--bootstrap库--%>
<script src="js/bootstrap.min.js"></script>
<%--bootstrap-table库--%>
<script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
<%--bootstrap-table中文库--%>
<script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>
<%--时间控件js--%>
<script src="https://cdn.bootcss.com/moment.js/2.18.1/moment-with-locales.min.js"></script>
<%--时间控件库--%>
<script src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

<script>
    $(function AddFunction() {
        return[
            '<button id="TableEditor" type="button" class="byn btn-default">修改</button>;',
            '<button id="TableDelete" type="button" class="byn btn-default">删除</button>;'
        ].join("")
    })
    window.opertEvents = {
      "click #TableEditor":function () {
          
      },
      "click #TableDelete":function () {
          
      }
    }
    $(function(){
        //初始化表格
        $('#table').bootstrapTable({
            //表格属性
            url:'listProducts',
            columns:[{
                checkbox: true
            },{
                //列属性
                field:'pid',
                title:'序号',
                align:'center'
            },{
                field:'pname',
                title:'商品名称',
                align:'center'
            },{
                field:'price',
                title:'商品价格',
                align:'center'
            },{
                field:'pimage',
                title:'商品图片',
                align:'center'
            },{
                field:'number',
                title:'商品库存',
                align:'center'
            },{
                field:'cid',
                title:'商品分类',
                align:'center'
            },{
                field:'Button',
                title:'操作',
                align:'center',
                formatter: AddButton,
                events: opertEvents

            }],
            method:'post',
            search: true,
            searchOnEnterKey: true,
            pageNumber: 1,
            pageSize: 5,
            pagination: true,
            sidePagination: 'server'
        });
    });
</script>
</body>
</html>
