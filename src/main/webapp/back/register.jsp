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
            <h1 class="text-center">用户注册</h1>
        </div>
    </div>


    <div class="row">
        <div class="col-lg-6 col-lg-offset-3">
            <form id="regForm">
                <div class="form-group">
                    <label for="name">用户名:</label>
                    <input type="text" class="form-control" name="name" id="name" placeholder="Username">
                </div>
                <div class="form-group">
                    <label for="password">密码:</label>
                    <input type="password" class="form-control" name="password" id="password" placeholder="Password">
                </div>
                <div class="form-group">
                    <label for="role">角色选择:</label>
                    <select name="role" class="form-control" id="role">
                        <option value="admin">管理员</option>
                        <option value="student">学生</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="code">验证码:</label>
                    <div>
                        <input type="password" style="width: 77%;height: 38px;float:left" name="code"
                               class="form-control" id="code"
                               placeholder="Code">
                        <img src="${pageContext.request.contextPath}/user/getImage" id="image" alt=""
                             style="float: right;height: 38px">
                    </div>


                </div>


                <button type="button" id="reg" class="btn btn-success" style="margin-left: 294px;margin-top: 10px">
                    立即注册
                </button>
                <button type="submit" class="btn btn-primary" style="margin-top: 10px">返回登录</button>

            </form>
        </div>
    </div>

</div>


</body>

<script>

    $(function () {
        $("#reg").click(function () {
            $.post("${pageContext.request.contextPath}/user/register", $("#regForm").serialize(), function (response) {
                console.log(response);
                if (response.status) {
                    alert(response.message + "点击确定跳转到登录页面");
                    location.href = '${pageContext.request.contextPath}/back/login.jsp';


                } else {
                    alert(response.message)
                }

            });

        });


        $("#image").click(function () {
            $(this).attr("src", "${pageContext.request.contextPath}/user/getImage?id=" + Math.random());
        });

    })


</script>
</html>