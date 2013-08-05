UltRP_Misc_fnc_formatTime =
{
	private["_time","_ret"];
	_time = _this select 0;
	if (_time != 0) then
	{
		_ret = [_this select 0,_str] call CBA_fnc_formatElapsedTime;
	} else {
		_ret = "No Time";
	};
	_ret
};