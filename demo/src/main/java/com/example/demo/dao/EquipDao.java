package com.example.demo.dao;

import com.example.demo.model.Equip;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;
import java.util.Set;

@Mapper
public interface EquipDao {
    //fetch whole equipment list after login

    @Select("select itemId,itemType,itemName,itemPrice,itemLevel,itemInfo,itemWeight,"
            +"weaponEnergy,weaponSpeed,weaponDamage,weaponCD,weaponCharge,weaponArea,weaponRadius,weaponFunc,"
            +"shipType,shipCapacity,shipEnergy,shipRefuel,shipHP,shipFunc,"
            +"engineSpeed,enginePower,engineGrad,engineEnergy,engineBoostSpeedRate,engineBoostEnergyRate,"
            +"altFunc,altEnergy,"+"deviceFunc,deviceEnergy "
            + "from Equip")
    List<Equip> fetchEquip();

    @Select("select from Equip where userId=#{userId}")
    List<Equip> myEquip(int userId);
}
