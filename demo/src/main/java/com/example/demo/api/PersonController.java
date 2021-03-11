package com.example.demo.api;

import com.example.demo.model.Person;
import com.example.demo.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RequestMapping("api/v1/person")
@RestController
@CrossOrigin
public class PersonController {

    private PersonService personService;

    @Autowired
    public PersonController(PersonService personService) {
        this.personService = personService;
    }

    @PostMapping(value = "/register")
    public int insert(@RequestBody Map<String,String> m){
        return personService.insert(m.get("userName"),m.get("password"),m.get("email"));
    }

    //todo:change userId into sessionId
    @PostMapping(value="/login")
    public int loginCheck(@RequestBody Map m ){
        System.out.println(m.get("password").getClass().getName().toString());
        System.out.println("!");
        int userId=personService.loginCheck(m.get("userName").toString(),m.get("password").toString());
        //userId==-1 means login failure
        return userId;
        //return personService.loginCheck("subversionany","abc123");
    }
    //todo:add fetchUserInfo
    @PostMapping(value="/fetchUserInfo")
    public String fetchUserInfo(@RequestBody Map m){
        String userInfo=personService.fetchUserInfo(Integer.parseInt(m.get("userId").toString()));
        return userInfo;
    }


    //client fetch
    @PostMapping(value="/property/fetchEquip")
    public Map<String,String> fetchEquip(){
        Map<String,String> resMap = new HashMap<String,String>();
        resMap.put("asd","2334");
        resMap.put("hjhdfbds","sd");
        return resMap;
    }

}
