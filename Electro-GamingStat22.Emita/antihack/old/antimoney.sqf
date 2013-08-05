// Updated 10/02/2013 by Mike, Dave and Brandon
//Original by Razgritz and StealthStick and GGhost
#define THIS_FILE "antimoney.sqf"
private ["_oldbankmoney","_newbankmoney","_difference","_final","_geldold","_geldnew","_gelddifference","_finalgeld"];
while {true} do 
{
	//anti moneyglitch
	_geldold = 'geld' call INV_GetItemAmount;
	sleep 1;
	_geldnew = 'geld' call INV_GetItemAmount;
	_gelddifference = _geldnew - _geldold;
	_finalgeld = abs _gelddifference;
		if (_finalgeld > 1000000) then
		{
			format['player globalChat "Admin: %1 is making large transactions";', (name player)] call broadcast;
		};
		if (_finalgeld > 10000000) then
		{
			format['player globalChat "Admin: %1 may be duplicating money";', (name player)] call broadcast;
		};

	//anti moneyhack
	_oldbankmoney = bankmoney;
	sleep 1;
	_newbankmoney = bankmoney;
	_difference = _newbankmoney - _oldbankmoney;
	_final = abs _difference;
		if((_final > 500000 && !(ctrlVisible 1003) && atmscriptrunning != 1) 
			|| (bankmoney > 150000000)			
			|| (money_limit != 50000000) 
			|| (bank_limit != 150000000))
		then 
		{
			bank_limit = 150000000;
			money_limit = 50000000;
			[format["Admin: %1 may be using a money glitch",(name player)]] call broadcast;
		};
			
};

