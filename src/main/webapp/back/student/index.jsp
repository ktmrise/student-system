<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <%--标题--%>
    <div class="row">
        <h1 class="text-center">学生管理</h1>
    </div>
    <%--搜索框--%>
    <div class="row" style="margin: 10px">
        <div class="col-lg-10 col-lg-offset-1 text-center">
            <form action="/student/findAllStudent" class="form-inline">
                <div class="form-group">
                    <select name="searchType" id="" class="form-control">
                        <option value="s.name" <c:if test="${requestScope.searchType=='s.name'}">
                            selected
                        </c:if>> 姓名
                        </option>
                        <option value="tc.name" <c:if test="${requestScope.searchType=='tc.name'}">
                            selected
                        </c:if>>班级
                        </option>
                        <option value="s.phone" <c:if test="${requestScope.searchType=='s.phone'}">
                            selected
                        </c:if>>电话
                        </option>
                        <option value="s.qq" <c:if test="${requestScope.searchType=='s.qq'}">
                            selected
                        </c:if>>QQ
                        </option>
                    </select>
                </div>
                <div class="form-group">
                    <input class="form-control" id="search" style="width: 300px" name="searchValue" placeholder="">

                </div>


                <button type="submit" class="btn btn-success ">搜索</button>
            </form>
        </div>
    </div>
    <%--学生表格--%>
    <div class="row" style="height: 450px">
        <div class="col-lg-12">
            <table class="table table-striped table-bordered">
                <c:if test="${requestScope.students.size()==0}">
                    <h1 class="text-center text-info">
                        还没有任何数据哦~~!!!
                    </h1>
                </c:if>
                <c:if test="${requestScope.students.size()!=0}">
                    <tr>
                        <th>编号</th>
                        <th>姓名</th>
                        <th>年龄</th>
                        <th>生日</th>
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
                </c:if>
                <c:forEach items="${requestScope.students}" var="student">
                    <tr>
                        <td>${student.id}</td>
                        <td>${student.name}</td>
                        <td>${student.age}</td>
                        <td><fmt:formatDate value="${student.bir}" pattern="yyyy-MM-dd"/></td>
                        <td>${student.phone}</td>
                        <td>${student.qq}</td>
                        <td>${student.attr}</td>
                        <td>${student.starts}</td>
                        <td>${student.mark}</td>
                            <%--                        <td>${student.cityName}</td>--%>
                            <%--                        <td>${student.clazzName}</td>--%>
                            <%--                        <td>${student.groupName}</td>--%>
                            <%--                        <td>${student.tagName}</td>--%>
                        <td>${student.city.name}</td>
                        <td>${student.clazz.name}</td>
                        <td>${student.group.name}</td>
                        <td>
                            <c:forEach items="${student.tags}" var="tag">
                                ${tag.name},
                            </c:forEach>
                        </td>
                        <td><a href="" class="btn btn-danger btn-sm">删除</a>
                            <a href="" class="btn btn-primary btn-sm">修改</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

    <%--分页栏--%>
    <div class="row">
        <div class="col-lg-12 text-right">
            <c:if test="${requestScope.students.size()!=0}">
                <nav aria-label="Page navigation">
                    <ul class="pagination ">
                        <c:if test="${requestScope.currentPage!=1}">
                            <li>
                                <a href="/student/findAllStudent?currentPage=${state.count-1}&searchType=${requestScope.searchType}&searchValue=${requestScope.searchValue}"
                                   aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                        </c:if>

                        <c:forEach begin="1" end="${requestScope.totalPage}" varStatus="state">
                            <c:if test="${state.count!=requestScope.currentPage}">
                                <li>
                                    <a href="/student/findAllStudent?currentPage=${state.count}&searchType=${requestScope.searchType}&searchValue=${requestScope.searchValue}">${state.count}</a>
                                </li>
                            </c:if>
                            <c:if test="${state.count==requestScope.currentPage}">
                            <li class="active">
                                <a href="javascript:;">${state.count}</a>
                            </li>
                        </c:if>


                        </c:forEach>
                        <c:if test="${requestScope.currentPage!=requestScope.totalPage}">
                            <li>
                                <a href="/student/findAllStudent?currentPage=${state.count+1}&searchType=${requestScope.searchType}&searchValue=${requestScope.searchValue}"
                                   aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </c:if>

                    </ul>
                </nav>
            </c:if>
        </div>
    </div>
</div>
</body>
</html>