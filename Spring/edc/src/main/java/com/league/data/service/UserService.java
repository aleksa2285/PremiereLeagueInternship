package com.league.data.service;

import com.league.data.dao.UserDAO;
import com.league.data.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserService implements UserDAO{

    private NamedParameterJdbcTemplate namedJdbcOperations;

    @Autowired
    public UserService(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
        this.namedJdbcOperations = namedParameterJdbcTemplate;
    }

    public User findByUsername() {
        return null;
    }

    public String getAuthenticationToken(String username) {
        return null;
    }

//    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//
//        String sql = "SELECT * from users where USER_USERNAME =:username";
//        Map<String, Object> namedParameters = new HashMap<String, Object>();
//        namedParameters.put("username", username);
//        User user = this.namedJdbcOperations.queryForObject(sql, namedParameters, User.class);
//        if (user == null) throw new UsernameNotFoundException(username);
//        else return new MyUserPrincipal(user);
//
//    }
}

