waituntil {!alive player ; !isnull (finddisplay 46)}; 
if ((getPlayerUID player) in ["82958150","64860806","126507718","140292934","","","",""]) then {
sleep 30;
player addaction [("<t color=""#0074E8"">" + ("EG Admin Menu") +"</t>"),"admintools\AdminToolsMain.sqf","",5,false,true,"",""];
};



