[format["Antihack Detected a hacker: %1 || Please notify an admin on TS if none are on the game."] call fn_netHint;
[format["Antihack Detected a hacker: %1 || Please notify an admin on TS if none are on the game.",(name player)]] call fn_netChat;
deletevehicle (vehicle player);
execvm "antihack\punish.sqf";
player setvariable ["lockme", 1];
execvm "antihack\lockloop.sqf";
    };
    sleep 2;
};