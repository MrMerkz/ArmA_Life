if (iscop) then {
private ["_obj","_pitch","_bank","_yaw","_vdir","_vup","_sign"];
_obj = _this select 0;
_pitch = _this select 1;
_bank = _this select 2;
_yaw = 360-(getdir _obj);
_sign = [1,-1] select (_pitch < 0);
while {abs _pitch > 180} do {_pitch = _sign*(abs _pitch - 180)};
if(abs _pitch == 90) then {_pitch = _sign*(89.9)};
if(abs _pitch > 90) then
{
	_obj setdir (getdir _obj)-180;
	_yaw = 360-(getdir _obj);
	_bank = _bank + 180;
	_pitch = (180 - abs _pitch)*_sign;
};
_vdir = [0, cos _pitch, sin _pitch];
_vdir = [_vdir, _yaw] call BIS_fnc_rotateVector2D;
_sign = [1,-1] select (_bank < 0);
while {abs _bank > 360} do {_bank = _sign*(abs _bank - 360)};
if(abs _bank > 180) then {_sign = -1*_sign; _bank = (360-_bank)*_sign};
_vup  = [sin _bank, 0, cos _bank];
_vup =  [_vup,  _yaw] call BIS_fnc_rotateVector2D;
_obj setVectorDirAndUp [_vdir, _vup];