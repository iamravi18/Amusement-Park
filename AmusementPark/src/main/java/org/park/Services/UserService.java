package org.park.Services;

import org.park.model.User;
import org.park.model.Admin;

public interface UserService {
    void saveUser(User user);
    void saveAdmin(Admin admin);
    User findUserByUsernameAndPassword(String username, String password);
    Admin findAdminByUsernameAndPassword(String username, String password);
}
