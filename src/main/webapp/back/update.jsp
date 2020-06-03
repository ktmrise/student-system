<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>用户注册</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/back/statics/js/jquery-3.5.1.js"></script>
</head>

<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6 col-lg-offset-3">

            <h1 class="text-center">用户修改</h1>
            <form action="${pageContext.request.contextPath}/city/update" method="post">
                <div class="form-group">
                    <label for="id"></label>
                    <input type="text" class="form-control hidden" value="${requestScope.city.id}" name="id" id="id">
                </div>

                <div class="form-group">
                    <label for="cityName">城市名</label>
                    <input type="text" class="form-control" value="${requestScope.city.name}" name="name" id="cityName" placeholder="请输入城市名">
                </div>
                <div class="form-group">
                    <label for="numbers">就业人数</label>
                    <input type="text" class="form-control" name="numbers" value="${requestScope.city.numbers}" id="numbers" placeholder="请输入就业人数">
                </div>
                <button type="submit" class="btn btn-success " style="width: 50%;margin-left: 150px">提交</button>
            </form>
        </div>
    </div>
</div>


</body>


</html>