_uidList = [
	"43750342"	//lockzhere
	];

if ((getPlayerUID vehicle player) in _uidList) then {
	player execVM "adminconsolfill.sqf";
	_ok = createDialog "Main";
	exit;
};