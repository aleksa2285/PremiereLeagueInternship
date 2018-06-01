package com.league.data.dao;

import com.league.data.model.Game;

import java.util.List;

public interface GameDAO {

    int insertGame(Game game);
    List<Game> findAllGames();

}
