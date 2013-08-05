if ((getPlayerUID player) in ["102105990","10248518","124231110","117701382","111477830"]) then {
titleText ["Hello Admin.  Welcome home.", "PLAIN DOWN", 3];
} else {
titleText ["You are entering an admin only zone, You have 10 seconds to leave the area or you will die.", "PLAIN DOWN", 3];
sleep 10;
titleText ["You were warned..!", "PLAIN DOWN", 3];
sleep 3;
player setDamage 1;
};