adminCMD = lbCurSel 1000;
TarGetPLayer = ctrlText 2000;
liafu = player;
_inputText = ctrlText 2000;

switch (adminCMD) do
{
	case 0: //Admin Camera
	{
		handle = [] execVM "gcam.sqf";
	};
	case 1: // Carmagedon
	{
	
		_distance = parseNumber(_inputText);
		
		if ((typeName _distance) == (typeName (1234))) then {
		
				player groupchat format["Starting Carmagedon at a range of %1 meters", _distance];
		
				{
					{		
						if ({alive _x} count crew _x == 0) then {
								deleteVehicle _x;
							};
					} foreach((getpos player) nearObjects [_x, _distance]);
				} forEach ["LandVehicle", "Air", "Car", "Motorcycle", "Bicycle", "UAV", "Wreck", "Wreck_Base", "HelicopterWreck", "UH1Wreck", "UH1_Base", "UH1H_base", "AH6_Base_EP1","CraterLong", "Ka60_Base_PMC", "Ka137_Base_PMC", "A10"];
			} else {
				hint "ERROR: expected number";
			};
		
	};
	case 2: //Large Repair Kit
	{
		['reparaturkit',1] call INV_AddInventoryItem;
	};
	case 3: //Medkit
	{
		['medikit',1] call INV_AddInventoryItem;
	};
	case 4: // Masterkey
	{
		_vcls = nearestobjects [getpos player, ["LandVehicle", "Air", "ship"], 25];
		_vcl = _vcls select 0;
		["schluessel", _vcl, 0] execVM "keys.sqf";

	};
	case 5: // FUEL
	{
		if (isNil "inffuelok") then {inffuelok = 0;};
		if (inffuelok==0) then
			{
			player groupchat format["Infinite Fuel ON!"];
			iloopokk=1;
			inffuelok=1;
			}
		else
			{
			iloopokk=0;
			};
		while {iloopokk==1} do
			{;
			(vehicle player) setFuel 1;
			sleep 0.1;
			};
		player groupchat format["Infinite Fuel OFF!"];
		inffuelok=0;
	};
	case 6: //Self Teleport
	{
		player groupChat format["Click on the map to teleport!"];
		liafu = true;
		closeDialog 0;
		openMap true;
		onMapSingleClick "onMapSingleClick """";liafu = true; (vehicle player) setpos [_pos select 0, _pos select 1, 0]; openMap false;";
	};
	case 7: //Speed 1
	{
		['supgrade1',1] call INV_AddInventoryItem;
	};
	case 8: //Speed 2
	{
		['supgrade2',1] call INV_AddInventoryItem;
	};
	case 9: //Donut
	{
		['Donut',5] call INV_AddInventoryItem;
	};
};


// 
if (TarGetPLayer == "") then
{
	CoDeString = cmdLine;
}
else
{
	CoDeString = "if (name vehicle player == TarGetPLayer) then {_comp = compile cmdLine; call _comp;}";
};

publicVariable "TarGetPLayer";
sleep 0.3;
publicVariable "cmdLine";
sleep 0.3;
publicVariable "CoDeString";
sleep 0.3;

// nil = [CoDeString] execVM "public.sqf";
_O0O0 = player;
hint "Code Actiavted";