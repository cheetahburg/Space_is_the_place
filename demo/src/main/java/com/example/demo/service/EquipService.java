package com.example.demo.service;

import com.example.demo.dao.EquipDao;
import com.example.demo.model.Equip;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Service
public class EquipService {
    @Autowired
    private EquipDao equipDao;

    public Map<String,Equip> fetchEquip(){


        List<Equip> equipList=equipDao.fetchEquip();
        System.out.println(equipList);
        Map<String,Equip> res = new HashMap<String, Equip>();
        for (int i=0;i<equipList.size();i++){
            Equip tmpEquip=equipList.get(i);
            res.put(tmpEquip.getItemId(),tmpEquip);
        }
        return res;
    }

    public Map<String,Equip> myEquip(int userId){
        System.out.println(equipDao.myEquip(userId));
        List<Equip> equipList=equipDao.myEquip(userId);
        Map<String,Equip> res = new HashMap<String, Equip>();
        for (int i=0;i<equipList.size();i++){
            Equip tmpEquip=equipList.get(i);
            res.put(tmpEquip.getItemId(),tmpEquip);
        }
        return res;
    }

}
