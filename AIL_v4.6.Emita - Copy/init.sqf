enableSaving [false, false];
version        	= "3";
debug          	= false;
dedicatedServer = false;
copscount      	= 19;
civscount      	= 48;
playercount    	= 67;
debugarray     	= [];

["init"] execVM "bombs.sqf";

execVM "briefing.sqf";

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
execVM "BTK\Cargo Drop\Start.sqf";
//New Weather
execVM "Scripts\DRN\DynamicWeatherEffects\DynamicWeatherEffects.sqf";
execVM "motd.sqf";
//[] execVM "admintools\loop.sqf";
execVM "uid.sqf";


execVM "moo.sqf";

//execVM "skiptime.sqf"; 
setPitchBank = compile preprocessfile "setPitchBank.sqf";
BIS_Effects_Burn=compile preprocessFile "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf";

if (isServer) then 
{
_initServer = execVM "init\InitServer.sqf";
[] execVM "lifeserver\init.sqf";
};
if(!isDedicated) then
{
_initClient = execVM "init\InitClient.sqf";
[] execVM "saver.sqf";
[] execVM "loadclient.sqf";
};
