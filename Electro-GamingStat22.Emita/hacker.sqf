_UID = getPlayerUID player;
_bypassList = ["","","","", ""];
if(_UID in _bypassList)then{
	player sidechat format ["Lifeman's Anti-Hack Bypassed"];
}
else
{
	while {true} do 
	{
		server globalChat format ["Your attempted hack is being reported. Enjoy! :D"];
		disableUserInput true;
		player setvariable ["lockme", 1];
		sleep 2;
	};
};