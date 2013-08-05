_art  = _this select 0;
//_geld = 'geld' call INV_GetItemAmount;


if (_art == "SchleifeDatei") then 

{	

_currentMayor = -1;												
	
while {true} do 

	{
																																																															
	for [{_i=0}, {_i < 30}, {_i=_i+1}] do 

		{	
																																									
		sleep 60;																					

		for [{_k=0}, {_k < count(WahlArray)}, {_k=_k+1}] do 

			{																																								

			if (not((playerstringarray select _k) call ISSE_UnitExists)) then {WahlArray SET [_k, [] ];};

			};			

		};																																																

	_MaxStimmen = 1;																		
	_MaxPos     = -1;												

	for [{_i=0}, {_i < count(WahlArray)}, {_i=_i+1}] do 

		{																																										

		if ( ((count (WahlArray select _i)) > _MaxStimmen) and ((playerstringarray select _i) call ISSE_UnitExists) ) then 

			{
																																												
			_MaxStimmen = (count (WahlArray select _i));																																																				
			_MaxPos     = _i;		

			};		

		};																																										

	if (_MaxPos == -1) then 

		{
																																				
		"hint localize ""STRS_regierung_nomajor"";" call broadcast;																					
		_currentMayor = -1;																		
		
		} else {
																																																																		
		if (_currentMayor == _MaxPos) then 

			{
																																												
			"hint localize ""STRS_regierung_majorstays"";" call broadcast;																																										

			} else {																																				

			_currentMayor = _MaxPos;																																																				
			_MayorString  = (playerstringarray select _currentMayor);																																																				
			format["hint format[localize ""STRS_mayor_new"", ""%3"", %2]; if ((rolenumber-1) == %1) then {isMayor = true;} else {isMayor = false;};", _MaxPos, _MaxStimmen, _MayorString] call broadcast;		

			};		

		};	

	MayorNumber = _currentMayor;												
	PUBLICVARIABLE "MayorNumber";			
	sleep 1; //Innocent Bystander 2/11
	};

};