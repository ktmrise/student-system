<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/back/statics/js/jquery-3.5.1.js"></script>


<ul class="list-group" style="margin-top: 30px">
    <li class="list-group-item text-center"><a href="${pageContext.request.contextPath}/back/student/index.jsp" target="content">学生管理</a></li>
    <li class="list-group-item text-center"><a href="${pageContext.request.contextPath}/group/findAll" target="content">小组管理</a></li>
    <li class="list-group-item text-center"><a href="${pageContext.request.contextPath}/clazz/findAll" target="content">班级管理</a></li>
    <li class="list-group-item text-center"><a href="${pageContext.request.contextPath}/tag/findByPage" target="content">标签管理</a></li>
    <li class="list-group-item text-center"><a href="${pageContext.request.contextPath}/city/findAll" target="content">城市管理</a></li>

</ul>


