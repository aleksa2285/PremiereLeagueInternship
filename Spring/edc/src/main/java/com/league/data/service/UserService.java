package com.league.data.service;

import com.league.data.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class UserService implements UserDAO{

    private NamedParameterJdbcTemplate namedJdbcOperations;

    @Autowired
    public UserService(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
        this.namedJdbcOperations = namedParameterJdbcTemplate;
    }

    public String getAuthenticationToken(String username) {
        return null;
    }

    public String findPasswordByUsername(String username) {
        String sql = "SELECT USER_PASSWORD from users where USER_USERNAME =:username";
        Map<String, Object> namedParameters = new HashMap<String, Object>();
        namedParameters.put("username", username);
        String result = this.namedJdbcOperations.queryForObject(sql, namedParameters, String.class);
        return result;
    }

    public String findRoleByUsername(String username) {
        String sql = "SELECT USER_ROLE from users where USER_USERNAME =:username";
        Map<String, Object> namedParameters = new HashMap<String, Object>();
        namedParameters.put("username", username);
        String result = this.namedJdbcOperations.queryForObject(sql, namedParameters, String.class);
        return result;
    }

    public String findByUsername(String username) {

        String sql = "SELECT USER_USERNAME from users where USER_USERNAME =:username";
        Map<String, Object> namedParameters = new HashMap<String, Object>();
        namedParameters.put("username", username);
        String result = this.namedJdbcOperations.queryForObject(sql, namedParameters, String.class);
        return result;
    }
}

