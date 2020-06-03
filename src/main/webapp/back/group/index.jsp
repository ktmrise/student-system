<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <h1 class="text-center">小组管理</h1>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <table class="table table-bordered table-striped">
                <tr>
                    <th>编号</th>
                    <th>名字</th>
                    <th>标语</th>
                    <th>所属班级</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${requestScope.groups}" var="group">
                    <tr>
                        <td>${group.id}</td>
                        <td>${group.name}</td>
                        <td>${group.content}</td>
                        <td>${group.clazzName}</td>
                        <td>
                            <a href="" class="btn btn-danger btn-sm">删除</a>
                            <a href="" class="btn btn-primary btn-sm">修改</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>