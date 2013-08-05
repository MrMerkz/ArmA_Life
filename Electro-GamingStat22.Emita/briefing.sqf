////////////////////////////////////
////			         //
//      Copyright � EG          //
// www.Electrogaming.enjin.com //
////////////////////////////////
///-SCRIPT INFORMATION-//
//Initializing Profile Default
//
//-SCRIPT CONDITONS-//
//Script Begins: On Server Initialization
//Script Ends  : On EOF

if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Mission Changelog"];
player createDiarySubject ["controls","Address Book & Controls"];
Player CreateDiarySubject ["Jail","Jail Times"];
player createDiarySubject ["rules","Commonly Broken Rules"];
player createDiarySubject ["bugs","EG Website/TS3 Info"];
player createDiarySubject ["credits","Island Life Credits"];

player createDiaryRecord ["credits", 
[
"Island Life Mission Credits", 
"
<br/>
All ArmA life missions are derived from RP Mods Sahrani life<br/>
EG's Island Life Mission Edit by lifeman<br/>
Server configurations, technical work, and some mission updates by lifeman<br/>
Additional work and support contributed by EG Development<br/>
<br/>
Original base Life Missions created by EddieV223, Pogoman, Issetea, and Fewo from RP mods<br/>
"
]
];




player createDiaryRecord ["bugs", 
[
"Electro Gaming", 
"
<br/>
The EG Community Website may be found at<br/>
www.Electrogaming.enjin.com<br/>
<br/>
<br/>
Registering gives you access to our discussion forums<br/>
www.Electrogaming.enjin.com/forum
<br/>
<br/>
Please report any bugs with the mission at<br/>
www.Electrogaming.enjin.com/forum
<br/>
<br/>
Join your fellow players on Teamspeak 3 at<br/>
Address Electrogaming.ts3dns.com<br/>
"
]
];




player createDiaryRecord ["rules", 
[
"Commonly Broken Server Rules", 
"
Electro Gaming<br/>
<br/>
<br/>
A complete list of enforced server rules can be found online at<br/>
WWW.ELECTROGAMING.ENJIN.COM/RULES<br/>
<br/>
There are no excuses for not reading these rules, and all rule-breakers will be dealt with accordingly--Administrators will always have final say<br/>
<br/>
All COPs and ESU are REQUIRED to be on EG Teamspeak 3 with a working microphone--Please see Website/TS3 tab for Teamspeak information<br/>
<br/>
Don't be a stupid troll, don't drive like shit for no reason, don't evade unless you really think its worth it... because you may find the jail times and tickets just got RIL. To balance it out, cops are really going to have to start driving carefully unless on a call or they are going to find themselves getting fired immediately by IA or any admin that sees them dicking around.<br/>
<br/>
-Admins have final say.<br/>
<br/>
-Hacking, exploiting or glitching will result in a ban.<br/>
<br/>
-Death matching is killing without reason. For example, looking for cops to kill just to kill them, or if a civ kills another civ for no legitimate reason. Civs and cops should only get into firefights for reasons relating to crimes.<br/>
<br/>
-Intentionally running over any other player, cop or civ, is not allowed. Ramming other players' vehicles is not vehicle DM, but you must have a reason to do so.<br/>
<br/>
-Intentionally crashing an aircraft is not allowed at any time or for any reason.<br/>
<br/>
-You may not report any crime when you are dead or any crime that you saw in a previous life. Once you are dead, you cannot give out any information over game chat or TS. This is called Ghosting<br/>
<br/>
-If you are zip tied you must roleplay as though you are restrained, the same rules and practices that apply to being restrained by the police also apply if zip tied by civs.<br/>
<br/>
-Civs may never rob each other or take each other hostage inside the green zone at civ spawn. However, civs may rob or attempt to capture police anywhere including the green zone.<br/>
<br/>
-REMOVING GUNS FROM ANY CAR OR HIDEOUT THAT YOU DONT OWN OR LOCKPICK is against the rules. -If a police officer has the right to search a hideout or vehicle, they do not need to use lockpicks to search it or remove any weapons/items from it as long as it's within the rules-<br/>
<br/>
-Re-spawning while restrained or being stunned, or to avoid capture in any way is cheating and will be punished accordingly.<br/>
<br/>
-If anyone is in a gang area that you own or a gang area that you are trying to capture, you may kill them (except firefighters)<br/>
<br/>
-The -2 to 1- rule. There must be 2 civilians -Excluding Firefighters- for every police officer that is online. Joining the police team if this ratio is already met, is not allowed. However, you may join civ side if there are less than the required amount of officers.<br/>
<br/>
-If you're killed by a civ in a rival gang or a police officer, you get a new life. If you die by any other means you are still wanted after your death and do not get a new life.<br/>
<br/>
-Civilians with an unholstered weapon on gas station/bar/pharmacy property or in the immediate vicinity of the bank can be killed or arrested without warning.<br/>
<br/>
-The governor may carry a HOLSTER-ABLE weapon no matter how many guards he has.  The gov may not carry a primary weapon -a weapon that cannot be holstered-.<br/>
<br/>
-Pilots may only lift vehicles that they have keys to or have the owners permission.<br/>
<br/>
-We encourage all players to use the same nickname every time they play. Before changing your ingame name, you must post your new nickname in the name change forum section.<br/>
<br/>
-Gangs should not fight each other unless war has been declared between the gangs. -A verbal agreement to a gang war can only be declared by gang leaders, however, there are other ways to start a gang war. If only one leader wants a gang war but the other leader does not, the war must be initiated in another way. See the next rule-<br/>
<br/>
-Neutralizing or capturing another gang's gang area, killing/attempting to kill or stealing from another gang are considered declarations of war.<br/>
<br/>
-It is a felony to land an air vehicle on any road, inside of town or out.  Obviously permission from the police to land renders such a landing legal.<br/>
<br/> 
-Civilian aircraft are never permitted land inside city limits -except on helipads or runways- unless given permission by the police chief, to land without permission inside city limits is a felony.<br/>  
<br/>
Make sure you read all the rules at www.Electrogaming.enjin.com<br/>
"
]
];



