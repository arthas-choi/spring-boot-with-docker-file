package com.yom.springbootdocker.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiController {

    @GetMapping("/v1/getResponse")
    public String getResponse(){

        return "This is spring-boot with docker project";
    }
}
