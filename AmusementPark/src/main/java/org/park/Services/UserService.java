package org.park.Services;
import org.park.model.LoginRequest;
import org.park.model.User;

public interface UserService {
    void registerUser(User user);
    boolean authenticateUser(LoginRequest loginRequest);
}