player createDiaryRecord ["Jail", 
[
"Jail Times", 
"
<br/>
Most tickets should be around $1000-$2000. For any other ticket...use your best judgment and be fair<br/>
<br/>
For drivers that have more than 2 traffic violations these traffic laws are subject to as much as twice
the posted fine amount.<br/>
<br/>
If a civ commits 3 traffic violations in the same vehicle that vehicle can be impounded and the civ can be arrested for a min or fined up to 10k<br/>
<br/>
Jail times don't stack. As a general rule of thumb, it should be the most severe crime plus 2 min for every further offense<br/>
<br/>
use your best judgement when arresting someone for trafficking drugs<br/>
<br/>
-10 min for opening cop car doors to be a troll, or otherwise behaving trollishly (crowding around cops for no reason at civ spawn, running around while yelling in direct for no reason).  If a person does this more than once in a short period of time, try to get admin approval for a 25 minute sentence.<br/>
<br/>
-8 min for evasion.  If you believe the person evaded without cause (they were not wanted, had no fugitives in the car, etc.) you can take it to an admin and IF THE ADMIN APPROVES jail them for 25 minutes.  If you cannot find an admin or they are too busy to deal with investigating it, you must simply jail them for 8 minutes.<br/>
<br/>
-If someone evades by vehicle while being actively pursued for more than 5 minutes, 15 minutes in jail is appropriate.<br/>
<br/>
-2 min per slave/prostitute<br/>
<br/>
-3 Min Attempted Hit and Run<br/>
<br/>
-8 min for evasion<br/>
<br/>
-3 Min Running Roadblock<br/>
<br/>
-4 min for gas station and bar robbery<br/>
<br/>
-4 min for auto theft, 5 min police auto theft<br/>
<br/>
-6-7 min for a murder and attempted murder of a civ<br/>
<br/>
-10 min for a murder, attempted or completed<br/>
<br/>
-12-16 min for 2-3 murders<br/>
<br/>
-25 min for murder of more than 3 police officers<br/>
<br/>
-10 Min for bank robbery<br/>
<br/>
-10-15 min for terrorism, IE. bombing, check point attacks, driving armed vehicles<br/>
<br/>
Admin approval is only required if you are putting someone in jail for breaking the rules. Players can be arrested for up to 25 min without admin approval as long as they deserve that amount of jail time. For example, you dont need to get admin approval to put someone in jail for 25 min if they killed 15 people.<br/>
<br/>
DO NOT ARREST PEOPLE FOR 25 MINUTES FOR BREAKING A RULE WITHOUT TALKING TO AN ADMIN FIRST<br/>
<br/>
"
]
];


