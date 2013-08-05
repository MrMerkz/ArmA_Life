
if (iscop) then {
(_this select 0) addeventhandler ['Hitpart',{
		private ['_array','_build','_unit','_target','_impact','_targetarray','_doornumber',
			'_dooranim3rd','_dooranim','_explosivedamage','_directdamage'];

		_array = _this select 0;
		
		_build = _array select 0;
		_unit = _array select 1;
		_impact = _array select 3;
		_target = ((_array select 5) select 0);


		if (_target != '') then {

			_targetarray = toarray _target;
				
			for "_i" from ((count _targetarray) - 1) to 0 do {

				
				
			};

			_doornumber = (_targetarray select ((count _targetarray) - 1)) - 48;
			_dooranim3rd = ((_array select 5) select 0);
			_dooranim = 'dvere' + (str(_doornumber));

			_ammoname = (_array select 6) select 4;

			_explosivedamage = (_array select 6) select 3;
			_directdamage = _array select 10; 

			
			if ((_explosivedamage >= 0.3) && (!(_directdamage))) then {

				_3rdamin = _build animationphase _dooranim3rd;
				_1stamin = _build animationphase _dooranim;

				_build animate [_dooranim3rd,(abs (_3rdamin - 1))];
				_build animate [_dooranim,(abs (_1stamin - 1))];

			};

			if ((_ammoname == 'B_12Gauge_74Slug') && (((getposASL _unit) distance _impact) <= 3)) then {

				_3rdamin = _build animationphase _dooranim3rd;
				_1stamin = _build animationphase _dooranim;

				_build animate [_dooranim3rd,(abs (_3rdamin - 1))];
				_build animate [_dooranim,(abs (_1stamin - 1))];

			};

		};

	}];

