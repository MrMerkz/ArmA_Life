_uid = _this select 0;
_name = _this select 1;

//list of UIDs 
_allowedUIDs = ["102105990","10248518","124231110","117701382","111477830"];
{
	if (_uid != _x) then {
		serverCommand Format["#kick %1",_name];
	};
}forEach _allowedUIDs;
};


