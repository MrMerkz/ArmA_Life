//Script By Hunter.J & Brod
private["_timer","_esOnline","_weps","_mags","_holder"];

if (player getVariable "KOED") exitWith {};
if (vehicle player != player) then
{
	player action ["eject", (vehicle player)];
};
_weps = weapons player;
_weps = _weps - ["ItemCompass","ItemRadio","ItemMap","ItemWatch"];
_mags = magazines player;
removeAllWeapons player;
_holder = "weaponholder" createVehicle (getPos player);
{
	_holder addWeaponCargoGlobal [_x,1];
} forEach _weps;
{
	_holder addMagazineCargoGlobal [_x,1];
} forEach _mags;
player setVariable ["KOED",true,true];
_timer = 300;
_esOnline = false;
player allowDamage false;
for "_i" from 0 to (count playableUnits) do
{
	if (side (playableUnits select _i) == EAST) then
	{
		_esOnline = true;
	};
};
if (!_esOnline) then
{
	_timer = 600;
};

[nil,player,rSwitchMove,"adthppnemstpsraswpstdnon_2"] call RE;

while {_timer >= 0 && player getVariable "KOED"} do
{
	titleText [format["Life Timer: %1", [_timer] call UltRP_Misc_fnc_formatTime],"PLAIN"];
	_timer = _timer - 1;
	sleep 1;
};
//if (_timer <= 0) then {
//        execVM "R3F_revive\reapparaitre_camp.sqf";
//};
		
if (player getVariable "KOED") then
{
	player allowDamage true;
} else {
	player allowDamage true;
	[nil,player,rSwitchMove,"amovppnemstpsnonwnondnon"] call RE;
	hintSilent parseText format["<t color='#ff0000'>%1 You have been revived</t>", name _tgt];
};

/*
_hour = 0;
_minute = 10;
_second = 0;
_FDOnline = false;

for "_i" from 0 to (count playableUnits) do
{
	if (side (playableUnits select _i) == EAST) then
	{
		_FDOnline = true;
	};
};
if (!_FDOnline) then
{
	_hour = 0;
	_minute = 5;
	_second = 0;
};
_dead = player getVariable "DEAD";

while {_dead == "True"} do {
    if (_second == 0 AND (_minute > 0 OR _hour > 0)) then {
        _second = 59;
        if (_minute > 0) then {
            _minute = _minute - 1;
        } else {
            if (_hour > 0) then {
                _hour = _hour - 1;
                _minute = 59;
            };
        };
    } else {
        _second = _second - 1;
    };
    titleText [format["Life Timer: %1:%2", _minute,_second],"PLAIN"];
    sleep 1;
    if (_minute == 0 and _second == 0) then {
        execVM "R3F_revive\reapparaitre_camp.sqf";
		player setVariable ["DEAD", false, true];  
    };
};
*/	