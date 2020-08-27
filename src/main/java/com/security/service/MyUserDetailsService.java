package com.security.service;


import com.security.model.Role;
import com.security.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class MyUserDetailsService implements UserDetailsService {

    @Autowired
    private UserService userService;


    @Override
    @Transactional
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        System.out.println("--- Load User By Username method was running --- ");
        System.out.println("Username is: " +userName);
        User user = userService.findUserByUserName(userName);
        List<GrantedAuthority> authorities = getUserAuthorityList(user.getRoles());
        if(user == null){
            throw new UsernameNotFoundException("User not authorized.");
        }
        return buildUserForAuthentication(user, authorities);
    }

    private List<GrantedAuthority> getUserAuthorityList(Set<Role> userRoles) {
        Set<GrantedAuthority> roles = new HashSet<GrantedAuthority>();
        for (Role role : userRoles) {
            roles.add(new SimpleGrantedAuthority(role.getRole()));
        }
        List<GrantedAuthority> grantedAuthorities = new ArrayList<>(roles);
        System.out.println("Capa verildi UserAuthority: " + grantedAuthorities.get(0));
        return grantedAuthorities;
    }

    private UserDetails buildUserForAuthentication(User user, List<GrantedAuthority> authorities) {
        return new org.springframework.security.core.userdetails.User(user.getUserName(), user.getPassword(),
                user.getActive(),true,true,true, authorities);
    }
}
