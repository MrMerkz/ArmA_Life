_this = _this select 3;
_art  = _this select 0;
_safe = _this select 1; 

if (_art == "ausrauben") then 

{	

call compile format["local_cash = robpool%1", _safe];

if(local_cash < 0)exitwith{player groupchat "This safe has recently been stolen from and is empty"}; //2000
player groupChat "Remember that you need 3 police officers on to rob the bank!";

if(!robenable)exitwith{player groupchat "You are already robbing the bank"};
if(!(call INV_isArmed) and !debug)exitWith{player groupChat localize "STRS_bank_rob_noweapon";};
robenable = false;
call compile format["robpool%1 = 0;publicvariable ""robpool%1"";", _safe];											
player groupChat format[localize "STRS_bank_rob_info", (robb_money call ISSE_str_IntToStr)];

format['[0,1,2,["opfer", %1, %2]] execVM "bankrob.sqf";', _safe, local_cash] call broadcast;

player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 5;
waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
bankdoor1 setPos [(getPos bankdoor1 select 0),(getPos bankdoor1 select 1),+1];
bankdoor2 setPos [(getPos bankdoor2 select 0),(getPos bankdoor2 select 1),+.25];
bankdoor3 setPos [(getPos bankdoor3 select 0),(getPos bankdoor3 select 1),+.25];
bankdoor4 setPos [(getPos bankdoor4 select 0),(getPos bankdoor4 select 1),+.25];
bankdoor5 setPos [(getPos bankdoor5 select 0),(getPos bankdoor5 select 1),+.25];


if (alive player) then 

	{
	
	['geld', local_cash] call INV_AddInvItem;
	player groupChat format[localize "STRS_bank_rob_success"];
	[local_cash] spawn Bank_Rob_End_Script;
		
	};

stolencash = stolencash + local_cash;

local_useBankPossible = false;
robenable = true;
rblock = 0;
_rblock = rblock;

sleep 2;

if(_rblock != rblock)exitwith{};

for [{rblock}, {rblock > -1}, {rblock=rblock-1}] do {sleep 1;};												

local_useBankPossible = true;
stolencash = 0;
rblock	   = 0;


};


if (_art == "opfer") then 

{

_robpool = _this select 2;
															
titleText [localize "STRS_bank_rob_titlemsg", "plain"];

_safe say "Bank_alarm";
copbase1 say "Bank_alarm";

sleep 8;

["Bank", "civilian", _robpool] spawn Isse_AddCrimeLogEntry;
server globalchat format["The thief stole $%1!", _robpool];

sleep 4;

_percentlost = _robpool/2200000;

if(_percentlost > Maxbankrobpercentlost)then{_percentlost == Maxbankrobpercentlost};

_verlust = round(Kontostand*_percentlost); 
			
if ((Kontostand <= _verlust) and (Kontostand >= 1) and (('bankversicherung' call INV_GetItemAmount) == 0)) then 

	{
																				
	Kontostand = 0;
	player groupChat localize "STRS_bank_rob_allmoneylost";

	};
					
if ((Kontostand >  _verlust) and (('bankversicherung' call INV_GetItemAmount) == 0)) then 

	{ 
													
	Kontostand = Kontostand - _verlust;
	player groupChat format[localize "STRS_bank_rob_somemoneylost", (_verlust call ISSE_str_IntToStr), (Kontostand call ISSE_str_IntToStr)];

	};
															
if (('bankversicherung' call INV_GetItemAmount) > 0) then 

	{		

	player groupChat localize "STRS_bank_rob_lostnomoney";
	['bankversicherung', -(1)] call INV_AddInvItem;				

	};

};


//automatically lowers bank doors
sleep 120;
bankdoor1 setPos [(getPos bankdoor1 select 0),(getPos bankdoor1 select 1),-5];
bankdoor2 setPos [(getPos bankdoor2 select 0),(getPos bankdoor2 select 1),-5];
bankdoor3 setPos [(getPos bankdoor3 select 0),(getPos bankdoor3 select 1),-5];
bankdoor4 setPos [(getPos bankdoor4 select 0),(getPos bankdoor4 select 1),-5];
bankdoor5 setPos [(getPos bankdoor5 select 0),(getPos bankdoor5 select 1),-5];
