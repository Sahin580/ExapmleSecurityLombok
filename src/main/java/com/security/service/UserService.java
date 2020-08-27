package com.security.service;


import com.security.model.Role;
import com.security.model.User;
import com.security.repository.RoleRepository;
import com.security.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.HashSet;


@Service
public class UserService {

    public UserRepository userRepository;
    private RoleRepository roleRepository;
    private BCryptPasswordEncoder bCryptPasswordEncoder;


    @Autowired
    public UserService(UserRepository userRepository,
                       RoleRepository roleRepository,
                       BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }

    public User findUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    public User findUserByUserName(String userName) {
        return userRepository.findByUserName(userName);
    }

    public User saveUser(User user) {
        try {
            user.setUserName(user.getUserName());
            user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
            user.setActive(true);
            user.setName(user.getName());
            user.setLastName(user.getLastName());
            user.setEmail(user.getEmail());
            Role userRole = roleRepository.findByRole("ADMIN");
            user.setRoles(new HashSet<Role>(Arrays.asList(userRole)));

            return userRepository.save(user);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }


}
