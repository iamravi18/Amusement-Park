<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Activity</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Update Activity</h1>
        <form:form method="post" action="/activities/updateActivity" modelAttribute="activity">
            <div class="form-group">
                <label for="activity_id">Activity ID</label>
                <form:input type="text" path="activity_id" id="activity_id" readonly="true" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="activity_name">Activity Name</label>
                <form:input type="text" path="activity_name" id="activity_name" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="activity_charges">Activity Charge</label>
                <form:input type="text" path="activity_charges" id="activity_charges" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="activity_desc">Activity Description</label>
                <form:textarea path="activity_desc" id="activity_desc" class="form-control"></form:textarea>
            </div>
            <div class="form-group">
                <label for="admin_id">Admin ID</label>
                <form:input type="text" path="admin_id" id="admin_id" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="admin_name">Admin Name</label>
                <form:input type="text" path="admin_name" id="admin_name" class="form-control"/>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form:form>
    </div>
    <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
