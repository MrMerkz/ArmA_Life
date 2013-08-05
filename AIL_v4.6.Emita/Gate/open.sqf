_laptop = _this select 0;
_player = _this select 1;
_actionid = _this select 2;

_GatePlayers = ["102105990","10248518","124231110","117701382"];
if (getPlayerUID _player in _GatePlayers) then
{
admingate hideObject true;
//yourobjectname2 hideObject true;
} else {
titleText ["Admin Compound NO TRESSPASSING", "PLAIN DOWN", 3];
};