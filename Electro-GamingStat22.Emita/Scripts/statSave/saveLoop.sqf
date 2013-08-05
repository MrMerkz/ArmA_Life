waitUntil {statsLoaded == 1;};
while {true} do
{
	sleep 120;
	
	        ["IslandLife", getPlayerUID player, "Account Name", name player] call fn_SaveToServer;
                ["IslandLife", getPlayerUID player, "moneyAccount", Kontostand] call fn_SaveToServer;
				["IslandLife", getPlayerUID player, "Licenses", INV_LizenzOwner] call fn_SaveToServer;
				["IslandLife", getPlayerUID player, "Backpack", playerBackpackAr] call fn_SaveToServer;
				["IslandLife", getPlayerUID player, "Vehicle", INV_VehicleArray] call fn_SaveToServer;
				["IslandLife", getPlayerUID player, "Deadwait", DeadWaitSec] call fn_SaveToServer;
				//["IslandLife", getPlayerUID player, "Weapons", weapons] call fn_SaveToServer;
				//["IslandLife", getPlayerUID player, "Mags", magazines] call fn_SaveToServer;
				["IslandLife", getPlayerUID player, "Inventory", inv_inventarARRAY] call fn_SaveToServer;
				//["IslandLife", getPlayerUID player, "Pos", Pos] call fn_SaveToServer;
				
				
				
				

	

	
	//if(ssDebug == 1) then
	//{
		hint "Bank Account Saved To Server!";
		hint "Licenses Saved To Server!";
		hint "Backpack Saved To Server!";
		hint "Essentials Saved To Server!";
		hint "Storage Loaded!";
	//};
};