package org.park.controller;

import org.park.Services.UserService;
import org.park.model.User;
import org.park.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @GetMapping("/loginCustomer")
    public String loginCustomerGet() {
        return "login_customer";
    }

    @PostMapping("/loginCustomer")
    public String loginCustomer(@RequestParam String username, @RequestParam String password) {
        User user = userService.findUserByUsernameAndPassword(username, password);
        if (user != null) {
            return "redirect:/activities/viewCustomer";
        } else {
            return "login_customer";
        }
    }
    @GetMapping("/loginAdmin")
    public String loginAdminGet() {
        return "login_admin";
    }
    @PostMapping("/loginAdmin")
    public String loginAdmin(@RequestParam String username, @RequestParam String password) {
        Admin admin = userService.findAdminByUsernameAndPassword(username, password);
        if (admin != null) {
            return "redirect:/activities/viewAdmin";
        } else {
            return "login_admin";
        }
    }
}
