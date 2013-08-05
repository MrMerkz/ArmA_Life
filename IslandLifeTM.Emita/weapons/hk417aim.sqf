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
_this addWeaponCargo ["RH_hk417aim", _amountWeapon]; 
_this addMagazineCargo ["RH_20Rnd_762x51_hk417", _amountAmmo];

// Wait the duration of _refreshTime
sleep _refreshTime;
};