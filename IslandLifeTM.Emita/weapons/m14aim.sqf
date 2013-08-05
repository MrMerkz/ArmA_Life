//................................
//	Fill Ammo Box Script by Lzryde (v0.2)
//................................

// Settings
_amountWeapon = 10;
_amountAmmo = 120;
_refreshTime = 21600; // refill every 5 minutes

_this allowDamage false;

// Loop forever
while {true} do
{
// Fill box

// US Army Weapons & Ammo
_this addWeaponCargo ["RH_m14aim", _amountWeapon]; 
_this addMagazineCargo ["20Rnd_762x51_DMR", _amountAmmo];

// Wait the duration of _refreshTime
sleep _refreshTime;
};