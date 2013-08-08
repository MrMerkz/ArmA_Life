if (!isDedicated) then {
	if (isNull player) then {
		waitUntil {!isNull player};
	};
	
	_globalbriefing = execVM "briefings\global_briefing.sqf";
	_rulesbriefing = execVM "briefings\rules_briefing.sqf";
	if (side player == WEST) then
	{
		_copsbriefing = execVM "briefings\cop_briefing.sqf";
	};
	if (side player == EAST) then
	{
		_esubriefing = execVM "briefings\esu_briefing.sqf";
	};
	if (side player == CIV) then
	{
		_civbriefing = execVM "briefings\civ_briefing.sqf";
	};
};