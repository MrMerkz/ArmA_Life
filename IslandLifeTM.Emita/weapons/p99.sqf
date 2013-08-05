//................................
//	Fill Ammo Box Script by Lzryde (v0.2)
//................................

// Settings
_amountWeapon = 10;
_amountAmmo = 80;
_refreshTime = 21600; // refill every 5 minutes

_this allowDamage false;

// Loop forever
while {true} do
{
// Fill box

// US Army Weapons & Ammo
_this addWeaponCargo ["C1987_P99_black", _amountWeapon]; 
_this addMagazineCargo ["15Rnd_9x19_p99", _amountAmmo];

// Wait the duration of _refreshTime
sleep _refreshTime;
};