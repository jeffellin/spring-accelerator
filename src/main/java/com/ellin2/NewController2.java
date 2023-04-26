package com.ellin2;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/post")
public class NewController2 {

@GetMapping("/hello/{name}")
    public String sayHello(@PathVariable String name){
        return "Hello:"+ name;
    }

}
