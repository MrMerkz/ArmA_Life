//Credits to Zooloo75 for creating this for STRATIS LIFE: ULTIMATE, GO CHECK IT OUT ON ARMA 3!
sleep 5;
//Requests info from server in order to download stats
["IslandLife", getPlayerUID player, "moneyAccount", "NUMBER"] call sendToServer;
["IslandLife", getPlayerUID player, "Licenses", "ARRAY"] call sendToServer;
["IslandLife", getPlayerUID player, "Inventory", "ARRAY"] call sendToServer;



if (iscop) then 
{
["IslandLife", getPlayerUID player, "copweapons", "ARRAY"] call sendToServer;
["IslandLife", getPlayerUID player, "copammo", "ARRAY"] call sendToServer;
["IslandLife", getPlayerUID player, "Vehicle Cop", "ARRAY"] call sendToServer;
};

if (isciv) then 
{
["IslandLife", getPlayerUID player, "civweapons", "ARRAY"] call sendToServer;
["IslandLife", getPlayerUID player, "civammo", "ARRAY"] call sendToServer;
["IslandLife", getPlayerUID player, "Vehicle Civ", "ARRAY"] call sendToServer;
};

//===========================================================================



//END
statsLoaded = 1;
titleText ["","BLACK IN",1];
4 fadeMusic 0;
sleep 4;
playMusic "";
sleep 10;
1 fadeMusic 1;