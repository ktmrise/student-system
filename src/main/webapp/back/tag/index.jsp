<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/back/statics/js/jquery-3.5.1.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-4 col-lg-offset-4">
            <h1 class="text-center">标签管理</h1>
        </div>
    </div>

    <div class="rwo">
        <div class="col-lg-12 ">
            <table class="table table-striped table-bordered ">
                <tr>
                    <th>编号</th>
                    <th>名称</th>
                    <th>标签类型</th>
                    <th>创建时间</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${requestScope.tags}" var="tag">
                    <tr>
                        <td>${tag.id}</td>
                        <td>${tag.name}</td>
                        <td>${tag.type}</td>
                        <td><fmt:formatDate value="${tag.createTime}"/></td>
                        <td>
                            <a href="" class="btn btn-danger btn-sm">删除</a>
                            <a href="" class="btn btn-primary btn-sm">修改</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>


        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <form class="form-inline" method="post" action="${pageContext.request.contextPath}/tag/insert"
                  id="inputForm">
                <div class="form-group">
                    <label for="tagName">标签名</label>
                    <input type="text" class="form-control" id="tagName" name="name" placeholder="输入标签名">
                </div>
                <div class="form-group">
                    <label for="tagType">标签类型</label>
                    <select name="type" id="tagType" class="form-control">
                        <option value="班级">班级标签</option>
                        <option value="学生">学生标签</option>
                    </select>
                </div>

                <button type="submit" class="btn btn-success">添加标签</button>
            </form>
        </div>
    </div>
</div>

<script>
    $(function () {
        $("#inputForm").submit(function () {
            if (!$("#tagName").val()) {
                alert('标签名不能为空');
                return false;
            } else {
                return true;
            }

        });


    });
</script>
</body>