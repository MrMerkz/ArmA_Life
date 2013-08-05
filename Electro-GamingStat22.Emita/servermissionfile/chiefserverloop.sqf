// Innocent Bystander 2/11 fixed up
//_geld = 'geld' call INV_GetItemAmount;
//_this = _this select 3;
//

_art  = _this select 0;
if (_art == "SchleifeDatei") then {	
	_currentchief = -1;
	while {true} do {
		for [{_i=0}, {_i < 30}, {_i=_i+1}] do {	
			sleep 30;	
			for [{_k=0}, {_k < count(WahlArrayc)}, {_k=_k+1}] do {
					if (not((playerstringarray select _k) call ISSE_UnitExists)) then {WahlArrayc SET [_k, [] ]};	
				};
			};

		_MaxStimmen = 0;
		_MaxPos     = -1;
		for [{_i=0}, {_i < count(WahlArrayc)}, {_i=_i+1}] do {
			if ( ((count (WahlArrayc select _i)) > _MaxStimmen) and ((playerstringarray select _i) call ISSE_UnitExists) ) then  {	
				_MaxStimmen = (count (WahlArrayc select _i));
				_MaxPos     = _i;
			};
		};	
		if (_MaxPos == -1) then {
			"hint localize ""STRS_chief_nomajor"";" call broadcast;
			_currentchief = -1;
		} else {
			if (_currentchief == _MaxPos) then {
				"hint localize ""STRS_chief_majorstays"";" call broadcast;
			} else {
				_currentchief = _MaxPos;
				_chiefString  = (playerstringarray select _currentchief);
				format["hint format[localize ""STRS_chief_new"", ""%3"", %2]; if ((rolenumber-1) == %1) then {ischief = true;} else {ischief = false;};", _MaxPos, _MaxStimmen, _chiefString] call broadcast;	
			};
		};
		chiefNumber = _currentchief;
		PUBLICVARIABLE "chiefNumber";
		sleep 1; //Innocent Bystander 2/11
	};
};