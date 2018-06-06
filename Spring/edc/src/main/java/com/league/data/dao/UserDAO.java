package com.league.data.dao;

public interface UserDAO {

    String findByUsername(String username);
    String findPasswordByUsername(String username);
    String findRoleByUsername(String username);

}
