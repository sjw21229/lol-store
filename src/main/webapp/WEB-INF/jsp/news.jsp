<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>news</title>
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <%--表格控件css--%>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">
    <%--时间控件css--%>
    <link rel="stylesheet"
          href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
</head>
<body>
<div id="toolbar">
    <div class="btn-success">
    <button class="btn-success" type="button" onclick="location.href='toAdd'">
        增加商品
    </button>
    </div>
</div>
<table id="table" class="table" data-toolbar="#toolbar">

</table>


<div class="modal fade" id="editModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel" style="color: #dbdbdb">信息</h4>
            </div>
            <div class="modal-body">
                <form action="edit" method="post" class="form-horizontal" id="editForm" >
                    <input type="hidden" name="wid" name="wid">
                    <input type="hidden" name="pimage" name="pimage">
                    <div class="form-group">
                        <label for="name" class="control-label" style="color: #d43f3a">商品名称</label>
                        <input type="text" class="form-control" id="name" name="pname">
                    </div>
                    <div class="form-group">
                        <label for="text" class="control-label" style="color: red">价格</label>
                        <input type="text" class="form-control" id="text" name="price"></input>
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
                    <div class="form-group">
                        <label for="text" class="control-label" style="color: red">详细介绍</label>
                        <input type="text" class="form-control" id="pdesc" name="pdesc"></input>
                    </div>
                    <div class="form-group">
                        <label for="text" class="control-label" style="color: red">更新时间</label>
                        <input type="text" class="form-control" id="updataStamp" name="updataStamp"></input>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
                        <button type="submit" class="btn btn-primary">提交</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
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
    $(function(){
        function addOperateButton(){
            return [
                '<button id="btnDelete" class="btn-danger">删除</button>&nbsp;&nbsp;',
                '<button id="btnEdit" class="btn_primary">修改</button>'
            ].join("");
        };
        window.operateEvents={
            "click #btnDelete" : function (e,value,row,index) {
                $.post(
                    'delete/'+row.wid,
                    function (data) {
                        if(data >0){
                            $('#table').bootstrapTable(('refresh'),{pageNumber:1});
                        }

                    },
                    "json"
                );
            },
            "click #btnEdit" : function (e,value,row,index) {
                $.get(
                    'toEdit/'+row.wid,
                    function(data){
                        console.log(typeof data)
                        $('#editForm [name=pname]').val(data.pname);
                        $('#editForm [name=wid]').val(data.wid);
                        $('#editForm [name=price]').val(data.price);
                        $('#editForm [name=pdesc]').val(data.pdesc);
                        $('#editForm [name=pimage]').val(data.pimage);
                        $('#editForm [name=updataStamp]').val(data.updataStamp);
                    },
                    "json"
                );
                var dialog=$('#editModal').modal({
                    backdrop:'static',
                    keyboard:'false'
                });
                dialog.modal('show');

            }
        };
        //初始化表格
        $('#table').bootstrapTable({

            url:'list',
            columns:[{
                checkbox: true
            },{
                //列属性
                field:'wid',
                title:'编号'
            },{
                field:'pimage',
                title:'参照物',
                formatter:function(value,row,index){
                    return'<img  src="${pageContext.request.contextPath}/img/'+value+'" class="img-rounded" style="width: 100px;height: 80px" >';
                    }

            },{
                field:'pname',
                title:'品名'
            },{
                field:'price',
                title:'价格'
            },{
                field:'category',
                title:'分类'
            },{
                field:'pdesc',
                title:'介绍'
            },{
                field:'button',
                title:'执行',
                formatter:addOperateButton,
                events:'operateEvents'
            }],
            method:'post',
            search: true,
            searchOnEnterKey: true,
            pageNumber: 1,
            pageSize: 4,
            pageList:[2,4,5,10],
            paginationPreText:"上一页",
            paginationNextText:"下一页",
            pagination: true,
            sidePagination: 'server'

        });
    });
</script>
</body>
</html>
