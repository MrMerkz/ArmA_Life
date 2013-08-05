
// ADVANCED FIRE SIMULATION (Init.sqf Initialization)

// imporatant note : To avoid possible error, put the following code at the topmost part of the init.
//	or use delays before executing AFS.

_nul = [] execVM "AFS\AFS_Init.sqf";


//init
sleep 1;
//hint ":)";
sleep 1;

//civ fire
sleep 300;
hint "A fire has broken out near Civ spawn!";
_nul=[bld1, 800, 12, [0, 1, -0.0], true, 0, false] spawn AFS;

//pb fire
sleep 1200;
hint "A fire has broken out near Paintball!";
_nul=[firespawn7, 800, 6, [0, 1, -0.0], true, 1, false] spawn AFS;

sleep 5;


//east fire
sleep 2000;
hint "A fire has broken out in the East District!";
_nul=[firespawn2, 800, 12, [0, 1, -0.0], true, 0, false] spawn AFS;

