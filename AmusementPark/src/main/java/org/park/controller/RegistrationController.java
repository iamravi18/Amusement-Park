package org.park.controller;

import org.park.Services.UserService;
import org.park.model.User;
import org.park.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class RegistrationController {

    @Autowired
    private UserService userService;

    @GetMapping("/registerCustomer")
    public String registerCustomerGet() {
        return "register_customer";
    }

    @PostMapping("/registerCustomer")
    public String registerCustomer(@RequestParam String username, @RequestParam String password, @RequestParam String email) {
        User user = new User(username, password, email);
        userService.saveUser(user);
        return "redirect:/loginCustomer";
    }
    @GetMapping("/registerAdmin")
    public String registerAdminGet() {
        return "register_admin";
    }
    @PostMapping("/registerAdmin")
    public String registerAdmin(@RequestParam String username, @RequestParam String password, @RequestParam String email) {
        Admin admin = new Admin(username, password, email);
        userService.saveAdmin(admin);
        return "redirect:/loginAdmin";
    }
}
