init = "if (isServer) then {cal68_do_damage = false;publicVariable 'cal68_do_damage'};";
if (!isDedicated) then {
cal68_do_damage = false;
	cal68_fnc_screen = compile preprocessFileLineNumbers "fn_screen.sqf";

	cal68_fnc_hd = {
		private "_source";
		_source = _this select 3;
		if ((_this select 1) == "") then {
			if (_source != player && isPlayer _source && !isNull _source) then {
				[0.5 + (_this select 2)] spawn cal68_fnc_screen;
				if (isNil "cal68_do_damage") then {
					if (side (group _source) != playerSide) then {
						_hits = player getVariable "cal68_hits";
						_hits = _hits + 1;
						if (_hits == 3) then {
							player playMoveNow "UnaErc_UnaErcPoslechVelitele";
							[] spawn {sleep 2;player setpos markerPos "cal68_respawnmarker"};
							_hits = 0;
						};
						player setVariable ["cal68_hits", _hits];
						["cal68_score", [_source, 1]] call CBA_fnc_globalEvent;
					};
				};
				"dynamicblur" ppeffectenable true;
				"dynamicblur" ppeffectadjust [1];
				"dynamicblur" ppeffectcommit 0;
				"dynamicblur" ppeffectadjust [0];
				"dynamicblur" ppeffectcommit (1 + random 1);
			};
		};
		if (isNil "cal68_do_damage") then {0} else {_this select 2}
	};
	
	[] spawn {
		waitUntil {!isNull player};
		player setVariable ["cal68_hits", 0];
		player addeventhandler ["HandleDamage", {_this call cal68_fnc_hd}];
	};
};

if (isServer) then {
	["cal68_score", {(_this select 0) addScore (_this select 1)}] call CBA_fnc_addEventHandler;
	cal68_do_damage = false;
};

