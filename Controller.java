package com.aid.demo;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@CrossOrigin("http://localhost:8084/")

@RequestMapping("/demo")
public class Controller {
    @Autowired
    Repositary repo;

    @PostMapping("/savedata")
    public String saveData(@RequestBody StudentModel s){
        repo.save(s);
        return "insertion success";
    }
    @GetMapping("/getdata")
    List<StudentModel> getdata(){
        return repo.findAll();
    }
    
    
}
//http://localhost:8084/demo/getdata