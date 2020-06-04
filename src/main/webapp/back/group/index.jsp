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
    <div class="row">
        <form class="form-inline" id="inputForm" action="/group/insert" method="post">
            <div class="form-group">
                <label for="name">名称:</label>
                <input type="text" class="form-control" id="name" name="name">
            </div><div class="form-group">
                <label for="content">标语:</label>
                <input type="text" class="form-control" id="content" name="content">
            </div>

            <div class="form-group">
                <label for="clazzId">选择班级:  </label>
                <select name="clazzId" id="clazzId" class="form-control">
                </select>
            </div>
            <button type="submit" class="btn btn-success">添加小组</button>
        </form>
    </div>
</div>


<script>
    $(function () {
        $.get("/clazz/findAllClazzJSON", function (response) {
            // console.log(response);
                $.each(response,function (index,clazz) {
                    var option = $("<option/>").text(clazz.name).val(clazz.id);
                    $("#clazzId").append(option);
                })
        });


        $("#inputForm").submit(function () {
            if (!$("#name").val() ) {
                alert('名称不能为空');
                return false;
            }

            if (!$("#content").val()) {
                alert('标语不能为空');
                return false;
            }

        });
    });
</script>
</body>