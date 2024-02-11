package com.example.societyapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
    @RequestMapping("/")
    public String start(){
        return "index";
    }

    @RequestMapping("/chat")
    public String chat(){
        return "chat";
    }
}
