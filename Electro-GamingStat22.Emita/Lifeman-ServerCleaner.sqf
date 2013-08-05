//Made by lifeman
//Copyright by lifeman
Sleep 450;
server globalchat "Server Cleaner Starting in 1 min!";
Sleep 30;
server globalchat "Server Cleaner Starting in 30 Sec!";
Sleep 30;
(server globalchat "Cleaner Started";
{
	if ((count(crew _x) == 0) and ((damage _x > 0.55) or !(canMove _x))) then 
	{
		if !((_x isKindOf "Air") or (_x isKindOf "Tank")) then 
		{
			deleteVehicle vehicle _x;
			deleteVehicle _x;
			deleteVehicle vehicle _x;
			deleteVehicle _x;
		};
	};
} forEach vehicles;


{
	deleteVehicle vehicle _x;
	deleteVehicle _x;
} forEach (allMissionObjects "EvMoney")+allDEAD;

if (vehicle player in allDEAD) then {deleteVehicle vehicle player;
sleep 1;
server globalchat "Server Cleaner Done!";};
