<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" %>


<html>
<head>
    <title>Spring Security Login page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.1.1.js"   integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA=" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
</head>
<body>

<form action="${pageContext.request.contextPath}/registration">
    <button class="btn btn-md btn-warning btn-block" type="Submit">Go To Registration Page</button>
</form>

<div class="container">
<img src="${pageContext.request.contextPath}/images/login.jpg" class="img-responsive center-block" width="300" height="300" alt="Logo"/>
<form action="${pageContext.request.contextPath}/login" method="post">
    <h3 class="form-signin-heading"  text="Welcome"></h3>
    <br/>
    <div class="container" style="width: 30%">
        <div class="panel panel-default" style="margin-top: 30px;">
            <div class="panel-body">

                <div class="form-group">
                    <label for="user_name">Username:</label>
                    <input required="true" id="user_name" class="form-control" type="text" name="user_name"
                           placeholder="User name">
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input required="true" id="password" class="form-control" type="password" name="password"
                           placeholder="Şifrənizi qeyd edin">
                </div><br/>
                <%--<div align="center"  if="${param.error}">--%>
                    <%--<p style="font-size: 20px; color: #FF1C19;">User Name or Password invalid, please verify</p>--%>
                <%--</div>--%>

                <div class="form-group text-center">
                    <button class="btn btn-lg btn-primary btn-block" name="Submit" value="Login" type="Submit">Login</button>
                </div>
            </div>
        </div>
    </div>
</form>
</div>

</body>
</html>
