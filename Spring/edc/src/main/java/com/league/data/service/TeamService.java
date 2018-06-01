package com.league.data.service;

import com.league.data.dao.TeamDAO;
import com.league.data.model.Team;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class TeamService implements TeamDAO {

    private JdbcTemplate jdbcOperations;
    private NamedParameterJdbcTemplate namedJdbcOperations;

    @Autowired
    public TeamService(JdbcTemplate jdbcTemplate, NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
        this.jdbcOperations = jdbcTemplate;
        this.namedJdbcOperations = namedParameterJdbcTemplate;
    }

//    public List<Team> getTeams() {
//        List<Team> teams = new ArrayList<Team>();
//        List<Map<String, Object>> rows = jdbcOperations.queryForList("SELECT * from team");
//        for(Map row: rows){
//            Team team = new Team();
//            team.setTeamID((Long)row.get("TEAM_ID"));
//            team.setTeamName((String)row.get("TEAM_NAME"));
//            team.setTeamProfilePicturePath((String)row.get("TEAM_PROFILE_PATH"));
//            teams.add(team);
//        }
//        return teams;
//    }
    public List<Team> getAllTeams(){
        String query = "SELECT * FROM team";
        List<Team> teams = this.namedJdbcOperations.query(query, new TeamRowMapper());
        return teams;
    }
    public Team getTeamByName(String teamName) {
        Team team = this.jdbcOperations.queryForObject("SELECT * from team WHERE TEAM_NAME = ?", new Object[] { teamName }, new TeamRowMapper() );
        return team;
    }
    public Team getTeamById(long id) {
        Team team = this.jdbcOperations.queryForObject("SELECT * from team WHERE TEAM_ID=?", new Object[]{id}, new TeamRowMapper());
        System.out.println("Get team by id + " + team.toString());
        return team;
    }
    public int insertOrUpdateTeam(Team team) {

        String query = "UPDATE team SET TEAM_GAMES_PLAYED = :team_games_played, TEAM_WON =:team_won, TEAM_DRAWN=:team_drawn, TEAM_LOST=:team_lost, TEAM_GOALS_FOR=:team_goals_for, TEAM_GOALS_AGAINST=:team_goals_against, TEAM_FORM=:team_form, TEAM_POINTS=:team_points, TEAM_GOAL_DIFFERENCE=:team_goal_difference WHERE TEAM_ID=:team_id";
        Map<String, Object> namedParameters = new HashMap<String, Object>();
        namedParameters.put("team_id", team.getTeamID());
        namedParameters.put("team_games_played", team.getTeamGamesPlayed());
        namedParameters.put("team_won", team.getTeamWon());
        namedParameters.put("team_drawn", team.getTeamDrawn());
        namedParameters.put("team_lost", team.getTeamLost());
        namedParameters.put("team_goals_for", team.getTeamGoalsFor());
        namedParameters.put("team_goals_against", team.getTeamGoalsAgainst());
        namedParameters.put("team_form", team.getTeamForm());
        namedParameters.put("team_points", team.getTeamPoints());
        namedParameters.put("team_goal_difference", team.getGoalDifference());
        return namedJdbcOperations.update(query, namedParameters);

    }
}
final class TeamRowMapper implements RowMapper<Team>{

    public Team mapRow(ResultSet resultSet, int i) throws SQLException {
        return new Team(resultSet.getLong("TEAM_ID"),
                        resultSet.getString("TEAM_NAME"),
                        resultSet.getInt("TEAM_GAMES_PLAYED"),
                        resultSet.getInt("TEAM_WON"),
                        resultSet.getInt("TEAM_DRAWN"),
                        resultSet.getInt("TEAM_LOST"),
                        resultSet.getInt("TEAM_GOALS_FOR"),
                        resultSet.getInt("TEAM_GOALS_AGAINST"),
                        resultSet.getString("TEAM_FORM"),
                        resultSet.getTimestamp("TEAM_TIMESTAMP"),
                        resultSet.getString("TEAM_PROFILE_PATH"),
                        resultSet.getInt("TEAM_POINTS"),
                        resultSet.getInt("TEAM_GOAL_DIFFERENCE"));

    }
}

