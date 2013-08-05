////////////////////////////////////
////			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////


_art  = ((_this select 3) select 0);
_uid = getPlayerUID vehicle player;
	
if (_art == 1) then {
	//if !(_uid in allowedcamera) then
	if !((getPlayerUID player) in ["9479430","38008454","78444102","6823360"]) then
	{
	player groupchat "Admin spectate is for admins only silly goose";
	}
	else
	{
	player addaction ["Admin Spectate Camera", "admintools\tools\gcam\gcam.sqf",[],1,false,true,"",""];
	};
};
