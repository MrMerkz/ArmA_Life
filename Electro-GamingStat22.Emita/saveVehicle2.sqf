_ArryLength = count INV_SavedVehCop;


if(_ArryLength >= 3) then {

player groupChat "You can not save more than 3 vehicles, to get more please remove a vehicle at the retrieve vehicle box...";

} else {

_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);

_vclClass = typeOf _vcl;

player globalchat format ["VEHICLE ARRAY : %1",_vcl]; // debug


INV_SavedVehCop set [count INV_SavedVehCop, _vclClass];

player globalchat format ["SAVED ARRAY : %1",INV_SavedVehCop]; // debug

deleteVehicle _vcl;

player groupChat "VEHICLE SAVED, YOU MAY RETRIEVE IT AT THE VEHICLE RETRIEVE POINT!";


["IslandLife", getPlayerUID player, "Vehicle Cop", INV_SavedVehCop] call fn_SaveToServer;

};