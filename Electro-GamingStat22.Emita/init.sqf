//By Lifeman
//Electro Gaming

if ((isClass (configFile >> "CfgPatches" >> "Ribalion"))) exitWith
{
[] execVM "nc.sqf";
};

if((isClass (configFile >> "CfgPatches" >> "ACCPack")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "Schleiflshackpack")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "Schleiflshackpack_1")))exitWith
{
[] execVM "nc.sqf";
};

if((isClass (configFile >> "CfgPatches" >> "Schleiflshackpack_123")))exitWith
{
[] execVM "nc.sqf";
};

if((isClass (configFile >> "CfgPatches" >> "fuckana-cheat")))exitWith
{
[] execVM "nc.sqf";
};

if((isClass (configFile >> "CfgPatches" >> "awk_ch34tsDevString_ak")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "loki_lk")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "zump")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "water")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "gerk")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "mors_anygear")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "CHN_TroopMon")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "AlexanderPack")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "MRMEDIC_TroopMon")))exitWith
{
[] execVM "nc.sqf";

};

enableSaving [false, false];
version        	= "3";
debug          	= false;
dedicatedServer = false;
copscount      	= 16;
civscount      	= 33;
playercount    	= 49;
debugarray     	= [];
player GlobalChat "Briefing INitialized";
execVM "briefing.sqf";

//waitUntil {DCV_Init};
private ["_Handler","_h","_initClient","_initServer"];
player GlobalChat "Private INitialized";
//Stuff that will be Loaded Electrogaming.enjin.com
if(!debug)then{["basicintro"] execVM "introcam.sqf";};
call compile preprocessfile "triggers.sqf";
waitUntil { ( (time > 1) and ((alive player) or (local server)) ) };
_h = [] execVM "playerarrays.sqf";																												
waitUntil{scriptDone  _h};
_h = [65, rolenumber] execVM "initfuncs.sqf";
waitUntil{scriptDone  _h};
_h = [playerarray, playerstringarray, !iscop] execVM "INVvars.sqf";
waituntil{scriptDone  _h};
_h = [] execVM "bankexec.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "initWPmissions.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "gfx.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "animList.sqf";
waitUntil{scriptDone  _h};
_h = []	execVM "miscfunctions.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "variables.sqf";
waitUntil{scriptDone  _h};
waitUntil{scriptDone  _h};
_h = [] execVM "antihack\AntihackInit.sqf";
//_script = [] execVM "R3F_revive\revive_init.sqf";
//waitUntil {scriptDone _script};
//_script = [] execVM "Functions\FNC_Misc.sqf";
//waitUntil {scriptDone _script};
//_script = [] execVM "medical.sqf";
//waitUntil {scriptDone _script};
//_script = [] execVM "net.sqf";
//waitUntil {scriptDone _script};
//execVM :D

//Stat Save | Fixed by lifeman
[] execVM "saver.sqf";
[] execVM "loadclient.sqf";
execVM "statSave\saveToServer.sqf";
waitUntil {!isNil "fn_SaveToServer"};
execVM "statSave\loadStats.sqf";
waitUntil {!isNil "statFunctionsLoaded"};
execVM "statSave\saveLoop.sqf";


//Server Sided Stat Save
if (isServer) then {
execVM "lifeserver\init.sqf";
call compile preProcessFile "\iniDB\init.sqf";
execVM "statSave\serverGather.sqf";
};


publicMoney = [];
publicVariable "publicMoney";
suspiciousNum = [];
publicVariable "suspiciousNum";
playerCheckedForH = [];
publicVariable "playerCheckedForH";
[player] execVM "8932526.sqf";

	 
//Radnom Shit	 
execVM "Scripts\DRN\DynamicWeatherEffects\DynamicWeatherEffects.sqf";
[] execVM "admintools\Activate.sqf";
execVM "BTK\Cargo Drop\Start.sqf";
execVM "weather.sqf";
execVM "motd.sqf";
//execVM "lifeman-Welcome.sqf";
execVM "Lifeman-ServerCleaner.sqf";
execVM "lifeman-Buildingfixer.sqf";
nul = [] execVM "lifeman-Breach.sqf";

//Some antihack's
execVM "moo.sqf";
execVM "Antihack.sqf";
execVM "antihacking.sqf";
execVM "player-anti-darky.sqf";
execVM "Lifeman-Antihack.sqf";

//More Shit
[SkipTimeDay, SkipTimeNight, 1] execVM "skiptime.sqf"; 
setPitchBank = compile preprocessfile "setPitchBank.sqf";
BIS_Effects_Burn=compile preprocessFile "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf";
if (isServer) then 
{
_initServer = execVM "init\InitServer.sqf";
};
if(!dedicatedserver) then
{
_initClient = execVM "init\InitClient.sqf";
};