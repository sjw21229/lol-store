<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <%--表格控件css--%>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">
    <%--时间控件css--%>
    <link rel="stylesheet"
          href="https://cdn.bootcss.com/bootstrap	-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
</head>
<body style="height:780px;">
<div>
    <h1 style="text-align: center">商品后台管理系统</h1>
    <a href="toAddProduct" style="float: left"><button style="font-size: 20px">添加商品</button></a>
</div>
<table id="table" class="table"></table>
<div class="modal fade" id="editModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <%--模态框头部--%>
            <div class="modal-header">
                <h4 class="modal-title">修改商品</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <%--模态框主体--%>
            <div class="modal-body">
                <form id="editForm" action="upDateProduct" method="post">
                    <input type="hidden" name="pid"/>
                    <div class="form-group">
                        <label class="control-label">商品名称</label>
                        <input name="pname" class="form-control" type="text">
                    </div>
                    <div class="form-group">
                        <label class="control-label">商品价格</label>
                        <input class="form-control" type="text" name="price">
                    </div>
                    <div class="form-group">
                        <label class="control-label">商品库存</label>
                        <input class="form-control" type="text" name="number">
                    </div>
                    <input type="hidden" name="pimage"/>
                    <div class="form-group">
                        <label class="control-label">商品图片</label>
                        <img name="pimage" src="${pageContext.request.contextPath }/img/"+value width="200px">
                    </div>
                    <fieldset class="form-group">
                        <label class="control-label">分类</label>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="form-check-input" type="radio" name="cid"
                                       value="1">雕塑手办
                            </label>
                            <label class="form-check-label" style="margin-left: 50px">
                                <input class="form-check-input" type="radio" name="cid"
                                       value="2">毛绒玩具
                            </label>
                            <label class="form-check-label" style="margin-left: 50px">
                                <input class="form-check-input" type="radio" name="cid"
                                       value="3">男女服饰
                            </label>
                            <label class="form-check-label" style="margin-left: 50px">
                                <input class="form-check-input" type="radio" name="cid"
                                       value="4">珠宝首饰
                            </label>
                        </div>
                    </fieldset>
                    <div class="modal-footer">
                        <button id="btnEditCommit" type="submit" class="btn btn-primary">确认</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                    </div>
                </form>
            </div>
            <%--模态框底部--%>
        </div>
    </div>
</div>
<div class="modal fade" id="editModal1">
    <div class="modal-dialog">
        <div class="modal-content">
            <%--模态框头部--%>
            <div class="modal-header">
                <h4 class="modal-title">删除商品</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <%--模态框主体--%>
            <div class="modal-body">
                    <div class="form-group">
                        <h3 style="text-align: center">删除成功</h3>
                    </div>
                    <div class="modal-footer">
                        <button type="button" onclick="window.location.href='showAllProduct'" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                    </div>
            </div>
            <%--模态框底部--%>
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
        function AddButton() {
            return [
                '<button id="TableEditor" class="btn btn-primary">修改</button> &nbsp;&nbsp;&nbsp;&nbsp;',
                '<button id="TableDelete" class="btn btn-danger">删除</button>'
            ].join("");
        }
    window.opertEvents = {
      "click #TableEditor":function (e,v,r,i) {
          $.get(
              'toUpDateProduct/'+ r.pid,
              function (data) {
                  $('#editForm [name=pid]').val(data.pid);
                  $('#editForm [name=pname]').val(data.pname);
                  $('#editForm [name=price]').val(data.price);
                  $('#editForm [name=number]').val(data.number);
                  $('#editForm [name=pimage]').val(data.pimage);
                  $('#editForm [name=pimage]').attr("src","img/"+data.pimage);
                  $('#editForm [type=radio][value='+data.cid+']').attr('checked',true);
              },
              'json'
          );
          var d = $('#editModal').modal({
              backdrop:'static',
              keyboard: false
          });
          d.modal('show');
          // console.log(r)
          // window.location.href="toUpDateProduct/"+r.pid;
      },
      "click #TableDelete":function (e,v,r,i) {
          $.get(
              'deleteProduct/'+r.pid,
              function (data) {
                if (data>0){

                    var m = $('#editModal1').modal({
                        backdrop:'static',
                        keyboard: false
                    });
                    m.modal('show');
                }
              },
              'json'
          );

      }
    };
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
                align:'center',
                formatter: function(value,rows,index){
                    return '<img src="${pageContext.request.contextPath }/img/'+value+'" width="110px" class="img-rounded" >';
                }
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
            pageSize: 6,
            pagination: true,
            sidePagination: 'server'
        });
    });
</script>
</body>
</html>
