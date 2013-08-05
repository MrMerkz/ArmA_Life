_this    = _this select 3;
_number  = _this select 0;
_art     = _this select 1;         

Donate_id1 = [
"10248518",
"9479430",
"78444102",
"36163846",
"87979654",
"101865542",
"121471878",
"38008454",
"6823360",
"113582598",
"105661254",
"130750470",
"93187270", 
"99239174",
"6847616",
"83457798",
"126916102",
"93517574",
"104223238",
"31988486" 

];

Donate_id2 = [
"10248518",
"38008454",
"78444102",
"9479430",
"6823360",
"113582598",
"130750470",
"93187270", 
"99239174",
"6847616",
"83457798",
"93517574",
"101865542",
"104223238",
"31988486"

];

Donate_id3 = [
"113582598",
"78444102",
"9479430",
"38008454",
"130750470",
"6847616" 

];

if ((_art == "remove") or (_art == "add")) then 

{

if (_art == "add") then 

	{
	_uid = getPlayerUID vehicle  player;
	_license = ((INV_Lizenzen select _number) select 0);
	_name    = ((INV_Lizenzen select _number) select 2);
	_cost    = ((INV_Lizenzen select _number) select 3);
	if (_license call INV_HasLicense) exitWith {player groupChat localize "STRS_inv_buylicense_alreadytrue";};
	if (('geld' call INV_GetItemAmount) < _cost) exitWith {player groupChat localize "STRS_inv_buylicense_nomoney";};
	if(_license == "car" or _license == "truck")then{demerits = 10};
	if(_license == "Donator_licence1" and !(_uid in Donate_id1)) exitWith { player groupChat "Restriced to Donators"};
	if(_license == "Donator_licence2" and !(_uid in Donate_id2)) exitWith { player groupChat "Restriced to Level 2 and up!"};
	if(_license == "Donator_licence3" and !(_uid in Donate_id3)) exitWith { player groupChat "Restriced to Level 3"};
	if(_license == "mayorlic" and !(ismayor)) exitWith { player groupChat "Restriced to Mayor"};
	if(_license == "probator" and !(iscop)) exitWith { player groupChat "Restriced to Police"};
	if(_license == "patrol_training" and !(iscop)) exitWith { player groupChat "Restriced to Police"};
	if(_license == "sobr_training" and !(iscop)) exitWith { player groupChat "Restriced to Police"};
	if(_license == "air_support_training" and !(iscop)) exitWith { player groupChat "Restriced to Police"};
	if(_license == "cg_air" and !(iscop)) exitWith { player groupChat "Restriced to Police"};
	if(_license == "cg_boat" and !(iscop)) exitWith { player groupChat "Restriced to Police"};


	['geld', -(_cost)] call INV_AddInvItem;
	player groupChat format[localize "STRS_inv_buylicense_gottraining", (_cost call ISSE_str_IntToStr), _name];

	
	INV_LizenzOwner = INV_LizenzOwner + [_license];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
	
	} 
	else 
	{

	_license = ((INV_Lizenzen select _number) select 0);
	name    = ((INV_Lizenzen select _number) select 2);
	if (not(_license call INV_HasLicense)) exitWith {player groupChat localize "STRS_inv_buylicense_alreadyfalse";};
	INV_LizenzOwner = INV_LizenzOwner - [_license];
	player groupChat format[localize "STRS_inv_buylicense_losttraining", _name];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;

	};

};