<%--
  Created by IntelliJ IDEA.
  User: 15851
  Date: 2019/9/23
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <link href="../layui/css/layui.css" rel="stylesheet" />
</head>

<body>
<div class="layui-container">
    <div style="margin: 20px 0px;">
        <a href="#" style="text-decoration: none;">门户管理</a> \ <a href="#" style="text-decoration: none;">门户管理</a>
    </div>
    <div style="padding: 20px; background-color: #F2F2F2;">
        <div class="layui-card">
            <div class="layui-card-header">
                <form method="" action="">
                    关键词：<input type="text" name=""/>
                    客户名称：<input type="text" name=""/>
                    <input type="submit" class="layui-btn layui-btn-sm" value="提交" />
                </form>
            </div>
            <div class="layui-card-body">
                <table class="layui-table">
                    <thead>
                    <th>序号</th>
                    <th>用户名称</th>
                    <th>客户名称</th>
                    <th>法人代表</th>
                    <th>代理商</th>
                    <th>注册日期</th>
                    <th>类型</th>
                    <th>状态</th>
                    <th>操作</th>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>hanlu</td>
                        <td>眼镜中心营业厅</td>
                        <td>法人2</td>
                        <td>韩璐</td>
                        <td>2013-01-15 22:46:35</td>
                        <td>企业</td>
                        <td>未使用</td>
                        <td lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#toolBar'}"><a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail" href="PMCheckInfo.jsp">查看</a><a class="layui-btn layui-btn-xs" lay-event="edit" href="PMUpdInfo.jsp">编辑</a></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script type="text/html" id="toolBar">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>|<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
</script>
<script src="../layui/layui.js"></script>
<script>
    layui.use('table', function() {
        var table = layui.table;
        //监听表格复选框选择
        table.on('checkbox(demo)', function(obj) {
            console.log(obj)
        });
        //监听工具条
        table.on('tool(demo)', function(obj) {
            var data = obj.data;
            if (obj.event === 'detail') {
                layer.msg('ID：' + data.id + ' 的查看操作');
            } else if (obj.event === 'del') {
                layer.confirm('真的删除行么', function(index) {
                    obj.del();
                    layer.close(index);
                });
            } else if (obj.event === 'edit') {
                layer.alert('编辑行：<br>' + JSON.stringify(data))
            }
        });

        var $ = layui.$,
            active = {
                getCheckData: function() { //获取选中数据
                    var checkStatus = table.checkStatus('idTest'),
                        data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                },
                getCheckLength: function() { //获取选中数目
                    var checkStatus = table.checkStatus('idTest'),
                        data = checkStatus.data;
                    layer.msg('选中了：' + data.length + ' 个');
                },
                isAll: function() { //验证是否全选
                    var checkStatus = table.checkStatus('idTest');
                    layer.msg(checkStatus.isAll ? '全选' : '未全选')
                }
            };

        $('.demoTable .layui-btn').on('click', function() {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
    });
</script>
</body>
</html>
