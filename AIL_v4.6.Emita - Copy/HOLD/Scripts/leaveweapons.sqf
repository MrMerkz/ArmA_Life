//if ((getPlayerUID player) in ["5531584","5603520"]) then {
//if ((getPlayerUID player) in ["5531584"]) then {
//titleText ["You are not allowed to Enter/Leave this are with weapons. Turn back if you do not wish to lose them", "PLAIN DOWN", 3];
//} else {
titleText ["Reminder: You are not allowed to Enter/Leave this area with weapons. Turn back if you do not wish to lose them", "PLAIN DOWN", 3];
sleep 5;
titleText ["Removing Weapons..!", "PLAIN DOWN", 3];
sleep 2;
removeAllWeapons player;
};