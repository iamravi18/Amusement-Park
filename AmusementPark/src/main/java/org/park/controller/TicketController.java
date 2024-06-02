package org.park.controller;

import org.park.model.Ticket;
import org.park.Services.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/tickets")
public class TicketController {

    @Autowired
    private TicketService ticketService;

    @PostMapping("/buy")
    public ResponseEntity<String> buyTicket(@RequestBody Ticket ticket) {
        ticketService.saveTicket(ticket);
        return ResponseEntity.ok("Ticket purchased successfully");
    }

    @GetMapping("/view")
    public ResponseEntity<List<Ticket>> viewTickets(@RequestParam Long userId) {
        List<Ticket> tickets = ticketService.getTicketsByUserId(userId);
        return ResponseEntity.ok(tickets);
    }

    @PutMapping("/update")
    public ResponseEntity<String> updateTicket(@RequestBody Ticket ticket) {
        ticketService.updateTicket(ticket);
        return ResponseEntity.ok("Ticket updated successfully");
    }

    @DeleteMapping("/delete")
    public ResponseEntity<String> deleteTicket(@RequestParam Long ticketId) {
        ticketService.deleteTicket(ticketId);
        return ResponseEntity.ok("Ticket deleted successfully");
    }
}