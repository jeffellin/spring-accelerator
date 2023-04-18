package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/post")
public class BasicController {

@GetMapping("/hello/{name}")
    public String sayHello(@PathVariable String name){
        return "Hello:"+ name;
    }

}
