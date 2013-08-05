if (iscop) then {
if (isserver) then { 

	nul = [] execVM "Breach_fncs\fnc_close_doors.sqf";


};

	if (isnil("fnc_breachable")) then {
		fnc_breachable = compile loadfile "Breach_fncs\fnc_breachable.sqf";
	};

	if (isnil("fnc_action_c4")) then {
		fnc_action_c4 = compile loadfile "Breach_fncs\action_c4.sqf";
	};

// to make sure the BIS_fnc_setpitchbank is actually online for everyone (ran into a few issues with it);

	if (isnil("fnc_setpitchbank")) then {
		fnc_setpitchbank = compile loadfile "Breach_fncs\fnc_setpitchbank.sqf";
	};




	_debug = 0;

_unit = player;
nearbuildlist = [];
clearbuildlist = [];

// make units detect c4 around them to interact with and buildings around them that are breachable;

	_breaching = _unit getvariable "breaching";

	if (isnil("_breaching")) then {

		_unit setvariable ["breaching",true];

		nul = [_unit] spawn fnc_action_c4;
		nul = [_unit] spawn {

			_unit = _this select 0;

			while {alive _unit} do {

				_pos = getposATL _unit;

				buildlist = nearestobjects [_pos,["house"],300];
				nearbuildlist = nearestobjects [_pos,["house"],75];
				clearbuildlist = buildlist - nearbuildlist;	

			sleep 20;

			};

		};	

	};

sleep 1;

//make buildings breachable and cleanup buildings that are out of range.

while {alive _unit} do {

	{

		_breachable = _x getvariable "breachable";	
	
		if (isnil("_breachable")) then {
 
			_x setvariable ["breachable",[_x] spawn fnc_breachable];
			_debug = _debug + 1;
				
		};

	} foreach nearbuildlist;

	{

		_breachable = _x getvariable "breachable";
	
		if (!(isnil("_breachable"))) then {

			_x setvariable ["breachable",nil];
			_debug = _debug - 1;

		};
 
	} foreach clearbuildlist;

	//hintsilent (str(_debug));

	sleep 20;

};

