package com.league.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String home(){
        return "views/Home"; }
    @RequestMapping(value="/login", method = RequestMethod.GET)
    public String login(){
        return "views/Login";
    }
    @RequestMapping(value="/games", method = RequestMethod.GET)
    public String matches(){
        return "views/Games";
    }

}