player createDiaryRecord["controls",
[
"Donator Bases",
"
Island Life Address Book
<br/><br/>
1000 <marker name='EG'>Electrogaming.ENJIN.COM</marker><br/>
1027 <marker name='Luccompound'>Kony</marker><br/>
1066 <marker name='Hidden_Ops_2'>Salty,DazedCanadian And SmileyDface</marker><br/>
1102 <marker name='Jebus'>lifeman</marker><br/>
1022 <marker name='Ken'>Luihuable</marker><br/>
1051 <marker name='hagar'>Juki</marker><br/>
1067 <marker name='Mort_1'>Raven</marker><br/>
1040 <marker name='Herzog'>Sauz</marker><br/>
1052 <marker name='Walter'>troy207</marker><br/>
1095 <marker name='HellDriven'>obamabinladin</marker><br/>
1069 <marker name='ghostrecon'>Catwoman</marker><br/>
1053 <marker name='vandijk'>xiValve</marker><br/>
1096 <marker name='Kirby'>Knox</marker><br/>
1085 <marker name='micheal'>MrDickFitzwell</marker><br/>
1059 <marker name='cidos'>Neutron</marker><br/>
1058 <marker name='jacko1'>MrDickFitzwell</marker><br/>
1029 <marker name='jacko2'>MrDickFitzwell</marker><br/>


"
]
];





player createDiaryRecord ["controls", 
[
"Animations Continued", 
"
urban prone LEFT:<br/>
	- move left: Left<br/>
	- move right: Right<br/>
	- back to prone: Z<br/>
	- move to urban prone RIGHT: MTB + Right<br/>
	- raise weapon: Forward<br/>
	- Blind fire: MTB + Left<br/>
urban prone Right:<br/>
	- back to prone: Z<br/>
	- raise weapon: Forward<br/>
	- raise weapon higher: MTB + Forward<br/>
	- move to urban prone RIGHT: MTB + Left<br/>
	- Blind fire: MTB + Right<br/>
panic move:<br/>
	- urban prone left: X<br/>
	- prone: Z<br/>
launcher standing:<br/>
        - launcher prone: fast + Backwards<br/>
launcher crouching:<br/>
	- launcher prone: fast + Backwards<br/>
pistol quick stand:<br/>
	- Blindfire left: MTB + Left<br/>
	- Blindfire right: MTB + Right<br/>
	- Blindfire overhead: MTB + Back<br/>
pistol normal hold:<br/>
        - when pistol out, toggle: c<br/>
Back to wall:<br/>
	- move left: Left<br/>
	- move right: Right<br/>
	- weapon round the corner: Forward<br/>
	- turn around and aim weapon forward: backwards<br/>
	- blindfire right: MTB + Right<br/>
	- blindfire overhead: MTB + Backwards<br/>
	- peak around the corner: MTB + Forward<br/>
	- go back to crouch: x<br/>
	- Grenade round the corner: choose grenade and throw<br/>
	- Grenade overhead throw: press salute and then do above<br/>
"
]
];





player createDiaryRecord ["controls", 
[
"Animations", 
"
DEFINE Turbo key (suggestion - Mouse thumb button)<br/>
using default key settings, if different, just replace the letter<br/>
Z - prone<br/>
X - crouch<br/>
C - stand<br/>
2xctrl - weapon down/up toggle<br/>
standing: <br/>
	- panic button: sitdown<br/>
	- blind fire left: MTB + Left<br/>
	- blind fire right: MTB + Right<br/>
	- blind fire up: MTB + Back<br/>
	- taunt: MTB + Back + Left (to play it smooth, first use direction keys then turbo)<br/>
	- quick lower your head: MTB + Back + Right<br/>
running forward:<br/>
	- jog pace: 2x ctrl<br/>
	- quick step over: step over<br/>
	- weapon down: C<br/>
sprinting:<br/>
	- slide: X<br/>
	- climb over the wall: C<br/>
crouching:<br/>
	- kneel: X<br/>
	- quick lower your head: MTB + Back + Right<br/>
	- blind fire left: MTB + Left<br/>
	- blind fire right: MTB + Right<br/>
	- blind fire up: MTB + Back<br/>
	- panic move: sitdown<br/>
	- sniper sit: getOver<br/>
	- back to wall: salute<br/>
kneeling: <br/>
	- crouch: X<br/>
other moves apply as in crouching<br/>
proning:<br/>
	- urban prone left: MTB + Left<br/>
	- urban prone right: MTB + Right<br/>
	- launcher proning: Select launcher<br/>

"
]
];




