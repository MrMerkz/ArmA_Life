private ["_type", "_unit"];

// PC init line:  id = [""CIV"", this] call compile preprocessFileLineNumbers ""scripts\playerspawn.sqf"";

_type = _this select 0;
_unit = _this select 1;

removeallweapons _unit; 
removeallitems _unit;
Removebackpack _unit;
_unit setVariable [""isTazed"",false,true];
_unit addEventHandler [""HandleDamage"",{_this call DDOPP_taser_handleHit}];
_unit setpos [getpos _unit select 0, getpos _unit select 1, (getpos _unit select 2)+1];
