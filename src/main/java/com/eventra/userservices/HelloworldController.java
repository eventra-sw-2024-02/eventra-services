package com.eventra.userservices;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class HelloworldController {

    @GetMapping("hello")
    public String SayHello(){
        return "Hello World";
    }
}
