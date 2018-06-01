package com.league.controller;

import com.league.data.model.Game;
import com.league.data.model.Team;
import com.league.data.service.GameService;
import com.league.data.service.TeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class GameController {

    private GameService gameService;
    private TeamService teamService;
    private List<Game> games;
    private int marker;
    private Team teamHome;
    private Team teamAway;

    @Autowired
    public GameController(JdbcTemplate jdbcTemplate, NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
        this.gameService = new GameService(jdbcTemplate, namedParameterJdbcTemplate);
        this.teamService = new TeamService(jdbcTemplate, namedParameterJdbcTemplate);
    }
    @RequestMapping(value="/games/get", method = RequestMethod.GET)
    public List<Game> testfirst(){
        games = this.gameService.findAllGames();
        return this.games;
    }
    @RequestMapping(value="/games/add", method = RequestMethod.POST)
    public void test(@RequestBody Game game){

        teamHome = this.teamService.getTeamById(game.getTeamHomeID());
        teamAway = this.teamService.getTeamById(game.getTeamAwayID());
        marker = this.gameService.insertGame(game);

        System.out.println("marker + " + marker);
        System.out.println(teamHome + " team home");
        System.out.println(teamAway + "team away");
        if (marker!=0){
            //overall games played increment
            teamHome.setTeamGamesPlayed(teamHome.getTeamGamesPlayed() + 1);
            teamAway.setTeamGamesPlayed(teamAway.getTeamGamesPlayed() + 1);

                if (game.getTeamHomeGoals() > game.getTeamAwayGoals()){

                    //won/lost duel game increment
                    teamHome.setTeamWon(teamHome.getTeamWon() + 1);
                    teamAway.setTeamLost(teamAway.getTeamLost() + 1);
                    //drawn games 0 increment
                    teamHome.setTeamDrawn(teamHome.getTeamDrawn());
                    teamAway.setTeamDrawn(teamAway.getTeamDrawn());
                    //team home goals for and goals against
                    teamHome.setTeamGoalsFor(teamHome.getTeamGoalsFor() + game.getTeamHomeGoals());
                    teamHome.setTeamGoalsAgainst(teamHome.getTeamGoalsAgainst() + game.getTeamAwayGoals());
                    //team away goals for and goals against
                    teamAway.setTeamGoalsFor(teamAway.getTeamGoalsFor() + game.getTeamAwayGoals());
                    teamAway.setTeamGoalsAgainst(teamAway.getTeamGoalsAgainst() + game.getTeamHomeGoals());
                    //form increment ( 2 - win, 1 - drawn, 0 - loose )
                    teamHome.setTeamForm(teamHome.getTeamForm() + "2");
                    teamAway.setTeamForm(teamAway.getTeamForm() + "0");
                    //points increment
                    teamHome.setTeamPoints(teamHome.getTeamPoints() + 3);
                    teamAway.setTeamPoints(teamAway.getTeamPoints());
                    System.out.println("stampanje domaceg tima" + teamHome.toString());
                    //goal difference
                    teamHome.setGoalDifference(teamHome.getTeamGoalsFor() - teamHome.getTeamGoalsAgainst());
                    teamAway.setGoalDifference(teamAway.getTeamGoalsFor() - teamAway.getTeamGoalsAgainst());

                    this.teamService.insertOrUpdateTeam(teamHome);
                    this.teamService.insertOrUpdateTeam(teamAway);
                }
                else if(game.getTeamHomeGoals() < game.getTeamAwayGoals()){

                    //won/lost duel game increment

                    teamHome.setTeamLost(teamHome.getTeamLost() + 1);
                    teamAway.setTeamWon(teamAway.getTeamWon() + 1);
                    //drawn games 0 increment

                    teamHome.setTeamDrawn(teamHome.getTeamDrawn());
                    teamAway.setTeamDrawn(teamAway.getTeamDrawn());
                    //team home goals for and goals against

                    teamHome.setTeamGoalsFor(teamHome.getTeamGoalsFor() + game.getTeamHomeGoals());
                    teamHome.setTeamGoalsAgainst(teamHome.getTeamGoalsAgainst() + game.getTeamAwayGoals());
                    //team away goals for and goals against

                    teamAway.setTeamGoalsFor(teamAway.getTeamGoalsFor() + game.getTeamAwayGoals());
                    teamAway.setTeamGoalsAgainst(teamAway.getTeamGoalsAgainst() + game.getTeamHomeGoals());
                    //form increment ( 2 - win, 1 - draw, 0 - loose)
                    teamHome.setTeamForm(teamHome.getTeamForm() + "0");
                    teamAway.setTeamForm(teamAway.getTeamForm() + "2");
                    //points increment
                    teamHome.setTeamPoints(teamHome.getTeamPoints());
                    teamAway.setTeamPoints(teamAway.getTeamPoints() + 3);
                    //goal difference
                    teamHome.setGoalDifference(teamHome.getTeamGoalsFor() - teamHome.getTeamGoalsAgainst());
                    teamAway.setGoalDifference(teamAway.getTeamGoalsFor() - teamAway.getTeamGoalsAgainst());

                    this.teamService.insertOrUpdateTeam(teamHome);
                    this.teamService.insertOrUpdateTeam(teamAway);
                }
                else{
                    //set draw for both teams
                    teamHome.setTeamDrawn(teamHome.getTeamDrawn() + 1);
                    teamAway.setTeamDrawn(teamAway.getTeamDrawn() + 1);
                    //set won + 0 for both teams
                    teamHome.setTeamWon(teamHome.getTeamWon());
                    teamAway.setTeamWon(teamAway.getTeamWon());
                    //set lost + 0 for both teams
                    teamHome.setTeamLost(teamHome.getTeamLost());
                    teamAway.setTeamLost(teamAway.getTeamLost());
                    //team home, goals for and against
                    teamHome.setTeamGoalsFor(teamHome.getTeamGoalsFor() + game.getTeamHomeGoals());
                    teamHome.setTeamGoalsAgainst(teamHome.getTeamGoalsAgainst() + game.getTeamAwayGoals());
                    //team away, goals for and against
                    teamAway.setTeamGoalsFor(teamAway.getTeamGoalsFor() + game.getTeamAwayGoals());
                    teamAway.setTeamGoalsAgainst(teamAway.getTeamGoalsAgainst() + game.getTeamHomeGoals());
                    //form increment
                    teamHome.setTeamForm(teamHome.getTeamForm() + "1");
                    teamAway.setTeamForm(teamAway.getTeamForm() + "1");
                    //points increment
                    teamHome.setTeamPoints(teamHome.getTeamPoints() + 1);
                    teamAway.setTeamPoints(teamAway.getTeamPoints() + 1);
                    //goal difference
                    teamHome.setGoalDifference(teamHome.getTeamGoalsFor() - teamHome.getTeamGoalsAgainst());
                    teamAway.setGoalDifference(teamAway.getTeamGoalsFor() - teamAway.getTeamGoalsAgainst());

                    this.teamService.insertOrUpdateTeam(teamHome);
                    this.teamService.insertOrUpdateTeam(teamAway);
                }

        }


    }
}
