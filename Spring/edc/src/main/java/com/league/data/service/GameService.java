package com.league.data.service;

import com.league.data.dao.GameDAO;
import com.league.data.model.Game;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcOperations;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class GameService implements GameDAO {

    private JdbcOperations jdbcOperations;
    private NamedParameterJdbcTemplate namedJdbcOperations;


    @Autowired
    public GameService(JdbcOperations jdbcOperations, NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
        this.jdbcOperations = jdbcOperations;
        this.namedJdbcOperations = namedParameterJdbcTemplate;
    }

    public int insertGame(Game game) {
       return this.jdbcOperations.update("INSERT INTO game (TEAM_ID, TEA_TEAM_ID, MATCH_HOME_GOALS, MATCH_AWAY_GOALS, MATCH_ROUND) values (?, ?, ?, ?, ?)", new Object[]{game.getTeamHomeID(), game.getTeamAwayID(), game.getTeamHomeGoals(), game.getTeamAwayGoals(), game.getRound()});
    }

    public List<Game> findAllGames() {
        String query = "select t1.TEAM_NAME TEAM_HOME_NAME, t2.TEAM_NAME TEAM_AWAY_NAME, game.MATCH_HOME_GOALS, game.MATCH_AWAY_GOALS, game.MATCH_ROUND\n" +
                "from game \n" +
                "join team t1 on game.TEAM_ID = t1.TEAM_ID\n" +
                "join team t2 on game.TEA_TEAM_ID = t2.TEAM_ID\n" +
                "order by game.MATCH_TIMESTAMP";
        List<Game> games = this.namedJdbcOperations.query(query, new GameRowMapper());
        return games;
    }
}
final class GameRowMapper implements RowMapper<Game>{

    public Game mapRow(ResultSet resultSet, int i) throws SQLException {
        return new Game(resultSet.getString("TEAM_HOME_NAME"),
                        resultSet.getString("TEAM_AWAY_NAME"),
                        resultSet.getInt("MATCH_HOME_GOALS"),
                        resultSet.getInt("MATCH_AWAY_GOALS"),
                        resultSet.getInt("MATCH_ROUND"));
    }
}

