<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>用户登录</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6 col-lg-offset-3">
            <h1 class="text-center">用户登录</h1>
        </div>
    </div>


    <div class="row">
        <div class="col-lg-6 col-lg-offset-3">
            <form>
                <div class="form-group">
                    <label for="name">用户名:</label>
                    <input type="text" class="form-control" id="name" placeholder="Username">
                </div>
                <div class="form-group">
                    <label for="password">密码:</label>
                    <input type="password" class="form-control" id="password" placeholder="Password">
                </div>
                <div class="form-group">
                    <label for="code" >验证码:</label>
                    <div>
                        <input type="password" style="width: 77%;height: 38px;float:left" class="form-control" id="code" placeholder="Code">
                        <img src="${pageContext.request.contextPath}/user/getImage" alt="" style="float: right;height: 38px">
                    </div>


                </div>


                    <button type="submit" class="btn btn-success" style="margin-left: 294px;margin-top: 10px" >登录</button>
                    <button type="submit" class="btn btn-primary" style="margin-top: 10px">注册</button>

            </form>
        </div>
    </div>

</div>






</body>
</html>