//Innocent Bystander - Cleaned up, removed from client side 2/11

while {true} do {
	_item        = _this select 0;
	_shopnum     = copair call INV_getshopnum;
	_stock       = [_item, _shopnum] call INV_getstock;
	while {_stock > 0} do {
		_stock = [_item, _shopnum] call INV_getstock;
		sleep 27 + random 5;
	};
	sleep 10;
	_vcl = (nearestobjects [getpos copbase1, [_item], 1000]) select 0;
	waituntil {!alive _vcl};	
	sleep 3580 + random 20;
	format['["%1", 1, copair] call INV_itemshopsupdate;', _item] call broadcast;
};