<%--
  Created by IntelliJ IDEA.
  User: 15851
  Date: 2019/9/23
  Time: 16:06
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
<div class="layui-container" style="padding: 20px; background-color: #F2F2F2;">
    <form method="post" action="#">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-header">注册的移动云端信息</div>
                    <div class="layui-card-body">
                        <table width="100%" style="margin-left: 10px;">
                            <tr>
                                <td>登录账号:<input type="text"></td>
                                <td>登录密码:<input type="text"></td>
                            </tr>
                            <tr>
                                <td>关键词:<label></label></td>
                                <td>登录地址:<label></label></td>
                            </tr>
                            <tr>
                                <td>客户端下载地址(IOS):<input type="text"></td>
                                <td>二维码下载地址(IOS):<input type="text"></td>
                            </tr>
                            <tr>
                                <td>客户端下载地址(Android):<input type="text"></td>
                                <td>二维码下载地址(Android):<input type="text"></td>
                            </tr>
                            <tr>
                                <td>关键词开始日期:<label></label></td>
                                <td>关键词结束日期:<label></label></td>
                            </tr>
                            <tr>
                                <td>关键词有效年期:<label></label></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-header">基本信息</div>
                    <div class="layui-card-body">
                        <table width="100%" style="margin-left: 10px;">
                            <tr>
                                <td>企业名称:<label></label></td>
                                <td>状态:<label></label></td>
                            </tr>
                            <tr>
                                <td>企业类型:<label></label></td>
                                <td>企业主页:<label></label></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-header">门户信息</div>
                    <div class="layui-card-body">
                        <table width="100%" style="margin-left: 10px;">
                            <tr>
                                <td>法人代表:<label></label></td>
                                <td>注册日期:<label></label></td>
                            </tr>
                            <tr>
                                <td>证件类型:<label></label></td>
                                <td>证件号码:<label></label></td>
                            </tr>
                            <tr>
                                <td>国家:<label></label></td>
                                <td>省/地区:<label></label></td>
                            </tr>
                            <tr>
                                <td>区:<label></label></td>
                                <td>城市:<label></label></td>
                            </tr>
                            <tr>
                                <td>公司电话:<label></label></td>
                                <td>公司传真:<label></label></td>
                            </tr>
                            <tr>
                                <td>公司地址:<label></label></td>
                                <td>备注
                                    :<label></label></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-header">联系人信息</div>
                    <div class="layui-card-body">
                    </div>
                    <div style="width: 100%; text-align: center;">
                        <input type="submit" value="保存" class="layui-btn layui-btn-sm" />
                        <input type="button" value="返回" class="layui-btn layui-btn-sm" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<script src="../layui/layui.js"></script>
</body>

</html>
