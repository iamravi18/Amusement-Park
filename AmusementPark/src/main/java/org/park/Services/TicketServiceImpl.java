package org.park.Services;

import org.park.Repository.TicketRepository;
import org.park.model.Ticket;
import org.park.Services.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TicketServiceImpl implements TicketService {

    @Autowired
    private TicketRepository ticketRepository;

    @Override
    public void saveTicket(Ticket ticket) {

        ticketRepository.save(ticket);
    }

    @Override
    public List<Ticket> getTicketsByUserId(Long userId) {

        return ticketRepository.findByUserId(userId);
    }

    @Override
    public void updateTicket(Ticket ticket) {

        ticketRepository.save(ticket);
    }

    @Override
    public void deleteTicket(Long ticketId) {

        ticketRepository.deleteById(ticketId);
    }
}