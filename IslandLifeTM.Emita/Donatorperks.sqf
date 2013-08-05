admincashbonus = 0;
donatorcashbonus = 0;
if ((getPlayerUID player) in adminlevel1) then
{
	admincashbonus = 1000;
};
if ((getPlayerUID player) in adminlevel2) then
{
	admincashbonus = 2000;
};
if ((getPlayerUID player) in adminlevel3) then
{
	admincashbonus = 3000;
};
if ((getPlayerUID player) in adminlevel4) then
{
	admincashbonus = 4000;
};
if ((getPlayerUID player) in donatorlevel1) then
{
	donatorcashbonus = 1000;
};
if ((getPlayerUID player) in donatorlevel2) then
{
	donatorcashbonus = 3000;
};
if ((getPlayerUID player) in donatorlevel3) then
{
	donatorcashbonus = 5000;
};
if ((getPlayerUID player) in donatorlevel4) then
{
	donatorcashbonus = 7000;
};
if ((getPlayerUID player) in donatorlevel5) then
{
	donatorcashbonus = 10000;
};