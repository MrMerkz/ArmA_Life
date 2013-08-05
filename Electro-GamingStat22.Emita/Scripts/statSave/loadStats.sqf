//===========================================================================
_loadFromDBClient =
"
	_array = _this;
	_uid = _array select 0;
	if((getPlayerUID player) != _uid) exitWith {};
	_varName = _array select 1;
	_varValue = _array select 2;
	if(isNil '_varValue') exitWith {};
	if(_varName == 'moneyPlayer') then {Geld = _varValue;};
	if(_varName == 'moneyAccount') then {Kontostand = _varValue;};
	if(_varName == 'Licenses') then {INV_LizenzOwner = _varValue;};
	if(_varName == 'Backpack') then {playerBackpackAr = _varValue;};
	if(_varName == 'Vehicle') then {INV_VehicleArray = _varValue;};
	if(_varName == 'Deadwait') then {DeadWaitSec = _varValue;};
	//if(_varName == 'Weapons') then {playerweapons = _varValue;};
	//if(_varName == 'Mags') then {playermagazines = _varValue;};
	if(_varName == 'Inventory') then {inv_inventarARRAY = _varValue;};
	//if(_varName == 'Pos') then {Pos = _varValue;};
	//if(_varName == 'position') then {(vehicle player) setPosATL _varValue;};
	//if(_varName == 'direction') then {(vehicle player) setDir _varValue;};
	if (_varName = 'Storage') Then {INV_StorageDialoge = varValue;};
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

