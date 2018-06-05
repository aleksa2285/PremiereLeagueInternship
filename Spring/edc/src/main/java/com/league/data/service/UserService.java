package com.league.data.service;

import com.league.data.model.MyUserPrincipal;
import com.league.data.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class UserService implements UserDetailsService{

    private NamedParameterJdbcTemplate namedJdbcOperations;

    @Autowired
    public UserService(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
        this.namedJdbcOperations = namedParameterJdbcTemplate;
    }

    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        String sql = "SELECT * from users where USER_USERNAME =:username";
        Map<String, Object> namedParameters = new HashMap<String, Object>();
        namedParameters.put("username", username);
        User user = this.namedJdbcOperations.queryForObject(sql, namedParameters, User.class);
        if (user == null) throw new UsernameNotFoundException(username);
        else return new MyUserPrincipal(user);

    }
}

