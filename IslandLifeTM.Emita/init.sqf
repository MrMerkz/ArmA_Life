////////////////////////////////////
//			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////

enableSaving [false, false];
version        	= "32";
debug          	= false;
dedicatedServer = false;
copscount      	= 16;
civscount      	= 42;
playercount    	= 58;
debugarray     	= [];
execVM "briefing.sqf";
if(!debug)then{["basicintro"] execVM "introcam.sqf";};
call compile preprocessfile "triggers.sqf";

[] execVM "1admins.sqf";
[] execVM "1donators.sqf";


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
_h = [] execVM "Donatorperks.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "variables.sqf";
waitUntil{scriptDone  _h};
execVM "BTK\Cargo Drop\Start.sqf";
execVM "weather.sqf";
execVM "motd.sqf";
//[SkipTimeDay, SkipTimeNight, 1] execVM "skiptime.sqf"; 
setPitchBank = compile preprocessfile "setPitchBank.sqf";
BIS_Effects_Burn=compile preprocessFile "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf";
if (isServer) then 
{
_initServer = execVM "init\InitServer.sqf";
[] execVM "lifeserver\init.sqf";
};
if(!dedicatedserver) then
{
_initClient = execVM "init\InitClient.sqf";
[] execVM "saver.sqf";
[] execVM "loadclient.sqf";
};