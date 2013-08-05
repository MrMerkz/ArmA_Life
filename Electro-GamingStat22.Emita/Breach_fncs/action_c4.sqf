
		private ['_unit'];
		_unit = _this select 0;


		while {alive _unit} do {
	
			_proximity = (getposATL _unit) nearobjects ["all",3];

			{

				if (_x iskindof "ACE_c4") then {
	
					_c4 = _proximity select (_proximity find _x);
			
					_idact = _unit addaction ["Attach C4","Breach_fncs\attach_c4.sqf",[_unit,_c4]];
					waituntil {(_unit distance _c4) > 3};
					_unit removeaction _idact;	
	
				};


				if (_x iskindof "ACE_Pipebomb") then {
	
					_c4 = _proximity select (_proximity find _x);
			
					_idact = _unit addaction ["Attach Satchel","Breach_fncs\attach_c4.sqf",[_unit,_c4]];
					waituntil {(_unit distance _c4) > 3};
					_unit removeaction _idact;	
	
				};

			} foreach _proximity;

		sleep 0.5;
	
		};

	

