<form action="/activities/update" method="post">
    <input type="hidden" name="id" value="${activity.id}" />
    <input type="text" name="name" value="${activity.name}" required />
    <textarea name="description" required>${activity.description}</textarea>
    <input type="datetime-local" name="scheduledTime" value="${activity.scheduledTime}" required />
    <button type="submit">Update Activity</button>
</form>
