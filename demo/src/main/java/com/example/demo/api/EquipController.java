package com.example.demo.api;
import com.example.demo.model.Equip;
import com.example.demo.service.EquipService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.Set;

@RequestMapping("api/v1/equip")
@RestController
@CrossOrigin
public class EquipController {
    private EquipService equipService;

    @Autowired
    public EquipController(EquipService equipService){
        this.equipService=equipService;
    }

    //todo: use sessionId instead of userId
    @PostMapping(value="/fetchEquip")
    public String fetchEquip() throws JsonProcessingException {
        //int userId=(Integer)param;
        ObjectMapper mapper = new ObjectMapper();
        String jsonList= mapper.writeValueAsString(equipService.fetchEquip());
        System.out.println(jsonList);
        return jsonList;
    }

    @PostMapping(value="/myEquip")
    public String myEquip(@RequestBody Map<String,Integer> param) throws JsonProcessingException{
        int userId=param.get("userId");
        ObjectMapper mapper =new ObjectMapper();
        String jsonList= mapper.writeValueAsString(equipService.myEquip(userId));
        return jsonList;
    }
}
