if (iscop) then {
_t = time;
_houses = nearestobjects [[0,0,0],["house"],100000];
_exceptions = ["Land_Ind_Workshop01_02"];

{
	_uacfg = nil;
	_build = _x;
	_class = typeof _build;

	_cfg = configFile >> "CfgVehicles" >> _class;

	// get 'closedoors' action 1 or 0;

	_uacfg = _cfg >> "useractions";

	_closednum = -1;
	_cnt = -1;

	if ((count _uacfg) > 0) then { 
		
		while {_closednum == -1} do {
			_cnt = _cnt + 1;
			if ((_cnt >= (count _uacfg)) or (_cnt >= 20)) exitwith {_closednum = 0};

			_sel = _uacfg select _cnt;

			_first = (toarray (configname _sel)) select 0;
	
			if ((_first == 79) or (_first == 111)) then {

				_animcfg = gettext (_sel >> "Statement");
				_animarray = toarray _animcfg;
				_closednum = (_animarray select ((count _animarray) - 2)) - 48;


			};	

		};

	if ((_exceptions find (typeof _build)) != -1) then {_closednum = abs (_closednum - 1)};
	_closednum = abs (_closednum - 1);

	// animate doors;

		_sourcescfg = _cfg >> "animationsources";
		_anims = [];

		for "_i" from 0 to ((count _sourcescfg) - 1) do {

			_sel = (_sourcescfg select _i);
			_anims set [(count _anims),(configname _sel)];

		};

		{

			_build animate [_x,_closednum];

		} foreach _anims;

	};

} foreach _houses;

//hint (format ["Closing doors took %1 seconds and there are %2 houses.",(time - _t),(count _houses)]);



