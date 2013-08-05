_uidList = [
"9479430","38008454","78444102","6823360","10248518","3788038"
];

if ((getPlayerUID vehicle player) in _uidList) then {
	player execVM "adminconsolfill.sqf";
	_ok = createDialog "Main";
	exit;
};