<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Ticket</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Update Ticket</h1>
        <form action="${pageContext.request.contextPath}/tickets/update" method="post">
            <div class="form-group">
                <label for="id">Ticket ID</label>
                <input type="text" name="id" id="id" value="${ticket.id}" class="form-control" readonly>
            </div>
            <div class="form-group">
                <label for="activityId">Activity ID</label>
                <input type="text" name="activityId" id="activityId" value="${ticket.activityId}" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="customerId">Customer ID</label>
                <input type="text" name="customerId" id="customerId" value="${ticket.customerId}" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary">Update Ticket</button>
        </form>
    </div>
    <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
