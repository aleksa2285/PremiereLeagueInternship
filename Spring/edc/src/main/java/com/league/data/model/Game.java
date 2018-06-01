package com.league.data.model;

import java.sql.Timestamp;

public class Game {

    private long matchID;
    private long teamHomeID;
    private long teamAwayID;
    private String teamHomeName;
    private String teamAwayName;
    private Timestamp matchTimestamp;
    private int teamHomeGoals;
    private int teamAwayGoals;
    private int round;

    public Game() {
    }

    public Game(long teamHomeID, long teamAwayID, int teamHomeGoals, int teamAwayGoals, int round) {
        this.teamHomeID = teamHomeID;
        this.teamAwayID = teamAwayID;
        this.teamHomeGoals = teamHomeGoals;
        this.teamAwayGoals = teamAwayGoals;
        this.round = round;
    }

    public Game(String teamHomeName, String teamAwayName, int teamHomeGoals, int teamAwayGoals, int round) {
        this.teamHomeName = teamHomeName;
        this.teamAwayName = teamAwayName;
        this.teamHomeGoals = teamHomeGoals;
        this.teamAwayGoals = teamAwayGoals;
        this.round = round;
    }

    public long getMatchID() {
        return matchID;
    }

    public void setMatchID(long matchID) {
        this.matchID = matchID;
    }

    public long getTeamHomeID() {
        return teamHomeID;
    }

    public void setTeamHomeID(long teamHomeID) {
        this.teamHomeID = teamHomeID;
    }

    public long getTeamAwayID() {
        return teamAwayID;
    }

    public void setTeamAwayID(long teamAwayID) {
        this.teamAwayID = teamAwayID;
    }

    public String getTeamHomeName() {
        return teamHomeName;
    }

    public void setTeamHomeName(String teamHomeName) {
        this.teamHomeName = teamHomeName;
    }

    public String getTeamAwayName() {
        return teamAwayName;
    }

    public void setTeamAwayName(String teamAwayName) {
        this.teamAwayName = teamAwayName;
    }

    public Timestamp getMatchTimestamp() {
        return matchTimestamp;
    }

    public void setMatchTimestamp(Timestamp matchTimestamp) {
        this.matchTimestamp = matchTimestamp;
    }

    public int getTeamHomeGoals() {
        return teamHomeGoals;
    }

    public void setTeamHomeGoals(int teamHomeGoals) {
        this.teamHomeGoals = teamHomeGoals;
    }

    public int getTeamAwayGoals() {
        return teamAwayGoals;
    }

    public void setTeamAwayGoals(int teamAwayGoals) {
        this.teamAwayGoals = teamAwayGoals;
    }

    public int getRound() {
        return round;
    }

    public void setRound(int round) {
        this.round = round;
    }

    @Override
    public String toString() {
        return "Game{" +
                "matchID=" + matchID +
                ", teamHomeID=" + teamHomeID +
                ", teamAwayID=" + teamAwayID +
                ", teamHomeName='" + teamHomeName + '\'' +
                ", teamAwayName='" + teamAwayName + '\'' +
                ", matchTimestamp=" + matchTimestamp +
                ", teamHomeGoals=" + teamHomeGoals +
                ", teamAwayGoals=" + teamAwayGoals +
                ", round=" + round +
                '}';
    }
}
