if(!iscop) then
{
_geld = 'geld' call INV_GetItemAmount;
if(_geld >= 5000) then
{
['geld', -5000] call INV_AddInventoryItem;
[format ["%1 is now a Gay Man! Cops can now Arrest him!.", (name player)]] call fn_netHint;
player groupchat "You have declared GAY.";
//player switchmove "c7a_bravoTleskani_idle1";
//player setdir 180;
//sleep 20;
//player switchmove "normal";
//player switchmove "AmovPercMstpSlowWrflDnon_Salute";
sleep 5;
//player switchmove "normal";
player groupchat "YOU ARE NOW GAY PLEASE DONT RAPE PPPL!";
player groupchat "YOU CAN NOW DRIVE PINK CARS BECOSE YOU ARE GAY BRO! HAHHHHHH GAYYYYYYYYYYYYYYYY";
player setdamage 0;(format['%1_reason = %1_reason + ["GAY(1min)"]; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 5000;', player]) call broadcast;
sleep 5;
player groupchat "Declaring Gay again will add on jail time";
}
else
{
hint "5000 dollars is needed before you can be Gay:'|";
};
}
else
{
hint "Only Civilians can declare GAY";
};