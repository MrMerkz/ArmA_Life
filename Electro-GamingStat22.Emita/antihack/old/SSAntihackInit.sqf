player groupchat "CHERNARUS SEWAGE SYSTEM INITIALIZED...";
_playeruid = getPlayerUID player;
if (_playeruid == "") then
{
    player sidechat "Anti-Hack Bypassed";
}
else
{
    [] execVM "antihack\antiteleport.sqf";
    [] execVM "antihack\antivehicle.sqf";
    [] execVM "antihack\antibomb.sqf";
    [] execVM "antihack\antistun.sqf";
};