package com.league.data.model;

import java.sql.Timestamp;

public class Team implements  Comparable{

    private long teamID;
    private String teamName;
    private int teamGamesPlayed;
    private int teamWon;
    private int teamDrawn;
    private int teamLost;
    private int teamGoalsFor;
    private int teamGoalsAgainst;
    private String teamForm;
    private Timestamp teamCreated;
    private String teamProfilePicturePath;
    private int teamPoints;
    private int goalDifference;

    public Team() {
    }

    public Team(long teamID, String teamName, int teamGamesPlayed, int teamWon, int teamDrawn, int teamLost, int teamGoalsFor, int teamGoalsAgainst, String teamForm, Timestamp teamCreated, String teamProfilePicturePath, int teamPoints, int goalDifference) {
        this.teamID = teamID;
        this.teamName = teamName;
        this.teamGamesPlayed = teamGamesPlayed;
        this.teamWon = teamWon;
        this.teamDrawn = teamDrawn;
        this.teamLost = teamLost;
        this.teamGoalsFor = teamGoalsFor;
        this.teamGoalsAgainst = teamGoalsAgainst;
        this.teamForm = teamForm;
        this.teamCreated = teamCreated;
        this.teamProfilePicturePath = teamProfilePicturePath;
        this.teamPoints = teamPoints;
        this.goalDifference = goalDifference;
    }

    public Team(String teamName, String teamProfilePicturePath) {
        this.teamName = teamName;
        this.teamProfilePicturePath = teamProfilePicturePath;
    }
    public Team(long teamID, String teamName, String teamProfilePicturePath){
        this.teamID = teamID;
        this.teamName = teamName;
        this.teamProfilePicturePath = teamProfilePicturePath;
    }
    public Team(long teamID, String teamName, int teamGamesPlayed, int teamWon, int teamDrawn, int teamLost, int teamGoalsFor, int teamGoalsAgainst, Timestamp teamCreated, String teamProfilePicturePath) {
        this.teamID = teamID;
        this.teamName = teamName;
        this.teamGamesPlayed = teamGamesPlayed;
        this.teamWon = teamWon;
        this.teamDrawn = teamDrawn;
        this.teamLost = teamLost;
        this.teamGoalsFor = teamGoalsFor;
        this.teamGoalsAgainst = teamGoalsAgainst;
        this.teamCreated = teamCreated;
        this.teamProfilePicturePath = teamProfilePicturePath;
    }

    public long getTeamID() {
        return teamID;
    }

    public void setTeamID(long teamID) {
        this.teamID = teamID;
    }

    public String getTeamName() {
        return teamName;
    }

    public void setTeamName(String teamName) {
        this.teamName = teamName;
    }

    public int getTeamGamesPlayed() {
        return teamGamesPlayed;
    }

    public void setTeamGamesPlayed(int teamGamesPlayed) {
        this.teamGamesPlayed = teamGamesPlayed;
    }

    public int getTeamWon() {
        return teamWon;
    }

    public void setTeamWon(int teamWon) {
        this.teamWon = teamWon;
    }

    public int getTeamDrawn() {
        return teamDrawn;
    }

    public void setTeamDrawn(int teamDrawn) {
        this.teamDrawn = teamDrawn;
    }

    public int getTeamLost() {
        return teamLost;
    }

    public void setTeamLost(int teamLost) {
        this.teamLost = teamLost;
    }

    public int getTeamGoalsFor() {
        return teamGoalsFor;
    }

    public void setTeamGoalsFor(int teamGoalsFor) {
        this.teamGoalsFor = teamGoalsFor;
    }

    public int getTeamGoalsAgainst() {
        return teamGoalsAgainst;
    }

    public void setTeamGoalsAgainst(int teamGoalsAgainst) {
        this.teamGoalsAgainst = teamGoalsAgainst;
    }

    public Timestamp getTeamCreated() {
        return teamCreated;
    }

    public String getTeamProfilePicturePath() {
        return teamProfilePicturePath;
    }

    public void setTeamProfilePicturePath(String teamProfilePicturePath) {
        this.teamProfilePicturePath = teamProfilePicturePath;
    }

    public String getTeamForm() {
        return teamForm;
    }

    public void setTeamForm(String teamForm) {
        this.teamForm = teamForm;
    }

    public int getTeamPoints() {
        return teamPoints;
    }

    public void setTeamPoints(int teamPoints) {
        this.teamPoints = teamPoints;
    }

    public int getGoalDifference() {
        return goalDifference;
    }

    public void setGoalDifference(int goalDifference) {
        this.goalDifference = goalDifference;
    }
    @Override
    public String toString() {
        return "Team{" +
                "teamID=" + teamID +
                ", teamName='" + teamName + '\'' +
                ", teamGamesPlayed=" + teamGamesPlayed +
                ", teamWon=" + teamWon +
                ", teamDrawn=" + teamDrawn +
                ", teamLost=" + teamLost +
                ", teamGoalsFor=" + teamGoalsFor +
                ", teamGoalsAgainst=" + teamGoalsAgainst +
                ", teamForm='" + teamForm + '\'' +
                ", teamCreated=" + teamCreated +
                ", teamProfilePicturePath='" + teamProfilePicturePath + '\'' +
                ", teamPoints=" + teamPoints +
                ", goalDifference=" + goalDifference +
                '}';
    }

    public int compareTo(Object team2) {
        Team team2nd = (Team) team2;
        if  (this.getTeamPoints() == team2nd.getTeamPoints() && this.getTeamGoalsFor() == team2nd.getTeamGoalsFor()){
            if (this.getGoalDifference() > team2nd.getGoalDifference()) return -1;
            else if(team2nd.getGoalDifference() > this.getGoalDifference() ) return 1;
            else return 0;
        }
        else if(this.getTeamPoints() == team2nd.getTeamPoints()){
            if  (this.getTeamGoalsFor() > team2nd.getTeamGoalsFor()) return -1;
            else if(team2nd.getTeamGoalsFor() > this.getTeamGoalsFor()) return 1;
            else return 0;
        }
        else return 0;
    }
}
