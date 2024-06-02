package org.park.Services;

import org.park.model.Ticket;

import java.util.List;

public interface TicketService {
    void saveTicket(Ticket ticket);
    List<Ticket> getTicketsByUserId(Long userId);
    void updateTicket(Ticket ticket);
    void deleteTicket(Long ticketId);
}
