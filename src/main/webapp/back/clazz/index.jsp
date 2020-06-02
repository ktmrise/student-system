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
        <div class="col-lg-12 ">
            <h1 class="text-center">班级管理</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <table class="table table-striped table-bordered">
                <tr>
                    <th>编号</th>
                    <th>名称</th>
                    <th>所属标签</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${requestScope.clazzes}" var="clazz">
                    <tr>
                        <td>${clazz.id}</td>
                        <td>${clazz.name}</td>
                        <td>${clazz.tag.name}</td>
                        <td>
                            <a href="" class="btn-sm btn btn-danger">删除</a>
                            <a href="" class="btn-sm btn btn-primary">修改</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>