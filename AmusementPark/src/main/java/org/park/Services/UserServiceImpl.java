package org.park.Services;

import org.park.model.LoginRequest;
import org.park.model.User;
import org.park.Repository.UserRepository;
import org.park.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public void registerUser(User user) {

        userRepository.save(user);
    }

    @Override
    public boolean authenticateUser(LoginRequest loginRequest) {
        User user = userRepository.findByUsername(loginRequest.getUsername());
        return user != null && user.getPassword().equals(loginRequest.getPassword());
    }
}