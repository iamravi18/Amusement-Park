package org.park.Services;

import org.park.model.Ticket;

import java.util.List;

public interface TicketService {
    void saveTicket(Ticket ticket);
    List<Ticket> getAllTickets();
    Ticket getTicketById(Long id);
    void updateTicket(Ticket ticket);
    void deleteTicket(Long id);
}
