package com.league.data.service;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class UserDetailsServiceImpl implements UserDetailsService {

    private UserService userService;

    public UserDetailsServiceImpl() {
    }
    public UserDetailsServiceImpl(UserService userService) {
        this.userService = userService;
    }
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        String username = userService.findByUsername(s);
        String password = userService.findPasswordByUsername(s);
        String role = userService.findRoleByUsername(s);
        if (username == null)
            throw new UsernameNotFoundException("User doesn't exist");
        List<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
        grantedAuthorities.add(new SimpleGrantedAuthority(role));
        return new org.springframework.security.core.userdetails.User(username, password, grantedAuthorities);
    }
}
