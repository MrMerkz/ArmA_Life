playMusic "Intro";
_text = [
"<t underline='false' color='#00FFFF'>You can find the rules, getting started info, changelog and more on the map page by pressing 'M'.</t><br/>
<t underline='true' color='#00FFFF'>Founders</t><br/>
ProPilot, HaXor<br />
<t underline='true' color='#00FFFF'>Server Admins</t><br/>
!OneVirus!, Spiffy, Dead, xARMYvSTRONGx<br />
<t underline='true' color='#00FFFF'>Game Admins</t><br/>
Big D, Agent Stig, Killakurt, Big B, Big T, Proffesional, Nerdystingray, N.Kimborowicz, =LoD= CookieMonster<br />
<t underline='true' color='#00FFFF'>Moderators</t><br/>
KIAxSwampyKnight, ZIEMBA, Worganiser<br />
<t underline='true' color='#00FFFF'>Helpers</t><br/>
Crazyram, Max12345678999, Niko, =LoD= Madmansam, Sonicroden, Chad, Cry, El Salvador, Chandler, Silas<br />
<t underline='true' color='#00FFFF'>Developers</t><br/>
ProPilot, xARMYvSTRONGx, =LoD= CookieMonster, Chad, Crazyram, LostS77<br />
<t underline='true' color='#00FFFF'>Contact</t><br />
TS3: armaislandlife.ts3dns.com<br />
Welcome to Arma Island life!<br />
<br />
Please visit the forums to fill out bug reports or post suggestions and to keep up to date on the rules.<br />
<br />
Only click 'Continue' if you are willing to read and play by the rules!"
];

_t = [];
{
	_t = _t + [(parseText _x)];
} foreach _text;
_text = _t;

"...Arma Island Life..." hintC _text;