package com.ruben.backend.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BackendController {

    @GetMapping(path = "/message")
    public String getMessage(){
        return "Hey";
    }
}
