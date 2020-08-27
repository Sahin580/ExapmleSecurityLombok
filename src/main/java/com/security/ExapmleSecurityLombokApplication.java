package com.security;

import com.security.model.Role;
import com.security.model.User;
import com.security.repository.UserRepository;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.Arrays;
import java.util.HashSet;

@SpringBootApplication
public class ExapmleSecurityLombokApplication {

    public static void main(String[] args) {
        SpringApplication.run(ExapmleSecurityLombokApplication.class, args);
    }


}
