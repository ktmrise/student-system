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
        <h1 class="text-center">学生管理</h1>
    </div>
    <div class="row" style="margin: 20px">
        <div class="col-lg-10 col-lg-offset-1 text-center">
            <form action="" class="form-inline">
                <div class="form-group">
                    <select name="type" id="" class="form-control">
                        <option value="">姓名</option>
                        <option value="">班级</option>
                        <option value="">电话</option>
                        <option value="">QQ</option>
                    </select>
                </div>
                <div class="form-group">
                    <input class="form-control" id="search" style="width: 300px" name="search" placeholder="">

                </div>


                <a href="" class="btn btn-success ">搜索</a>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <table class="table table-striped table-bordered">
                <tr>
                    <th>编号</th>
                    <th>姓名</th>
                    <th>年龄</th>
                    <th>电话</th>
                    <th>QQ</th>
                    <th>生肖</th>
                    <th>星座</th>
                    <th>备注</th>
                    <th>就业城市</th>
                    <th>班级</th>
                    <th>小组</th>
                    <th>标签</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${requestScope.students}" var="student">
                    <tr>
                        <td>${student.id}</td>
                        <td>${student.name}</td>
                        <td>${student.age}</td>
                        <td>${student.phone}</td>
                        <td>${student.qq}</td>
                        <td>${student.attr}</td>
                        <td>${student.starts}</td>
                        <td>${student.mark}</td>
                        <td>${student.cityName}</td>
                        <td>${student.clazzName}</td>
                        <td>${student.groupName}</td>
                        <td>${student.tagName}</td>
                        <td><a href="" class="btn btn-danger btn-sm">删除</a>
                            <a href="" class="btn btn-primary btn-sm">修改</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 ">
            <nav aria-label="Page navigation" class="pull-right">
                <ul class="pagination ">
                    <li>
                        <a href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li>
                        <a href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>
</body>
</html>