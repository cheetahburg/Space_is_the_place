package com.example.demo.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Equip {
    //共有字段
    private final String itemId;//装备id
    private final String itemType;//装备类型
    private final String itemName;//装备名称
    private final int itemPrice;//装备价格
    private final int itemLevel;//装备等级或品质
    private final String itemInfo;//描述(故事)
    private final int itemWeight;//装备重量
    //武器有关字段
    private final int weaponEnergy;//耗能
    private final float weaponSpeed;//子弹速度
    private final int weaponDamage;//(单发)伤害c
    private final float weaponCD;//射击间隔
    private final float weaponCharge;//射击蓄力时间
    private final int weaponArea;//射界
    private final int weaponRadius;//爆炸半径
    private final String weaponFunc;//特殊性质

    //飞船有关字段
    private final String shipType;//类型
    private final int shipCapacity;//载重
    private final int shipEnergy;//能量条长度
    private final int shipRefuel;//能量恢复速度
    private final int shipHP;//生命值
    private final String shipFunc;//超频功能描述
    //引擎有关字段
    private final float engineSpeed;//巡航推力
    private final float enginePower;//加速推力
    private final float engineGrad;//转向推力
    private final int engineEnergy;//耗能
    private final float engineBoostSpeedRate;//过载增速比
    private final float engineBoostEnergyRate;//过载时耗能增加比率
    //工程改制有关字段
    private final String altFunc;//改制性质
    private final int altEnergy;
    //特殊装置有关字段
    private final String deviceFunc;//特殊装置功能
    private final int deviceEnergy;


    public Equip(@JsonProperty("itemId") String itemId,
                 @JsonProperty("itemType") String itemType,
                 @JsonProperty("itemName")String itemName,
                 @JsonProperty("itemPrice")int itemPrice,
                 @JsonProperty("itemLevel")int itemLevel,
                 @JsonProperty("itemInfo")String itemInfo,
                 @JsonProperty("itemWeight")int itemWeight,

                 @JsonProperty("weaponEnergy")int weaponEnergy,
                 @JsonProperty("weaponSpeed") float weaponSpeed,
                 @JsonProperty("weaponDamage")int weaponDamage,
                 @JsonProperty("weaponCD")float weaponCD,
                 @JsonProperty("weaponCharge")float weaponCharge,
                 @JsonProperty("weaponArea")int weaponArea,
                 @JsonProperty("weaponRadius")int weaponRadius,
                 @JsonProperty("weaponFunc")String weaponFunc,

                 @JsonProperty("shipType")String shipType,
                 @JsonProperty("shipCapacity")int shipCapacity,
                 @JsonProperty("shipEnergy")int shipEnergy,
                 @JsonProperty("shipRefuel")int shipRefuel,
                 @JsonProperty("shipHP")int shipHP,
                 @JsonProperty("shipFunc") String shipFunc,

                 @JsonProperty("engineSpeed")float engineSpeed,
                 @JsonProperty("enginePower") float enginePower,
                 @JsonProperty("engineGrad")float engineGrad,
                 @JsonProperty("engineEnergy") int engineEnergy,
                 @JsonProperty("engineBoostSpeedRate")float engineBoostSpeedRate,
                 @JsonProperty("engineBoostEnergyRate")float engineBoostEnergyRate,

                 @JsonProperty("altFunc")String altFunc,
                 @JsonProperty("altEnergy")int altEnergy,
                 @JsonProperty("deviceFunc")String deviceFunc,
                 @JsonProperty("deviceEnergy")int deviceEnergy) {
        this.itemId = itemId;
        this.itemType = itemType;
        this.itemName = itemName;
        this.itemPrice = itemPrice;
        this.itemLevel = itemLevel;
        this.itemInfo = itemInfo;
        this.itemWeight = itemWeight;
        this.weaponEnergy = weaponEnergy;
        this.weaponSpeed = weaponSpeed;
        this.weaponDamage = weaponDamage;
        this.weaponCD = weaponCD;
        this.weaponCharge = weaponCharge;
        this.weaponArea = weaponArea;
        this.weaponRadius = weaponRadius;
        this.weaponFunc = weaponFunc;
        this.shipType = shipType;
        this.shipCapacity = shipCapacity;
        this.shipEnergy = shipEnergy;
        this.shipRefuel = shipRefuel;
        this.shipHP = shipHP;
        this.shipFunc = shipFunc;
        this.engineSpeed = engineSpeed;
        this.enginePower = enginePower;
        this.engineGrad = engineGrad;
        this.engineEnergy = engineEnergy;
        this.engineBoostSpeedRate = engineBoostSpeedRate;
        this.engineBoostEnergyRate = engineBoostEnergyRate;
        this.altFunc = altFunc;
        this.altEnergy = altEnergy;
        this.deviceFunc = deviceFunc;
        this.deviceEnergy = deviceEnergy;
        //System.out.println(this.shipFunc.toString() );
    }

    public String getItemId() {
        return itemId;
    }

    public String getItemType() {
        return itemType;
    }

    public String getItemName() {
        return itemName;
    }

    public int getItemPrice() {
        return itemPrice;
    }

    public int getItemLevel() {
        return itemLevel;
    }

    public String getItemInfo() {
        return itemInfo;
    }

    public int getItemWeight() {
        return itemWeight;
    }

    public int getWeaponEnergy() {
        return weaponEnergy;
    }

    public float getWeaponSpeed() {
        return weaponSpeed;
    }

    public int getWeaponDamage() {
        return weaponDamage;
    }

    public float getWeaponCD() {
        return weaponCD;
    }

    public float getWeaponCharge() {
        return weaponCharge;
    }

    public int getWeaponArea() {
        return weaponArea;
    }

    public int getWeaponRadius() {
        return weaponRadius;
    }

    public String getWeaponFunc() {
        return weaponFunc;
    }

    public String getShipType() {
        return shipType;
    }

    public int getShipCapacity() {
        return shipCapacity;
    }

    public int getShipEnergy() {return shipEnergy;}

    public int getShipRefuel() {
        return shipRefuel;
    }

    public int getShipHP() {
        return shipHP;
    }

    public String getShipFunc() {
        return shipFunc;
    }

    public float getEngineSpeed() {
        return engineSpeed;
    }

    public float getEnginePower() {
        return enginePower;
    }

    public float getEngineGrad() {
        return engineGrad;
    }

    public int getEngineEnergy() {
        return engineEnergy;
    }

    public float getEngineBoostSpeedRate() {
        return engineBoostSpeedRate;
    }

    public float getEngineBoostEnergyRate() {
        return engineBoostEnergyRate;
    }

    public String getAltFunc() {
        return altFunc;
    }
    public int getAltEnergy() {
        return altEnergy;
    }

    public String getDeviceFunc() {
        return deviceFunc;
    }
    public int getDeviceEnergy() {
        return deviceEnergy;
    }
    //最高速度=function(巡航推力， 总重)
    //加速度=function(加速推力， 总重)
    //转向速度=function(转向推力， 总重)
    //过载时的最高速度、加速度、转向速度：function(巡航/加速/转向推力, 过载增速比, 总重)

}
