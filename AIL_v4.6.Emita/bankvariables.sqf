if(debug)then{['geld', 1000000] call INV_addinventoryitem};
StartGeld                = 50000;
maxcopbonus		 = 65000;
maxcivbonus 	 	 = 65000;
robb_timeSperre          = 1200;   
local_useBankPossible    = true;  
maxinsafe                = 5000000;
BankRaubKontoverlust     = 4000;  
ShopRaubKontovershop     = 0;
ShopRaubProzentVershop   = 0;
rblock			 = 0;
stolencash		 = 0;
Maxbankrobpercentlost    = 0.1; 
bank_steuer              = 5;     
zinsen_prozent           = 5;     
zinsen_dauer             = 1200;   
robenable              	 = true;     
Kontostand               = StartGeld;



shopflagarray            = [shop1,shop2,shop3,shop4];
bankflagarray            = [mainbank,copbank,atm1,atm2,atm3,atm4,atm5,atm6,atm7,atm8,atm9,atm10,atm11,atm12,atm13,atm14,ATMSTAR];
speedcamarray            = [speed1,speed2,speed3,speed4,speed5];
drugsellarray		 = [mdrugsell,cdrugsell,ldrugsell,hdrugsell,whalesell,methsell];
TankstellenArray         = 

[
fuelshop1,fuelshop2,fuelshop3,fuelshop4,fuelshop5,fuelshop6,fuelshop7,fuelshop8,fuelshop9
/*
(nearestobject[getpos fuelshop1,"Land_A_Fuelstation_Feed"]),
(nearestobject[getpos fuelshop2,"Land_A_Fuelstation_Feed"]),
(nearestobject[getpos fuelshop3,"Land_A_Fuelstation_Feed"]),
(nearestobject[getpos fuelshop4,"Land_A_Fuelstation_Feed"]),
(nearestobject[getpos fuelshop5,"Land_A_Fuelstation_Feed","Land_Ind_FuelStation_Feed_EP1","Land_benzina_schnell","Land_fuelstation_army"],20]),
(nearestobject[getpos fuelshop6,"Land_Ind_FuelStation_Feed_Ep1"]),
(nearestobject[getpos fuelshop7,"Land_Ind_FuelStation_Feed_Ep1"]),
(nearestobject[getpos fuelshop8,"Land_Ind_FuelStation_Feed_Ep1"]),
(nearestobject[getpos fuelshop9,"Land_Ind_FuelStation_Feed_Ep1"])
*/
];
