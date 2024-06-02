<c:forEach var="ticket" items="${tickets}">
    <div>
        <p>Ride Name: ${ticket.rideName}</p>
        <p>Purchase Time: ${ticket.purchaseTime}</p>
    </div>
</c:forEach>
