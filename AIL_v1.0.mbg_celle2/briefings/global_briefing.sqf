_ailchangelog = player createDiaryRecord ["changelog", ["AIL Changelog", "
=====8/7/2013<br />
=====6/29/2013<br />
<br />
- All terror ammo and weapons spawn in the ural nearby<br />
- All terror bombs can now be purchased<br />
- All terror ammo should now work correctly<br />
- All terror weapons should now no longer say you need null<br />
- Civilians are automatically released from jail just across the street.<br />
- RPG was added back to terror<br />
- New loading Screen added<br />
<br />
=====6/28/2013<br />
<br />
- Remote intake added to sheriff<br />
<br />   
=====6/27/2013<br />
<br />
- Donators will have acess to their houses<br />
- Donators house should now lock<br />
- Breifing updated<br />
- Donator pay checks should work<br />
<br />  
=====6/26/2013<br />
<br />
- Body bags added<br />
- Organ market added<br />
- Gang shops fixed<br />
- Server loops edited<br />
- Many edits to admin tools<br />
- Body parts introduced into master array<br />
- Death messages re-added<br />
- Moo script greatly improved<br />
- scripts kiddies loki lost key no longer works<br />
- Motorcycles cant go 8-- now<br />
<br />   
=====6/24/2013
<br />
- All cop slots should work<br />
- All civ slots should work<br />
- All ESU/EMT slots should work<br />
- Fixed an array issue causing certain slots to not function correctly<br />
- Mastery array fixed<br />
- Cop 18 is now patrol officer<br />
- All tier statuses removed off of cop names<br />
- Gate Remote Control created<br />
<br />
=====6/23/2013<br />
<br />
- Changed the code to match AIL needs<br />
- donator list updated<br />
- cop white listing removed<br />
- admin tools updated<br />
- New loading screen added in<br />
<br />"]];

_staff = player createDiaryRecord ["Staff", ["Staff Roster", "
<br />
Staff Roster:<br />
<br />
============ Founders ============<br />
[AIL] ProPilot - Founder<br />
[AIL] HaXor - Founder<br />
<br />
============ Server Admins ============<br />
[AIL] !Onevirus! - Head Admin<br />
[AIL] Spiffy - Super Administrator<br />
[AIL] Dead - Super Administrator<br />
[AIL] xARMYvSTRONGx - Super Administrator<br />
<br />
============ Game Admins ============<br />
[AIL] Big D - Head Game Admin<br />
[AIL] Agent Stig - Head Game Admin<br />
[AIL] Killakurt - Game Admin<br />
[AIL] Big B - Game Admin<br />
[AIL] Big T - Game Admin<br />
[AIL] Proffesional - Game Admin<br />
[AIL] Nerdystingray - Game Admin<br />
[AIL] N.Kimborowicz - Game Admin<br />
[AIL] =LoD= CookieMonster - Game Admin<br />
<br />
============ Moderators ============<br />
[AIL] KIAxSwampyKnight - Moderator<br />
[AIL] ZIEMBA - Moderator<br />
[AIL] Worganiser - Moderator<br />
<br />
============ Helpers ============<br />
[AIL] Crazyram - Head Helper<br />
[AIL] Max12345678999 - Helper<br />
[AIL] Niko - Helper<br />
[AIL] =LoD= Madmansam - Helper<br />
[AIL] Sonicroden - Helper<br />
[AIL] Chad - Helper<br />
[AIL] Cry - Helper<br />
[AIL] El Salvador - Helper<br />
[AIL] Chandler - Helper<br />
[AIL] Silas - Helper<br />
<br />
============ Developers ============<br />
[AIL] ProPilot - Head Developer<br />
[AIL] xARMYvSTRONGx - Head Developer<br />
[AIL] =LoD= CookieMonster - Developer<br />
[AIL] Chad - Developer<br />
[AIL] Crazyram - Developer<br />
[AIL] LostS77 - Developer<br />
<br />"]];

_credits = player createDiaryRecord ["Credits", ["Credits", "
<br />
All Credits go to the TCG Dev Team.<br />
<br />
Edited by ProPilot<br />
"]];

_info = player createDiaryRecord ["Info", ["Arma Island Life Information", "
<br />
The Arma Island Life website<br />
http://armaislandlife.enjin.com/<br />
<br />
The Arma Island Life Teamspeak 3<br />
armaislandlife.ts3dns.com<br />
<br />
"]];

	_donaddrbook = player createDiaryRecord["controls", ["Donator House Address Book", "
AIL County Address Book
<br /><br />
To obtain a property please donate and help us keep the server up.
<br /><br />
1000 <marker name='Beastings'>N/A</marker><br />
1001 <marker name='Beastings'>N/A</marker><br />
1002 <marker name='Beastings'>N/A</marker><br />
1003 <marker name='Beastings'>N/A</marker><br />
1004 <marker name='Beastings'>N/A</marker><br />
1021 <marker name='[AIL]AwkwardGamingTurtle'>[AIL]AwkwardGamingTurtle</marker><br />
1026 <marker name='[AIL] F.Ambrozy'>[AIL] F.Ambrozy</marker><br />
-----------------------------------------------<br />
2001 <marker name='Beastings'>N/A</marker><br />
2001 <marker name='Beastings'>N/A</marker><br />
2002 <marker name='Beastings'>N/A</marker><br />
2003 <marker name='Beastings'>N/A</marker><br />
2004 <marker name='Beastings'>N/A</marker><br />
2005 <marker name='Beastings'>N/A</marker><br />
2006 <marker name='Beastings'>N/A</marker><br />
2007 <marker name='Beastings'>N/A</marker><br />
2008 <marker name='Beastings'>N/A</marker><br />
2009 <marker name='Beastings'>N/A</marker><br />
2010 <marker name='Beastings'>N/A</marker><br />
2011 <marker name='Beastings'>N/A</marker><br />
2012 <marker name='Beastings'>N/A</marker><br />
2013 <marker name='max12345678999'>max12345678999</marker><br />
2014 <marker name='[AIL]Default'>[AIL]Default</marker><br />
2015 <marker name='Beastings'>N/A</marker><br />
-----------------------------------------------<br />
3000 <marker name='Gambler1'>Gambler1</marker><br />
3001 <marker name='ProPilot'>ProPilot</marker><br />
"]];

	_animations2 = player createDiaryRecord ["controls", ["Animations Continued", "
urban prone LEFT:<br />
	- move left: Left<br />
	- move right: Right<br />
	- back to prone: Z<br />
	- move to urban prone RIGHT: MTB + Right<br />
	- raise weapon: Forward<br />
	- Blind fire: MTB + Left<br />
urban prone Right:<br />
	- back to prone: Z<br />
	- raise weapon: Forward<br />
	- raise weapon higher: MTB + Forward<br />
	- move to urban prone RIGHT: MTB + Left<br />
	- Blind fire: MTB + Right<br />
panic move:<br />
	- urban prone left: X<br />
	- prone: Z<br />
launcher standing:<br />
        - launcher prone: fast + Backwards<br />
launcher crouching:<br />
	- launcher prone: fast + Backwards<br />
pistol quick stand:<br />
	- Blindfire left: MTB + Left<br />
	- Blindfire right: MTB + Right<br />
	- Blindfire overhead: MTB + Back<br />
pistol normal hold:<br />
        - when pistol out, toggle: c<br />
Back to wall:<br />
	- move left: Left<br />
	- move right: Right<br />
	- weapon round the corner: Forward<br />
	- turn around and aim weapon forward: backwards<br />
	- blindfire right: MTB + Right<br />
	- blindfire overhead: MTB + Backwards<br />
	- peak around the corner: MTB + Forward<br />
	- go back to crouch: x<br />
	- Grenade round the corner: choose grenade and throw<br />
	- Grenade overhead throw: press salute and then do above<br />
"]];

	_animations1 = player createDiaryRecord ["controls", ["Animations", "
DEFINE Turbo key (suggestion - Mouse thumb button)<br />
using default key settings, if different, just replace the letter<br />
Z - prone<br />
X - crouch<br />
C - stand<br />
2xctrl - weapon down/up toggle<br />
standing: <br />
	- panic button: sitdown<br />
	- blind fire left: MTB + Left<br />
	- blind fire right: MTB + Right<br />
	- blind fire up: MTB + Back<br />
	- taunt: MTB + Back + Left (to play it smooth, first use direction keys then turbo)<br />
	- quick lower your head: MTB + Back + Right<br />
running forward:<br />
	- jog pace: 2x ctrl<br />
	- quick step over: step over<br />
	- weapon down: C<br />
sprinting:<br />
	- slide: X<br />
	- climb over the wall: C<br />
crouching:<br />
	- kneel: X<br />
	- quick lower your head: MTB + Back + Right<br />
	- blind fire left: MTB + Left<br />
	- blind fire right: MTB + Right<br />
	- blind fire up: MTB + Back<br />
	- panic move: sitdown<br />
	- sniper sit: getOver<br />
	- back to wall: salute<br />
kneeling: <br />
	- crouch: X<br />
other moves apply as in crouching<br />
proning:<br />
	- urban prone left: MTB + Left<br />
	- urban prone right: MTB + Right<br />
	- launcher proning: Select launcher<br />

"]];

	_ailcontrols = player createDiaryRecord ["controls", ["AIL Newbie Contrls", "
Civilian:<br />
#1: Stats<br />
here is where you will find a great deal of useful information.  Anything from how much money you 
are carrying to who has a bounty and how much that bounty may be.<br />
#2: Inventory:<br />
-this will tell you what you are carrying and also provides an interface to use some of those 
items in your inventory.  For example, if your getting the measage, ""You Are Starving"" and you 
have 10 fish in your inventory.  Press the #2, highlight ""fish"", change the number in the box 
to ""10"", then click ""use"".  That will make your charactor eat the fish and you will loose 
some hunger (high hunger is a bad thing).  You may also notice ""key chain"" in your inventory.  
This will hold all your keys to the vehicles you own.  You can give these keys to other players 
via this interface but know that they need to be near you for something like 5 seconds to receive 
the item.<br />
#3: Hands Up<br />
This button will make your charactor put his hands up.  This is useful for when you want to show 
the coppers that you are not a threat and are cooperating.  They can then restrain you if they 
feel the need.
<br />
#4: Hands Down<br />
this button will return you to a normal pos from ""hands up"".
<br />
E: Action<br />
this button is your basic ""action button"".  this is how you will interact with the various 
interfaces around Chern such as shops and ATM's.  This will also allow you to attempt to steal 
from other players.  You can only steal money if the other player has been knocked unconscious or 
is restrained.
<br />
T: Access Inventory<br />
when you own a car or other vehicle, you can access that car's inventory by sitting in the drivers seat 
 and pressing ""T"".  You will then be shown two box's.  The left box is what is in the car, 
and the right box is what is in your inventory.  Highlight the object you want to transfer, then 
select the amount and press the button on the side that has the item.  Car's hold a certain 
amount of weight just like your charactor so be aware of what you stash in there.  Also, if your 
vehicle is destroyed then you will loose whatever you place in here.  Coppers can search for 
drugs or other ileagal items.  If they find them in your car it will disappear and the coppers 
gain money equal to the value of the drugs.
<br />
left shift+F: Stun<br />
If you have a gun in your hands, you can stand next to another player and perform a stun action.  
Be aware that this will knock all of the other players weapons out onto the ground, so if you 
don't want to piss everyone off, only do this to your enemies.
<br />
0-0-6, 0-0-7, 0-0-8: shout outs<br />
Press these buttons to shout out measages on the fly.  For civilians the default says ""Don't 
Shoot, I surrender!"".  For cops, it says a variety of things but mainly says, ""Put up your 
hands or your dead"" kinda thing.
<br />
0-0: options<br />
this should give you the options for video settings, shout outs, fix head bug, and even a quick-
brief tutorial on CLR.""
<br />
Cops:<br />
`(tilde key (to the left of the 1 key): COPMENU. allows you to set their bounties, set them free 
and more. you have more options if you use the copmenu whilst in a vehicle.
<br />
"]];

