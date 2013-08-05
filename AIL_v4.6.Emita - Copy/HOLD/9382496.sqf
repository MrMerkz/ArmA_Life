
playMusic "Intro";

_text = [


"<t underline='false' color='#00FFFF'>You can find the rules, getting started info, changelog and more on the map page by pressing 'M'.</t><br/>",

"<t underline='true' color='#00FFFF'>Founders</t><br/>
ProPilot, HaXor",

"<t underline='true' color='#00FFFF'>Head Admins</t><br/>
!OneVirus!",

"<t underline='true' color='#00FFFF'>Super Admins</t><br/>
Xyven, Spiffy, Psycopathic",

"<t underline='true' color='#00FFFF'>Game Admins</t><br/>
Agent Stig, Dead, Big D, Mr. B1GH1LL, Spiffy, Craig, AwkwardGamingTurtle",

"<t underline='true' color='#00FFFF'>Current Moderators</t><br/>
Max12345678999, Big T",

"<t underline='true' color='#00FFFF'>Contact</t><br />
TS3: armaislandlife.ts3dns.com<br />
Welcome to Arma Island life!<br />
<br />
Please visit the forums to fill out bug reports or post suggestions and to keep up to date on the rules.
<br />
<br />
Only click 'Continue' if you are willing to read and play by the rules!"

];

_t = [];
{
_t = _t + [(parseText _x)];
} foreach _text;
_text = _t;

"...Arma Island Life..." hintC _text;
