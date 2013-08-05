waitUntil {statsLoaded == 1};
while {true} do
{
sleep 100;
	
["IslandLife", getPlayerUID player, "Account Name", name player] call fn_SaveToServer;
["IslandLife", getPlayerUID player, "moneyAccount", Kontostand] call fn_SaveToServer;
["IslandLife", getPlayerUID player, "Licenses", INV_LizenzOwner] call fn_SaveToServer;
["IslandLife", getPlayerUID player, "Inventory", INV_InventarArray] call fn_SaveToServer;
["IslandLife", getPlayerUID player, "Factory", INV_Fabrikowner] call fn_SaveToServer;

if (iscop) then 
{
["IslandLife", getPlayerUID player, "copweapons", weapons player] call fn_SaveToServer;
["IslandLife", getPlayerUID player, "copammo", magazines player] call fn_SaveToServer;
["IslandLife", getPlayerUID player, "Vehicle Cop", INV_SavedVehCop] call fn_SaveToServer;
};

if (isciv) then 
{
["IslandLife", getPlayerUID player, "civweapons", weapons player] call fn_SaveToServer;
["IslandLife", getPlayerUID player, "civammo", magazines player] call fn_SaveToServer;
["IslandLife", getPlayerUID player, "Vehicle Civ", INV_SavedVehCiv] call fn_SaveToServer;

};	
		
player groupChat "Stats Saved To Server!";

};