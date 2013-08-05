//When you alter _MARKERS ensure you edit burgler.sqf

_house  = ((_this select 3) select 0);
_housename = ((_this select 3) select 1);
_uid = getPlayerUID vehicle player;

_unit = _this;
_dist = 10;
_marker = "";
{_range = ((getMarkerPos _x) distance (player));
if (_range < _dist) then 
{_dist = _range; _marker = _x};	
} foreach Homearray;

switch true do
{
case (_marker == "A"):{if(_uid == "000000") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "B"):{if(_uid == "000000") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "C"):{if(_uid == "000000") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "D"):{if(_uid == "000000") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "E"):{if(_uid == "000000") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "F"):{if(_uid == "000000") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "G"):{if(_uid == "000000") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "H"):{if(_uid == "000000") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "I"):{if(_uid == "000000") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "J"):{if(_uid == "000000") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "K"):{if(_uid == "000000") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "L"):{if(_uid == "000000") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "M"):{if(_uid == "000000") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

//case (_marker == ""):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
default {[_house,_housename] execVM "maphouse.sqf";};
};