package com.league.data.model;

import java.util.Collection;
import java.util.List;

public class User {

    private long userID;
    private String userEmail;
    private String password;
    private String username;
    private String role;
    private String authenticationToken;
    private List grantedAuthorities;

    public User(String username, String password, List grantedAuthorities) {
        this.username = username;
        this.password = password;
        this.grantedAuthorities = grantedAuthorities;
    }
    public User(String userEmail, String password, String username, String role, String authenticationToken) {
        this.userEmail = userEmail;
        this.password = password;
        this.username = username;
        this.role = role;
        this.authenticationToken = authenticationToken;
    }

    public long getUserID() {
        return userID;
    }

    public void setUserID(long userID) {
        this.userID = userID;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getAuthenticationToken() {
        return authenticationToken;
    }

    public void setAuthenticationToken(String authenticationToken) {
        this.authenticationToken = authenticationToken;
    }

    public Collection getGrantedAuthorities() {
        return grantedAuthorities;
    }
    public void setGrantedAuthorities(List grantedAuthorities) {
        this.grantedAuthorities = grantedAuthorities;
    }

    @Override
    public String toString() {
        return "User{" +
                "userID=" + userID +
                ", userEmail='" + userEmail + '\'' +
                ", password='" + password + '\'' +
                ", username='" + username + '\'' +
                ", role='" + role + '\'' +
                ", authenticationToken='" + authenticationToken + '\'' +
                '}';
    }
}
