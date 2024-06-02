<c:forEach var="activity" items="${activities}">
    <div>
        <p>Activity Name: ${activity.name}</p>
        <p>Description: ${activity.description}</p>
        <p>Scheduled Time: ${activity.scheduledTime}</p>
    </div>
</c:forEach>
