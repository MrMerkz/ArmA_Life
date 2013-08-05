//hint "Anti-Teleport Initilized.";
while {true} do
{
    player == vehicle player;
    while {alive player} do
    {
            if(player distance prisonspawn > 60) then
            {
                //anti teleport
                _oldPos = (getpos vehicle player);
                sleep 1;
                _newPos = (getpos vehicle player);
                if(vehicle player iskindof "air") then
                {
                    if(_newPos distance _oldPos > 1500) then
                    {
                            [format["Antihack: (%1) is teleporting!",(name player)]] call fn_netHint;
                            [format["Antihack: (%1) is teleporting!",(name player)]] call fn_netChat;
                            execvm "antihack\punish.sqf";
                            player setvariable ["lockme", 1];
                    };
                }
                else
                {
                    if(_newPos distance _oldPos > 500) then
                    {
                            [format["Antihack: (%1) is teleporting!",(name player)]] call fn_netHint;
                            [format["Antihack: (%1) is teleporting!",(name player)]] call fn_netChat;
                            execvm "antihack\punish.sqf";
                            player setvariable ["lockme", 1];
                            execvm "antihack\lockloop.sqf";
                    };
                };
            };
    };
};

