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




case (_marker == "Gambler1"):{if(_uid == "6847616") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

case (_marker == "Gambler1_1"):{if(_uid == "6847616") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

case (_marker == "Gambler1_2"):{if(_uid == "6847616") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

case (_marker == "Gambler1_3"):{if(_uid == "6847616") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

case (_marker == "Gambler1_4"):{if(_uid == "6847616") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

case (_marker == "Gambler1_5"):{if(_uid == "6847616") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

case (_marker == "Gambler1_6"):{if(_uid == "6847616") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

case (_marker == "Gambler1_7"):{if(_uid == "6847616") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

case (_marker == "Gambler1_8"):{if(_uid == "6847616") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

case (_marker == "max12345678999"):{if(_uid == "113582598") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

case (_marker == "[AIL] F.Ambrozy"):{if(_uid == "93517574") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

case (_marker == "[AIL] F.Ambrozy_2"):{if(_uid == "93517574") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

case (_marker == "[AIL] F.Ambrozy_3"):{if(_uid == "93517574") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

case (_marker == "[AIL]AwkwardGamingTurtle"):{if(_uid == "130750470") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

case (_marker == "[AIL] Melvinnl033"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

case (_marker == "[AIL]Default"):{if(_uid == "101865542") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};



//case (_marker == ""):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
default {[_house,_housename] execVM "maphouse.sqf";};
};

