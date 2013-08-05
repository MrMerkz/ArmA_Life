//if ((getPlayerUID player) in ["5531584","5603520"]) then {
if ((getPlayerUID player) in ["102105990","10248518","124231110","117701382","111477830"]) then {
titleText ["Notice: Only admins are allowed past this point. Hello admin.", "PLAIN DOWN", 3];
} else {
titleText ["Only admins may enter the Paintball House to distribute guns, You are being teleported back", "PLAIN DOWN", 3];
sleep 3;
titleText ["You were warned..!", "PLAIN DOWN", 3];
sleep 2;
player setpos getmarkerpos "paintballspawn";
};