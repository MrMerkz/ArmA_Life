If (isServer) Then
{
	If (isNil "bis_fnc_init") Then
	{
		createCenter sideLogic;
		_logGrp = createGroup sideLogic;
		_logFnc = _logGrp createUnit ["FunctionsManager", [0,0,0], [], 0, "NONE"];
	};
	If (isNil "RE") Then
	{
		nul= [] execVM "\ca\Modules\MP\data\scripts\MPframework.sqf";
	};
	If (isNil "CLAY_fnc_findNearEnemy") Then
	{
		CLAY_fnc_findNearEnemy = compile preprocessFile "\CLAY_Dogs\fn_findNearEnemy.sqf";
	};
	publicVariable "CLAY_fnc_findNearEnemy";


	#include "\userconfig\CLAY_Dogs\CLAY_DogSettings.hpp";

	If (isNil "CLAY_DogEODs") Then
	{
		CLAY_DogEODs =
		[
			"Marijuana",
			"sah_civilian1_pants"
		];
	};
	publicVariable "CLAY_DogEODs";

	If (isNil "CLAY_DogVehicles") Then
	{
		CLAY_DogVehicles = 
		[
			["a2l_policek9", [0,-1.8,0.76], 90]
		];
	};
	publicVariable "CLAY_DogVehicles";

	If (isNil "CLAY_DogSearchDistanceMan") Then
	{
		CLAY_DogSearchDistanceMan = 100;
	};
	publicVariable "CLAY_DogSearchDistanceMan";

	If (isNil "CLAY_DogSearchDistanceEOD") Then
	{
		CLAY_DogSearchDistanceEOD = 50;
	};
	publicVariable "CLAY_DogSearchDistanceEOD";
};


If ((isMultiplayer && !isServer) || !isMultiplayer) Then        //(isMultiplayer && !isServer) || !isMultiplayer
{
	waitUntil {!isNull player};
	waitUntil {player == player};

	_dhm = _this select 0;
	_synO = synchronizedObjects _dhm;

	If (count _synO == 0) exitWith {};
	If (player in _synO && (vehicle player != player)) exitWith {Hint "Dog Handler unit is not of type 'Man'!"};
	If (!(player in _synO)) exitWith {Hint "Dog Handler unit must be player-controled!"};

	If (player in _synO) Then
	{
		private "_type";
		If (!(isNil {player getVariable "CLAY_DogType"})) Then
		{
			_type = player getVariable "CLAY_DogType";
		}
		Else
		{
			_type = "CLAY_Dog";
		};

/* Dog created via 'createUnit array' is always on side 'CIV'???
		_grp = createGroup (side player);
		_dog = _grp createUnit [_type, [(getPos player select 0) + (1 * sin (getDir player)), (getPos player select 1) + (0.3 * cos (getDir player)), 0], [], 0, "NONE"];
		_dog setDir getDir player;
		[_dog] joinSilent _grp;
		{
			_a = (side player) getFriend _x;
			_b = _x getFriend (side player);
			(side _dog) setFriend [_x, _a];
			_x setFriend [(side _dog), _b];
		} forEach [WEST, EAST, RESISTANCE];

		player setVariable ["CLAY_DogUnit", _dog];
		player setVariable ["CLAY_DogStatus", "Waiting"];
*/

		_grp = createGroup (side player);
		_name = format ["CLAY_tmpDog%1", round (random 1000)];
		call compile format ["_type createUnit [[(getPos player select 0) + (1 * sin (getDir player)), (getPos player select 1) + (0.3 * cos (getDir player)), 0], _grp, '%1 = this']", _name];
		_dog = call compile format ["%1", _name];
		_dog setDir getDir player;

		player setVariable ["CLAY_DogUnit", _dog];
		player setVariable ["CLAY_DogStatus", "Waiting"];

		If (isNil "BIS_MENU_GroupCommunication") Then
		{
			BIS_MENU_GroupCommunication = [[localize "STR_SOM_COMMUNICATIONS", false]];
		};

		DOGCTRL_MENU =
		[
			["Dog Control", true],
			["Follow", [2], "", -5, [["expression", "nul = [1] execVM '\CLAY_Dogs\handler\dogMove.sqf'"]], "1", "1", "\ca\ui\data\cursor_tactical_ca.paa"],
			["Wait", [3], "", -5, [["expression", "nul = [2] execVM '\CLAY_Dogs\handler\dogMove.sqf'"]], "1", "0"],
			["Move To Pos", [4], "", -5, [["expression", "nul = [3] execVM '\CLAY_Dogs\handler\dogMove.sqf'"]], "1", "1", "\ca\ui\data\cursor_tactical_ca.paa"],
			["", [], "", -1, [], "0", "0"],
			["Attack Target", [5], "", -5, [["expression", "nul = [cursorTarget] execVM '\CLAY_Dogs\handler\dogAttack.sqf'"]], "1", "CursorOnEnemy", "\ca\ui\data\cursor_attack_ca.paa"],
			//["Search Enemy", [6], "", -5, [["expression", "nul = [1] execVM '\CLAY_Dogs\handler\dogSearch.sqf'"]], "1", "1", "\ca\ui\data\cursor_igui_scroll_ca.paa"],
			["Search for Civilians", [7], "", -5, [["expression", "nul = [2] execVM '\CLAY_Dogs\handler\dogSearch.sqf'"]], "1", "1", "\ca\ui\data\cursor_igui_scroll_ca.paa"],
			["", [], "", -1, [], "0", "0"],
			["Board Car", [8], "", -5, [["expression", "nul = [1, cursorTarget] execVM '\CLAY_Dogs\handler\dogVehicle.sqf'"]], "1", "CursorOnEmptyVehicle", "\ca\ui\data\cursor_getin_ca.paa"],
			["Dismount", [9], "", -5, [["expression", "nul = [2] execVM '\CLAY_Dogs\handler\dogVehicle.sqf'"]], "1", "0", "\ca\ui\data\icon_board_out_ca.paa"],
			["Bark", [10], "", -5, [["expression", "Hint 'Wuff!'"]], "1", "1"]
		];
		//BIS_MENU_GroupCommunication set [1, ["Dog Control", [0], "#USER:DOGCTRL_MENU", -5, [["expression", ""]], "1", "1", "\ca\ui\data\cursor_target_active_ca.paa"]];
		BIS_MENU_GroupCommunication set [1, ["Dog Control", [0], "#USER:DOGCTRL_MENU", -5, [["expression", ""]], "1", "1", "\ca\ui\data\cursor_tactical_ca.paa"]];
	};
};
