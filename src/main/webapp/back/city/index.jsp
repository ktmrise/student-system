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
        <div class="col-lg-6 col-lg-offset-3">
            <h1 class="text-center">城市管理</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <table class="table table-striped">
                <tr>
                    <th>编号</th>
                    <th>名称</th>
                    <th>录入时间</th>
                    <th>当前城市就业人数</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${requestScope.cities}" var="city">
                    <tr>
                        <td>${city.id}</td>
                        <td>${city.name}</td>
                        <td><fmt:formatDate value="${city.createTime}"/></td>
                        <td>${city.numbers}</td>
                        <td>
                            <a href="" class="btn btn-danger btn-sm">删除</a>
                            <a href="" class="btn btn-primary btn-sm">修改</a>
                        </td>
                    </tr>
                </c:forEach>

            </table>
            <a href="" class="btn btn-success btn-sm pull-right">录入就业城市</a>
        </div>
    </div>
</div>
</body>
</html>
