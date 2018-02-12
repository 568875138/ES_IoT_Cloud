<%--
  Created by IntelliJ IDEA.
  User: coder
  Date: 18-1-12
  Time: 上午10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>创建项目</title>
    <link rel="stylesheet" type="text/css" href="/static/css/createItem.css">
    <script type="text/javascript" src="/static/js/jquery-3.1.1.min.js"></script>
</head>
<body>
<div class="ui-tab">
    <ul class="nav-list">
        <li class="active">
            <a>创建产品</a>
        </li>
    </ul>
    <div class="tab-content">
        <form class="form-horizontal product-create">
            <input type="hidden" value="${sessionScope.get("user").id}" class="user_id">
            <div class="form-group title-bg">项目信息</div>
            <div class="form-group">
                <label for="product-name" class="icon-required">项目名称：</label>
                <input type="text" name="name" id="product-name" required="" value="" placeholder="最多输入16个字符" >
                <ul class="errors-list filled" id="require_1" style="display: none;">
                    <li class="parsley-required">
                        <span class="icon-cancel-circled">必填项</span>
                    </li>
                </ul>
            </div>
            <div class="form-group">
                <label for="industry" class="icon-required">项目行业：</label>
                <div class="select-parent product-industry">
                    <select name="industry" id="industry" required="" data-parsley-id="6">

                    </select>
                </div>
            </div>
            <div class="form-group product-details">
                <label for="product-details" class="icon-required">项目简介：</label>
                <textarea name="description" id="product-profile" class="" required=""></textarea>
                <ul class="errors-list filled" id="require_2" style="display: none;">
                    <li class="parsley-required">
                        <span class="icon-cancel-circled">必填项</span>
                    </li>
                </ul>
            </div>
            <div class="form-group button-wrapper">
                <button class="button j_submit submit-button" id="makeSure">确定</button>
                <a href="javascript:;" class="button j_cancel  secondary">取消</a>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript" src="/static/js/createItem.js"></script>
</body>
</html>
