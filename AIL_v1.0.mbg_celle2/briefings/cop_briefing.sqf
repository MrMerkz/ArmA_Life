_coptencode = player createDiaryRecord ["Police Notes", ["Police Ten-Codes", "
Standard Ten-Code List:<br />
=========================================<br />
10-0 Caution<br />
10-1 Unable to copy -- change location<br />
10-2 Signal good<br />
10-3 Stop transmitting<br />
10-4 Acknowledgement (OK)<br />
10-5 Relay<br />
10-6 Busy -- stand by unless urgent<br />
10-7 Out of service<br />
10-8 In service<br />
10-9 Repeat<br />
10-10 Fight in progress<br />
10-11 Dog case<br />
10-12 Stand by (stop)<br />
10-13 Weather -- road report<br />
10-14 Prowler report<br />
10-15 Civil disturbance<br />
10-16 Domestic disturbance<br />
10-17 Meet complainant<br />
10-18 Quickly<br />
10-19 Return to ...<br />
10-20 Location<br />
10-21 Call ... by telephone<br />
10-22 Disregard<br />
10-23 Arrived at scene<br />
10-24 Assignment completed<br />
10-25 Report in person (meet) ...<br />
10-26 Detaining subject, expedite<br />
10-27 Drivers license information<br />
10-28 Vehicle registration information<br />
10-29 Check for wanted<br />
10-30 Unnecessary use of radio<br />
10-31 Crime in progress<br />
10-32 Man with gun<br />
10-33 Emergency<br />
10-34 Riot<br />
10-35 Major crime alert<br />
10-36 Correct time<br />
10-37 (Investigate) suspicious vehicle<br />
10-38 Stopping suspicious vehicle<br />
10-39 Urgent -- use light, siren<br />
10-40 Silent run -- no light, siren<br />
10-41 Beginning tour of duty<br />
10-42 Ending tour of duty<br />
10-43 Information<br />
10-44 Permission to leave ... for ...<br />
10-45 Animal carcass at ...<br />
10-46 Assist motorist<br />
10-47 Emergency road repairs at ...<br />
10-48 Traffic standard repair at ...<br />
10-49 Traffic light out at ...<br />
10-50 Accident (fatal, personal injury, property damage)<br />
10-51 Wrecker needed<br />
10-52 Ambulance needed<br />
10-53 Road blocked at ...<br />
10-54 Livestock on highway<br />
10-55 Suspected DUI<br />
10-56 Intoxicated pedestrian<br />
10-57 Hit and run (fatal, personal injury, property damage)<br />
10-58 Direct traffic<br />
10-59 Convoy or escort<br />
10-60 Squad in vicinity<br />
10-61 Isolate self for message<br />
10-62 Reply to message<br />
10-63 Prepare to make written copy<br />
10-64 Message for local delivery<br />
10-65 Net message assignment<br />
10-66 Message cancellation<br />
10-67 Clear for net message<br />
10-68 Dispatch information<br />
10-69 Message received<br />
10-70 Fire<br />
10-71 Advise nature of fire<br />
10-72 Report progress on fire<br />
10-73 Smoke report<br />
10-74 Negative<br />
10-75 In contact with ...<br />
10-76 En route ...<br />
10-77 ETA (estimated time of arrival)<br />
10-78 Need assistance<br />
10-79 Notify coroner<br />
10-80 Chase in progress<br />
10-81 Breathalyzer<br />
10-82 Reserve lodging<br />
10-83 Work school xing at ...<br />
10-84 If meeting ... advise ETA<br />
10-85 Delayed due to ...<br />
10-86 Officer/operator on duty<br />
10-87 Pick up/distribute checks<br />
10-88 Present telephone number of ...<br />
10-89 Bomb threat<br />
10-90 Bank alarm at ...<br />
10-91 Pick up prisoner/subject<br />
10-92 Improperly parked vehicle<br />
10-93 Blockade<br />
10-94 Drag racing<br />
10-95 Prisoner/subject in custody<br />
10-96 Mental subject<br />
10-97 Check (test) signal<br />
10-98 Prison/jail break<br />
10-99 Wanted/stolen indicated<br />"]];

_copcodes = player createDiaryRecord ["Police Notes", ["Police Codes", "
Codes for Police:<br />
=========================================<br />
Code 1: Standby<br />
Code 2: <br />
Code 3: <br />"]];

_jailtickets = player createDiaryRecord ["Police Notes", ["Jail Times/Tickets", "
Jail Times/Tickets:<br />
=========================================<br />
Jail times do not stack! What this means is you take the highest crime they have committed and add 2 minutes for every additional crime.<br />
<br />
Escaping jail is their current jail time plus 5 minutes.<br />
<br />
Transporting time must be subtracted from jail time.<br />
<br />
Ex: Someone is going to jail for 4 minutes, it takes 2 minutes to book them into jail. They should only be jailed for 2 minutes.<br />
<br />
Only an admin can authorize 25 minute jail times for rule breakers, failure to consult one will result in punishments!<br />
<br />
$100 excessive use of horn.<br />
$500 Illegal parking or impound car.<br />
$1000 speeding first time/issue warning to track count.<br />
$2000 speeding second time and impound car.<br />
$2500 reckless driving first offense and impound car.<br />
$5000 reckless driving second offense and impound car.<br />
$10,000 Failure to yield to emergency vehicle ESU/COP.<br />
$15,000 Failure to pay emergency repair cost (If a warrant has been set out by FD).<br />
$20,000 Illegal street race and impound of vehicle.<br />
$25,000 possession of illegal fire-arm no usage(non-automatic) and remove weapon.<br />
Bank robbery ticket for full inventory amount, if they deposit the money ticket for amount stolen.<br />
Convoy robbery ticket for full inventory amount, or $15,000 per online cop if they deposit the money.<br />
<br />
-2 minutes per slave or prostitute.<br />
-2 minutes failure to pay ticket.<br />
-3 minutes speed third offense and impound car.<br />
-3 minutes Attempted hit and run or successful(car ramming another car).<br />
-3 minutes evasion with reason.<br />
-3 minutes attempting to bribe an officer.<br />
-4 minutes gas station robbery/bar robbery.<br />
-4 minutes Third time offender reckless driving.<br />
-4 minutes usage of illegal drugs.<br />
-4 minutes possession of drugs.<br />
-5 minutes for bank robbery.<br />
-5 minutes failure to stop at check point.<br />
-5 minutes evasion without reason.<br />
-5 minutes for trolling opening cop car doors and so on.<br />
-5 minutes theft of a vehicle.<br />
-6 minutes selling of drugs or attempt to sell.<br />
-10 minutes for attempted or successful murder of a civilian.<br />
-8 minutes attacks on the government convoy.<br />
-8 minutes evasion lasting longer than 5 minutes or you may take the suspect out with lethal.<br />
for every following cop murder add 5 minutes.<br />
-10 Hit and Run of a pedestrian resulting in injury or death.<br />
-20 minutes for terrorist acts.<br />
-20 minutes for an attempted or successful cop murder.<br />"]];