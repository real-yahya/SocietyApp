package com.example.societyapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Objects;

@Controller
public class MainController {
    @RequestMapping("/")
    public String start(Model model, @RequestParam(value = "societyName", required = false) String societyName){
        ArrayList<ArrayList<String>> posts_list = new ArrayList<>();
        if (Objects.equals(societyName, "volleyball")){
            ArrayList<String> post1 =  new ArrayList<>();
            post1.add("https://multimedia.bbycastatic.ca/multimedia/products/500x500/102/10293/10293599.jpg");
            post1.add("New Gear!");
            post1.add("The society has invested in some new gear for our high flying squad!");
            posts_list.add(post1);

            ArrayList<String> post2 =  new ArrayList<>();
            post2.add("https://www.dmu.ac.uk/webimages/About-DMU-images/News-images/2020/October/Campus-oct-2020.jpg");
            post2.add("Upcoming Game");
            post2.add("We will have a game against DMU next Tuesday");
            posts_list.add(post2);

        }
        model.addAttribute("posts", posts_list);

        return "index";
    }

    @RequestMapping("/chat")
    public String chat(){
        return "chat";
    }
}
