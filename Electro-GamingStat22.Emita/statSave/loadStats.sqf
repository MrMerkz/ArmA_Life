//===========================================================================
_loadFromDBClient =
"
	_array = _this;
	_uid = _array select 0;
	if((getPlayerUID player) != _uid) exitWith {};
	_varName = _array select 1;
	_varValue = _array select 2;
	if(isNil '_varValue') exitWith {};
	if(_varName == 'moneyAccount') then {Kontostand = _varValue;};
	if(_varName == 'Licenses') then {INV_LizenzOwner = _varValue;};
	if(_varName == 'Inventory') then {INV_InventarArray = _varValue;};
        
        

        if (iscop) then 
	{
	if(_varName == 'copweapons') then {INV_SavedWeaponCop  = _varValue;};
	if(_varName == 'copammo') then {INV_SavedAmmoCop  = _varValue;};
	if(_varName == 'Vehicle Cop') then {INV_SavedVehCop  = _varValue;};
	};

	if (isciv) then 
	{
	if(_varName == 'civweapons') then {INV_SavedWeaponCiv  = _varValue;};
	if(_varName == 'civammo') then {INV_SavedAmmoCiv  = _varValue;};
	if(_varName == 'Vehicle Civ') then {INV_SavedVehCiv  = _varValue;};
	};

        if (iscop) then 
	{	
		{player addMagazine _x} forEach INV_SavedAmmoCop;
		{player addWeapon   _x} forEach INV_SavedWeaponCop;
											
	};

	if (isciv) then 
	{
		{player addMagazine _x} forEach INV_SavedAmmoCiv;
		{player addWeapon   _x} forEach INV_SavedWeaponCiv;	
										
	};

              
";

loadFromDBClient = compile _loadFromDBClient;
//===========================================================================
_sendToServer =
"
	accountToServerLoad = _this;
	publicVariableServer 'accountToServerLoad';
";

sendToServer = compile _sendToServer;
//===========================================================================
"accountToClient" addPublicVariableEventHandler 
{
	(_this select 1) spawn loadFromDBClient;
};
//===========================================================================

statFunctionsLoaded = 1;

if(ssDebug == 1) then
{

};

