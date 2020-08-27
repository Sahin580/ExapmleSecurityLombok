<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Registration Form</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/registration.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<form action="${pageContext.request.contextPath}/" method="get">
    <button class="btn btn-md btn-warning btn-block" type="Submit">Go To Login Page</button>
</form>

<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <form:form action="${pageContext.request.contextPath}/registration" modelAttribute="userForm" method="post" class="form-horizontal" role="form">
                <h2>Registration Form</h2>
                <div class="form-group">
                    <div class="col-sm-9">
                        <form:errors path="name" cssClass="error" />
                            <%--<for:label if="${#fields.hasErrors('name')}" th:errors="*{name}" class="validation-message"></for:label>--%>
                        <form:input type="text" path="name" placeholder="Name" class="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-9">
                        <form:errors path="lastName" cssClass="error" />
                            <%--<label th:if="${#fields.hasErrors('lastName')}" th:errors="*{lastName}" class="validation-message"></label>--%>
                        <form:input type="text" path="lastName" placeholder="Last Name" class="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-9">
                        <form:errors path="email" cssClass="error" />
                            <%--<label th:if="${#fields.hasErrors('email')}" th:errors="*{email}" class="validation-message"></label>--%>
                        <form:input type="text" path="email" placeholder="Email" class="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-9">
                            <%--<label th:if="${#fields.hasErrors('userName')}" th:errors="*{userName}" class="validation-message"></label>--%>
                        <form:errors path="userName" cssClass="error"/>
                        <form:input type="text" path="userName" placeholder="User Name" class="form-control"/>

                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-9">
                        <form:input type="password" path="password" placeholder="Password" class="form-control"/>
                        <form:errors path="password" cssClass="error"/>
                            <%--<label th:if="${#fields.hasErrors('password')}" th:errors="*{password}" class="validation-message"></label>--%>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-9">
                        <button type="submit" class="btn btn-primary btn-block">Register User</button>
                    </div>
                </div>

                <h2><span class="text-success">${successMessage}</span></h2>

            </form:form>
        </div>
    </div>
</div>

</body>
</html>

