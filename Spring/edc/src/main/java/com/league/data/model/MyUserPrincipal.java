//package com.league.data.model;
//
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.userdetails.UserDetails;
//
//import java.util.ArrayList;
//import java.util.Arrays;
//import java.util.Collection;
//import java.util.List;
//
//public class MyUserPrincipal implements UserDetails {
//
//    private User user;
//
//    public MyUserPrincipal(User user) {
//        this.user = user;
//    }
//
//    public Collection<? extends GrantedAuthority> getAuthorities() {
//        List authorities = new ArrayList();
//        authorities.add(this.user.getRole());
//        return authorities;
//    }
//    public String getPassword() {
//        return this.user.getPassword();
//    }
//    public String getUsername() {
//        return this.user.getUsername();
//    }
//    public boolean isAccountNonExpired() { return false; }
//    public boolean isAccountNonLocked() {
//        return false;
//    }
//    public boolean isCredentialsNonExpired() {
//        return false;
//    }
//    public boolean isEnabled() {
//        return false;
//    }
//}
