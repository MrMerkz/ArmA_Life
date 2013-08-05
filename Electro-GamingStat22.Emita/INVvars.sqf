INV_getitemScriptName = { ((_this call INV_getitemArray) select 0);};
INV_getitemType = {((_this call INV_getitemArray) select 1) select 0;};
INV_getitemKindOf = { ((_this call INV_getitemArray) select 1) select 1;};
INV_getitemClassName = { ((_this call INV_getitemArray) select 2) select 0;};
INV_getitemName = {((_this call INV_getitemArray) select 2) select 1;};
INV_getitemBuyCost = {((_this call INV_getitemArray) select 3) select 0;};
INV_getitemSellCost = { ((_this call INV_getitemArray) select 3) select 1;};
INV_getitemTypeKg = { ((_this call INV_getitemArray) select 4) select 0;};
INV_getvehmaxkg = { ((_this call INV_getitemArray) select 4) select 3;};
INV_getitemLicense = { ((_this call INV_getitemArray) select 4) select 1;};
INV_getitemLicense2 = { ((_this call INV_getitemArray) select 4) select 2;};
INV_getitemOtherStuff = { ((_this call INV_getitemArray) select 5);};
INV_getitemDescription1 = { ((_this call INV_getitemArray) select 6);};
INV_getitemDescription2 = { ((_this call INV_getitemArray) select 7);};
INV_getitemMaterials = { ((_this call INV_getitemArray) select 8);};
INV_getitemCostWithTax  = { ((_this call INV_getitemArray) call INV_getitemSteuer);};
INV_getitemGiveable = { ((_this call INV_getitemArray) select 5) select 0;};
INV_getitemDropable = { ((_this call INV_getitemArray) select 5) select 1;};
INV_getitemLooseable = { ((_this call INV_getitemArray) select 5) select 2;};
INV_getitemIsIllegal = { ((_this call INV_getitemArray) select 5) select 3;};
INV_getitemFilename = { ((_this call INV_getitemArray) select 5) select 4;};
INV_getVehicleCanCarry = { ((_this call INV_getitemArray) select 5) select 0;};
INV_getVehicleSeats = { ((_this call INV_getitemArray) select 5) select 1;};
INV_PLAYERLIST	        = _this select 0; 
INV_PLAYERSTRINGLIST    = _this select 1;
INV_CANDOILLEGAL        = _this select 2;
INV_ROLESTRING          = format["%1", player]; 
INV_CALL_CREATVEHICLE   = "vehdespawn.sqf";
INV_MAX_ITEMS           = 999999;
INV_MAX_DROPS	 	= 300;
INV_PLAYERCOUNT         = count INV_PLAYERSTRINGLIST;
INV_SaveVclArray        = true; 
INV_VehicleArray        = [];
INV_ServerVclArray      = [];   
INV_SavedVehCiv 	= [];
INV_SavedVehCop 	= [];
INV_SavedWeaponCiv 	= [];
INV_SavedWeaponCop 	= [];
INV_SavedAmmoCiv 	= [];
INV_SavedAmmoCop 	= [];
INV_SaveObjArray        = false;
INV_shortcuts           = true;
INV_SperrenVerbotArray  = [[copbase1, 250],[sperrenverbot3, 30 ]];
INV_JIP = true; publicVariable "INV_JIP";
_handler = [] execVM "INVfunctions.sqf";
waitUntil {scriptDone _handler};

_handler = [] execVM "createfunctions.sqf";
waitUntil {scriptDone _handler};
_handler = [] execVM "carparks.sqf";
waitUntil {scriptDone _handler};
_handler = [] execVM "masterarray.sqf";
waitUntil {scriptDone _handler};
_handler = [] execVM "shops.sqf";
waitUntil {scriptDone _handler};
_handler = [] execVM "Optimize.sqf";
waitUntil {scriptDone _handler};
_handler = [] execVM "facharvest.sqf";
waitUntil {scriptDone _handler};
_handler = [] execVM "licensearray.sqf";
waitUntil {scriptDone _handler};
_handler = [] execVM "vclarrsave.sqf";


if (!dedicatedServer) then 

{

_handler = [] execVM "shopfarmfaclicenseactions.sqf";

};