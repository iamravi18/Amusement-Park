<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Select Activity to Delete</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Select Activity to Delete</h1>
        <form action="/activities/deleteActivity" method="post" onsubmit="return confirm('Are you sure you want to delete this activity?');">
            <div class="form-group">
                <label for="activity_id">Activity ID</label>
                <input type="text" name="activityId" id="activity_id" class="form-control"/>
            </div>
            <button type="submit" class="btn btn-danger">Delete Activity</button>
        </form>
    </div>
    <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
