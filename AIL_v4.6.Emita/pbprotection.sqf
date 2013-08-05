_unit = (_this select 0);
while {true} do
{
	_unit allowDamage true;
	_distance = (_unit distance Paintball);
	if (_distance <= 70) then  // edit "SAFEDISTANCE" to fit the radius you want the player to be protected in
	{
		_unit allowDamage false;
                waitUntil {(_unit distance ProtectionCenter) > SAFEDISTANCE};
	}
        else
        {
	        waitUntil {(_unit distance ProtectionCenter) <= SAFEDISTANCE};
        };
};