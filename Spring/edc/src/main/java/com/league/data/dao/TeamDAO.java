package com.league.data.dao;

import com.league.data.model.Team;

import java.util.List;
import java.util.Set;

public interface TeamDAO {

    int insertOrUpdateTeam(Team team);
    Team getTeamById(long id);
    List<Team> getAllTeams();
}
