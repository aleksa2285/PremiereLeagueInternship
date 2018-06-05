package com.league.data.dao;

import com.league.data.model.User;

public interface UserDAO {

    User findByUsername();
    String getAuthenticationToken(String username);

}
