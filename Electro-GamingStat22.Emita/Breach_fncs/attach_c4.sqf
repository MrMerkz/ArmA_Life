if (iscop) then {
_args = _this select 3;
_unit  = _args select 0;
_item = _args select 1;
_dist = 3;
_array = [];

_upos = getposATL _unit;
_eyes = eyepos _unit;
_angle = (getdir _unit);
_zdif = ((_eyes select 2) - (_upos select 2));

if (isnil("fnc_get_angle")) then {
	fnc_get_angle = compile loadfile "Breach_fncs\fnc_get_angle.sqf"

};

if (isnil("fnc_intersects")) then {

		
	fnc_intersects = compile "
		private ['_unit','_pos','_angle','_front'];
		_unit = _this select 0;
		_pos = _this select 1;
		_checkdist = _this select 2;
		_angle = _this select 3;

		_hyp = _checkdist;
		_adj = _hyp * (cos _angle);
		_opp = sqrt ((_hyp*_hyp) - (_adj * _adj));

		_front = if ((_angle) >=  180) then {

			[(_pos select 0) - _opp,(_pos select 1) + _adj,(_pos select 2)]

		} else {

			[(_pos select 0) + _opp,(_pos select 1) + _adj,(_pos select 2)]

		};

		_object = (lineintersectswith [_pos,_front,_unit]) select 0;

		_obstructed = if (isnil('_object')) then {false} else {true};

		[_obstructed,_front,_object]";

};

_array = [_unit,_eyes,_dist,_angle] call fnc_intersects;
_obstructed = _array select 0;
_obstruction = _array select 2;

if (!(_obstructed)) exitwith {
	nul = [] spawn {hintsilent "Move closer to the wall"; sleep 5 ;hintsilent "";};
};

while {_obstructed} do {

	_dist = _dist - 1;
	_array = [_unit,_eyes,_dist,_angle] call fnc_intersects;
	_obstructed = _array select 0;

};

_infront = _array select 1;

while {!(_obstructed)} do {

	_dist = _dist + 0.1;
	_array = [_unit,_eyes,_dist,_angle] call fnc_intersects;
	_obstructed = _array select 0;
	
};

while {_obstructed} do {

	_dist = _dist - 0.01;
	_array = [_unit,_eyes,_dist,_angle] call fnc_intersects;
	_obstructed = _array select 0;
	
};

_infront = _array select 1;
_infront set [2,(_infront select 2) - _zdif];

















_angle = _angle + 2;
_dist = 3;

_angle = if (_angle > 360) then {_angle - 360} else {_angle};

_array = [_unit,_eyes,_dist,_angle] call fnc_intersects;
_obstructed = _array select 0;
_obstruction = _array select 2;

if (!(_obstructed)) exitwith {
	nul = [] spawn {hintsilent "Move closer to the wall"; sleep 5 ;hintsilent "";};
};


while {_obstructed} do {

	_dist = _dist - 1;
	_array = [_unit,_eyes,_dist,_angle] call fnc_intersects;
	_obstructed = _array select 0;

};

_infront2 = _array select 1;

while {!(_obstructed)} do {

	_dist = _dist + 0.1;
	_array = [_unit,_eyes,_dist,_angle] call fnc_intersects;
	_obstructed = _array select 0;
	
};

while {_obstructed} do {

	_dist = _dist - 0.01;
	_array = [_unit,_eyes,_dist,_angle] call fnc_intersects;
	_obstructed = _array select 0;
	
};

_infront2 = _array select 1;
_infront2 set [2,(_infront2 select 2) - _zdif];

_bdir = getdir _obstruction;
_sdir = [_infront,_infront2] call fnc_get_angle;

_dirdiff = _bdir - _sdir;
if (_dirdiff < 0) then {_dirdiff = _dirdiff + 360};

if (_item iskindof "ACE_C4") then {

	if (_obstruction iskindof "LandVehicle") then {

	
		_cardimentions = boundingbox _obstruction;
		_carheight = ((_cardimentions select 1) select 2) - ((_cardimentions select 0) select 2);
	
		_c4height = if (_carheight >= 4) then {1.2} else {0.7};	

		_item setpos [(_infront select 0),(_infront select 1),((_upos select 2) + _c4height)];

		[_item,90,0] call fnc_setpitchbank;
		_vdir = vectordir _item;

		_wtmpos = _obstruction worldtomodel (getposATL _item);
		_item attachto [_obstruction,_wtmpos];

		[_item,90,0] call fnc_setpitchbank;	
		_item setvectordir _vdir;
	
	} else {

		_item setpos [(_infront select 0),(_infront select 1),((_upos select 2) + 1.2)];

		_item setdir _sdir;
		[_item,0,270] call fnc_setpitchbank;

	};

};

if ((_item iskindof "ACE_Pipebomb") or (_item iskindof "Pipebomb")) then {

	if (_obstruction iskindof "LandVehicle") then {

	
		_cardimentions = boundingbox _obstruction;
		_carheight = ((_cardimentions select 1) select 2) - ((_cardimentions select 0) select 2);
	
		_c4height = if (_carheight >= 4) then {1.2} else {0.7};	

		_item setpos [(_infront select 0),(_infront select 1),((_upos select 2) + _c4height)];

		_vdir = vectordir _item;

		_wtmpos = _obstruction worldtomodel (getposATL _item);
		_item attachto [_obstruction,_wtmpos];
	
		[_item,90,90] call fnc_setpitchbank;

	} else {

		_item setpos [(_infront select 0),(_infront select 1),((_upos select 2) + 1.2)];

		_item setdir _sdir;

	};

};






