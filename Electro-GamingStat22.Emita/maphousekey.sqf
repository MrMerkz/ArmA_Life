//When you alter _MARKERS ensure you edit burgler.sqf

_house  = ((_this select 3) select 0);
_housename = ((_this select 3) select 1);
_uid = getPlayerUID vehicle player;

_unit = _this;
_dist = 10;
_marker = "";
{_range = ((getMarkerPos _x) distance (player));
if (_range < _dist) then 
{_dist = _range; _marker = _x};	
} foreach Homearray;

switch true do
{
case (_marker == "sample"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "troy207_2"):{if(_uid == "139525126") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "troy207_1"):{if(_uid == "139525126") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "troy207"):{if(_uid == "139525126") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Sauz"):{if(_uid == "135279750") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "obamabinladen911"):{if(_uid == "12109510") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "obamabinladen911_1"):{if(_uid == "12109510") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Luihuable"):{if(_uid == "136186886") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Raven"):{if(_uid == "110054790") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Raven_1"):{if(_uid == "110054790") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Raven_2"):{if(_uid == "110054790") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "AnarchyX14"):{if(_uid == "112270790") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "DickFitzwell"):{if(_uid == "86900294") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "DickFitzwell_1"):{if(_uid == "86900294") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Druxus"):{if(_uid == "138479366") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Catwoman"):{if(_uid == "92922950") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Catwoman_1"):{if(_uid == "92922950") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Catwoman_2"):{if(_uid == "92922950") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Neutron"):{if(_uid == "12305645") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "lion"):{if(_uid == "130185798") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "TyDiesFinest"):{if(_uid == "12960070") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "TyDiesFinest_1"):{if(_uid == "12960070") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "KoreanBear"):{if(_uid == "30262022") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Adam"):{if(_uid == "129708870") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Kony"):{if(_uid == "64860806") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Kony_1"):{if(_uid == "64860806") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Kony_2"):{if(_uid == "64860806") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Kony_3"):{if(_uid == "64860806") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Kony_4"):{if(_uid == "64860806") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Kony_5"):{if(_uid == "64860806") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Kony_6"):{if(_uid == "64860806") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Kony_7"):{if(_uid == "64860806") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Juki"):{if(_uid == "105846214") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Juki_1"):{if(_uid == "105846214") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "DickFitzwell_1"):{if(_uid == "86900294") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Valve"):{if(_uid == "37965510") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "PeterGriffin"):{if(_uid == "109834182") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "PeterGriffin_1"):{if(_uid == "109834182") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "PeterGriffin_2"):{if(_uid == "109834182") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Kreavo"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "CocaCola"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "jefw123"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Luc_1"):{if(_uid == "64860806") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "luc_2"):{if(_uid == "64860806") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "luc_3"):{if(_uid == "64860806") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "luc_4"):{if(_uid == "64860806") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "luc_5"):{if(_uid == "64860806") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Jacko1"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Jacko2"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Jacko3"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "killsteal"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "legit"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "richards"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "kilroy"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Jolly"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Hodge"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Hodge2"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "smoothface202"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "smoothface2021"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "smoothface2022"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Tom"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Joey"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Dougalachi"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Herzog"):{if(_uid == "135279750") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "xEpicnatorx"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Sgt.Maxiimus"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Sgt.Maxiimus1"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Grant"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Repp"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "AUZ_K1LL3R"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Doss"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Xanxth"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "kwmx"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Fab"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "vandijk"):{if(_uid == "37965510") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "vandijk1"):{if(_uid == "37965510") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "vandijk2"):{if(_uid == "37965510") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Walter"):{if(_uid == "138711622") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Walter1"):{if(_uid == "138711622") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Walter2"):{if(_uid == "138711622") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Hinesy"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "White"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Jesse"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "caseter6"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "cidos"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "cidos1"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "js2195"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "dantheman221"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "jackygaming"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "bobthebeastyy"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "unseen"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "undeadlegend_1"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "undeadlegend_2"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "undeadlegend_3"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Hidden_Ops_1"):{if(_uid == "13081926") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Hidden_Ops_2"):{if(_uid == "35669190") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Hidden_Ops_3"):{if(_uid == "36931718") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Mort_1"):{if(_uid == "110054790") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Mort_2"):{if(_uid == "110054790") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Mort_3"):{if(_uid == "110054790") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "greenlantern"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "ghostrecon"):{if(_uid == "92922950") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "ghostrecon2"):{if(_uid == "92922950") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "jgunn"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "austin1"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "austin2"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "austin3"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "steffan"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Shakedown"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "ElectrifiedGamerHD"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Belliosus"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "LtMartinez"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "AngelusofRuin"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "AngelusofRuin1"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "AngelusofRuin2"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "CurtEvilAlien"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Fruerlund"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "tomcompound"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "UniqueChipmunk"):{if(_uid == " ") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Blackburn"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Dalmiwert"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "michaelrasch"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Fruerlund2"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "micheal"):{if(_uid == "86900294") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "micheal_2"):{if(_uid == "86900294") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "micheal_3"):{if(_uid == "86900294") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "medic"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "medic_2"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "medic_3"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "blackburn_compound"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Darkwage"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Lee"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "TRendoonfire69"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "CurtEvilAlien_House"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "willin4akillin"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "DtownG"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Silas"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "HellDriven"):{if(_uid == "12109510") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "HellDriven_1"):{if(_uid == "12109510") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Kirby"):{if(_uid == "30508038") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Kirby_1"):{if(_uid == "30508038") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "RyanHooli"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "AUZK1LL3R"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Harris"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Harris_1"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Serphantos"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Jebus"):{if(_uid == "82958150") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Jebus_1"):{if(_uid == "82958150") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "AdamC"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "bruce"):{if(_uid == "129310342") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "wloski"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "MrCole"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Hornby"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "fafel"):{if(_uid == "4129538") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};

//case (_marker == ""):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
default {[_house,_housename] execVM "maphouse.sqf";};
};

