package com.league.controller;

import com.league.data.model.Team;
import com.league.data.service.TeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@RestController
public class TeamController {

    private TeamService teamService;
    private List<Team> teams;

    @Autowired
    public TeamController(JdbcTemplate jdbcTemplate, NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
        this.teamService = new TeamService(jdbcTemplate,namedParameterJdbcTemplate);
        this.teams = new ArrayList<Team>();
    }
    @RequestMapping("/teams/get")
    public List<Team> getTeams(){
        this.teams.addAll(this.teamService.getAllTeams());
        Collections.sort(this.teams);
        return this.teams;
    }
}
