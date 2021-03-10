/// @description Insert description here
// You can write your code in this editor

Xs=array_create(10,0);
Ys=array_create(10,0);

unit=75;
sqr3=1.732*unit;

Xs=array_init(-unit,unit,2*unit,unit,-unit,-2*unit);
Ys=array_init(sqr3,sqr3,0,-sqr3,-sqr3,0);

Weights=array_init(0,0,0,0,0,0);

Props=array_init("火力","防护","能量","速度","操控","特殊");
