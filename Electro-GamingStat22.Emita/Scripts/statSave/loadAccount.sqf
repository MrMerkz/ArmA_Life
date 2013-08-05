sleep 10;
//Requests info from server in order to download stats
["IslandLife", getPlayerUID player, "moneyPlayer", "NUMBER"] call sendToServer;
["IslandLife", getPlayerUID player, "moneyAccount", "NUMBER"] call sendToServer;
["IslandLife", getPlayerUID player, "Deadwait", "NUMBER"] call sendToServer;
["IslandLife", getPlayerUID player, "Pos", "ARRAY"] call sendToServer;
["IslandLife", getPlayerUID player, "Licenses", "ARRAY"] call sendToServer;
["IslandLife", getPlayerUID player, "Backpack", "ARRAY"] call sendToServer;
["IslandLife", getPlayerUID player, "Vehicle", "ARRAY"] call sendToServer;
//["IslandLife", getPlayerUID player, "Weapons", "ARRAY"] call sendToServer;
//["IslandLife", getPlayerUID player, "Mags", "ARRAY"] call sendToServer;
["IslandLife", getPlayerUID player, "Inventory", "ARRAY"] call sendToServer;
["IslandLife", getPlayerUID player, "Storage", "ARRAY"] call sendToServer;
//===========================================================================



//END
statsLoaded = 1;
titleText ["","BLACK IN",1];
4 fadeMusic 0;
sleep 4;
playMusic "";
sleep 10;
1 fadeMusic 1;