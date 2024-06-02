<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Activity</title>
    <!-- Add your CSS links here -->
</head>
<body>
    <header>
        <!-- Add your header content here -->
    </header>

    <main>
        <section id="hero">
            <!-- Hero section content -->
        </section>

        <section id="add-activity">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        <h2>Add Activity</h2>
                        <form:form action="/activities/add" method="post" modelAttribute="activity">
                            <div class="form-group">
                                <label for="activityDesc">Description</label>
                                <form:input path="activityDesc" class="form-control" id="activityDesc" />
                            </div>
                            <div class="form-group">
                                <label for="activityCharges">Charges</label>
                                <form:input path="activityCharges" class="form-control" id="activityCharges" />
                            </div>
                            <button type="submit" class="btn btn-primary">Save Activity</button>
                        </form:form>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <!-- Add your footer content here -->
    </footer>

    <!-- Add your JavaScript links here -->

</body>
</html>
