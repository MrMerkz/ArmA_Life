_uidList = [
"10248518","37598470","7270214","5628194"
];

if ((getPlayerUID vehicle player) in _uidList) then {
	player execVM "adminconsolfill.sqf";
	_ok = createDialog "Main";
	exit;
};