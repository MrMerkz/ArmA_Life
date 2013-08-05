//Lifeman was here!
*/

private ["_oldPos","_newPos","_tpdistance"];
while {true} do 
{
	//make sure they are alive...
	while {alive player} do 
	{
		// lets get their position and their position 1 second from now...
		//hint "Anti-TP on";
		_oldPos = (getpos player);
		sleep 1;
		_newPos = (getpos player);
		_tpdistance = _newPos distance _oldPos;
		_cpdistance = _newPos distance CopPrison;
		// TP distance (editable) 
		if (!aliurghlaugialrehg) then
		{
			if  (_tpdistance > 400) then 
			{
				if(player distance prisonspawn > 60) then
				{
					// message displayed to everyone on the server..
					//hint format ["** Antihack**: %1 was caught teleporting. Player ID: %2", name player,getPlayerUID player ];
					[format ["%1 has teleported, Pleast notify an admin on Teamspeak. Player ID: %2", name player ,getPlayerUID player]] call fn_netHint;
					[format["%1 has teleported, Pleast notify an admin on Teamspeak.",(name player)]] call fn_netChat;
					player commandchat format ["If this is a mistake, contact a Head Admin or Owner on TS3 or the fourms"];
					while {true} do
					{
						
						disableUserInput true;
						player setvariable ["lockme", 1];
						sleep 3;
						server globalChat format ["Antihack: You were locked! Your whole computer is frozen!"];
					};
					//execute punish script.
					//execVM "antihack\punish.sqf";		
				};				
			};	
		};
	};
};



	