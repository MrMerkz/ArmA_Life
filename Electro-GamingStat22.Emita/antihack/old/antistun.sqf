while {true} do
{
    if(StunTimePerHit != 20 || MaxStunTime != 60) then
    {
        StunTimePerHit = 20;
        MaxStunTime = 60;
        [format["Antihack: (%1) has activated anti-stun!",(name player)]] call fn_netHint;
        [format["Antihack: (%1) has activated anti-stun!",(name player)]] call fn_netChat;
        execvm "antihack\punish.sqf";player setvariable ["lockme", 1];
        execvm "antihack\lockloop.sqf"; sleep 10;
    };
};