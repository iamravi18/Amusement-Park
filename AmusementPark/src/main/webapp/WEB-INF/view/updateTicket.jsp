<form action="/tickets/update" method="post">
    <input type="hidden" name="id" value="${ticket.id}" />
    <input type="text" name="rideName" value="${ticket.rideName}" required />
    <button type="submit">Update Ticket</button>
</form>
