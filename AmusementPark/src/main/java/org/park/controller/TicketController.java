package org.park.controller;

import org.park.Services.TicketService;
import org.park.model.Ticket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/tickets")
public class TicketController {

    @Autowired
    private TicketService ticketService;

    @GetMapping("/book")
    public String showBookTicketPage() {
        return "book_ticket";
    }

    @PostMapping("/book")
    public String bookTicket(@RequestParam Long activityId, @RequestParam Long customerId) {
        Ticket ticket = new Ticket(activityId, customerId);
        ticketService.saveTicket(ticket);
        return "redirect:/tickets/view";
    }

    @GetMapping("/view")
    public String viewTickets(Model model) {
        List<Ticket> tickets = ticketService.getAllTickets();
        model.addAttribute("tickets", tickets);
        return "view_tickets";
    }

    @GetMapping("/update/{id}")
    public String showUpdateTicketPage(@PathVariable Long id, Model model) {
        Ticket ticket = ticketService.getTicketById(id);
        model.addAttribute("ticket", ticket);
        return "update_ticket";
    }

    @PostMapping("/update")
    public String updateTicket(@RequestParam Long id, @RequestParam Long activityId, @RequestParam Long customerId) {
        Ticket ticket = new Ticket(id, activityId, customerId);
        ticketService.updateTicket(ticket);
        return "redirect:/tickets/view";
    }

    @GetMapping("/delete/{id}")
    public String deleteTicket(@PathVariable Long id) {
        ticketService.deleteTicket(id);
        return "redirect:/tickets/view";
    }
}
