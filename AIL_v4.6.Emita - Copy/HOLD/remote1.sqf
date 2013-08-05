_art = _this select 0; 

if (_art == "use") then 

{
						
_item   = _this select 1;									
_anzahl = _this select 2;																							
 
if (!(createDialog "copremotewiredialog")) exitWith {hint "Dialog Error!";};
									
[2, true, false] call INV_DialogPlayers;
													
lbSetCurSel [99, 0];	
											
buttonSetAction [1, "[""copgate1"", ctrlText 1, call compile lbData [2, lbCurSel 2]] execVM ""remote1.sqf""; closedialog 0;"];

buttonSetAction [4, "[""copgate2"", ctrlText 1, call compile lbData [2, lbCurSel 2]] execVM ""remote1.sqf""; closedialog 0;"];

buttonSetAction [3, "[""prisongate"", ctrlText 1, call compile lbData [2, lbCurSel 2]] execVM ""remote1.sqf""; closedialog 0;"];

};
 
if (_art == "copgate1") then 

{
if(isciv) exitwith {};

gate animate ["innergate",1]; ArMaT_FG say "dooropen";
gate animate ["outergate",1]; 
player groupchat "Gates are now open, they will close in 15 seconds";
sleep 15;
gate animate ["innergate",0]; ArMaT_FG say "doorclose";
gate animate ["outergate",0]; 
player groupchat "Gates are now closed!";



};

if (_art == "copgate2") then {
if(isciv) exitwith {};

gate2 animate ["innergate",1]; ArMaT_FG say "dooropen";
gate2 animate ["outergate",1]; 
player groupchat "Gates are now open, they will close in 15 seconds";
sleep 15;
gate2 animate ["innergate",0]; ArMaT_FG say "doorclose";
gate2 animate ["outergate",0]; 
player groupchat "Gates are now closed!";

};


if (_art == "prisongate") then {
if(isciv) exitwith {};


prisongate animate ["innergate",1]; 
prisongate animate ["outergate",1]; 
player groupchat "Gates are now open, they will close in 15 seconds";
sleep 15;
prisongate animate ["innergate",0]; 
prisongate animate ["outergate",0]; 
player groupchat "Gates are now closed!";

};