player createDiaryRecord ["controls", 
[
"IL Controls for New Players", 
"
Civilian:<br/>
#1: Stats<br/>
here is where you will find a great deal of useful information.  Anything from how much money you 
are carrying to who has a bounty and how much that bounty may be.<br/>
#2: Inventory:<br/>
-this will tell you what you are carrying and also provides an interface to use some of those 
items in your inventory.  For example, if your getting the measage, ""You Are Starving"" and you 
have 10 fish in your inventory.  Press the #2, highlight ""fish"", change the number in the box 
to ""10"", then click ""use"".  That will make your charactor eat the fish and you will loose 
some hunger (high hunger is a bad thing).  You may also notice ""key chain"" in your inventory.  
This will hold all your keys to the vehicles you own.  You can give these keys to other players 
via this interface but know that they need to be near you for something like 5 seconds to receive 
the item.<br/>
#3: Hands Up<br/>
This button will make your charactor put his hands up.  This is useful for when you want to show 
the coppers that you are not a threat and are cooperating.  They can then restrain you if they 
feel the need.
<br/>
#4: Hands Down<br/>
this button will return you to a normal pos from ""hands up"".
<br/>
E: Action<br/>
this button is your basic ""action button"".  this is how you will interact with the various 
interfaces around Chern such as shops and ATM's.  This will also allow you to attempt to steal 
from other players.  You can only steal money if the other player has been knocked unconscious or 
is restrained.
<br/>
T: Access Inventory<br/>
when you own a car or other vehicle, you can access that car's inventory by sitting in the drivers seat 
 and pressing ""T"".  You will then be shown two box's.  The left box is what is in the car, 
and the right box is what is in your inventory.  Highlight the object you want to transfer, then 
select the amount and press the button on the side that has the item.  Car's hold a certain 
amount of weight just like your charactor so be aware of what you stash in there.  Also, if your 
vehicle is destroyed then you will loose whatever you place in here.  Coppers can search for 
drugs or other ileagal items.  If they find them in your car it will disappear and the coppers 
gain money equal to the value of the drugs.
<br/>
left shift+F: Stun<br/>
If you have a gun in your hands, you can stand next to another player and perform a stun action.  
Be aware that this will knock all of the other players weapons out onto the ground, so if you 
don't want to piss everyone off, only do this to your enemies.
<br/>
0-0-6, 0-0-7, 0-0-8: shout outs<br/>
Press these buttons to shout out measages on the fly.  For civilians the default says ""Don't 
Shoot, I surrender!"".  For cops, it says a variety of things but mainly says, ""Put up your 
hands or your dead"" kinda thing.
<br/>
0-0: options<br/>
this should give you the options for video settings, shout outs, fix head bug, and even a quick-
brief tutorial on CLR.""
<br/>
Cops:<br/>
`(tilde key (to the left of the 1 key): COPMENU. allows you to set their bounties, set them free 
and more. you have more options if you use the copmenu whilst in a vehicle.
<br/>

"
]
];

player createDiaryRecord ["changelog", 
[
"EG IL Changelog", 
"<br/>
--EG IL V2.1--Emita<br/>
Fixed some Bugs<br/>
Added more Speed bumps<br/>
Fixed Vehicle Save!<br/>
The bank will now get closed wen you robb it so you need to wait for the cops<br/>
New Cop Base<br/>
Added all the new Donators to thers stuff<br/>
Cops can now drag civs so you dont need to tell them to rp to the car or something like that :)<br/>
Cops can now Impound vehicle's<br/>
By Lifeman for Electrogaming.enjin.com<br/>
--EG IL V1.6--Emita<br/>
Fixed some Bugs in the Stat Save<br/>
Added Some more Antihack!<br/>
<br/>
--EG IL V1.5--Emita<br/>
Stat Save Fixed<br/>
Antihack Load Faster Now<br/>
<br/>
--EG IL V1.4--Emita<br/>
New Antihack<br/>
New Welcome Msg<br/>
Added Donator to thers houses<br/>
<br/>
--EG IL V1.2--Emita<br/>
Revive Script Removed<br/>
Server Cleaner will fix some off the lagg<br/>
The Server will now Fix Broken Buildings<br/>
<br/>
--EG IL V1.0--Emita<br/>
Working on Stat Save for our new mission comming very soon!<br/>
Revive Script Added<br/>
Added New Jail.<br/>
Added New Bank.<br/>
<br/>

"
]
];

player selectDiarySubject "changelog";