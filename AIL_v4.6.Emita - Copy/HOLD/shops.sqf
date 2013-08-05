


if(isServer)then

{

INV_itemstocks = 

[
//fs
-1,//1
-1,//2
-1,//3
-1,//4
-1,//5
-1,//6
-1,//7
-1,//8
-1,//9
-1,//10
-1,//11
-1,//12
-1,//13
-1,//14
-1,//15
-1,//16
-1,//17
-1,//18
-1,//19
-1,//20
-1,//21
-1,//22
-1,//23
-1,//24
-1,//25
-1,//26
-1,//27
-1,//28
-1,//29
-1,//30
-1,//31
-1,//32
-1,//33
-1,//34
-1,//35
-1,//36
-1,//37
-1,//38
-1,//39
-1,//40
-1,//41
-1,//42
-1,//43
-1,//44
-1,//45
-1,//46
-1,//47
-1,//48
-1,//49
-1,//50
-1,//51
-1,//52
-1,//53
-1,//54
-1,//55
-1,//56
-1,//57
-1,//58
-1,//59
-1,//60
-1,//61
-1,//62
-1,//63
-1,//64
-1,//65
-1,//66
-1,//67
-1,//68
//barely legal
-1,//69
-1,//70
-1,//71
-1,//72
-1,//73
-1,//74
//ds
-1,//75
-1,//76
-1,//77
-1,//78
-1,//79
-1,//80
-1,//81
//ca, cv, cs, cp, cr, cs
-1,//82
-1,//83
-1,//84
-1,//85
-1,//86
-1,//87
-1,//88
-1,//89
-1,//90
-1,//91
-1,//92
-1,//93
-1,//94
-1,//95
-1,//96
-1,//97
-1,//98
-1,
-1
];

publicvariable "INV_itemstocks";

};

INV_itemmaxstocks = 

[
//fs
-1,//1
-1,//2
-1,//3
-1,//4
-1,//5
-1,//6
-1,//7
-1,//8
-1,//9
-1,//10
-1,//11
-1,//12
-1,//13
-1,//14
-1,//15
-1,//16
-1,//17
-1,//18
-1,//19
-1,//20
-1,//21
-1,//22
-1,//23
-1,//24
-1,//25
-1,//26
-1,//27
-1,//28
-1,//29
-1,//30
-1,//31
-1,//32
-1,//33
-1,//34
-1,//35
-1,//36
-1,//37
-1,//38
-1,//39
-1,//40
-1,//41
-1,//42
-1,//43
-1,//44
-1,//45
-1,//46
-1,//47
-1,//48
-1,//49
-1,//50
-1,//51
-1,//52
-1,//53
-1,//54
-1,//55
-1,//56
-1,//57
-1,//58
-1,//59
-1,//60
-1,//61
-1,//62
-1,//63
-1,//64
-1,//65
-1,//66
-1,//67
-1,//68
//barely legal
-1,//69
-1,//70
-1,//71
-1,//72
-1,//73
-1,//74
//ds
-1,//75
-1,//76
-1,//77
-1,//78
-1,//79
-1,//80
-1,//81
//ca, cv, cs, cp, cr, cs
-1,//82
-1,//83
-1,//84
-1,//85
-1,//86
-1,//87
-1,//88
-1,//89
-1,//90
-1,//91
-1,//92
-1,//93
-1,//94
-1,//95
-1,//96
-1,//97
-1,//98
-1,
-1

];

// Shop items

_emptyshop = [];
//Fuel Shop
_fs = ["kanister","Fuelline","reparaturkit","tcgmp","gdar","bjerk","wulf"];
_fs2 =["fishingpole","tcgmp","rawcow","boar","doshd","gdar","bjerk","wulf","Huntingrifle","5x_22_LR_17_HMR","MBG_Compound_Bow","MBG_Arrow_N","JoC_Flitsche","JoC_FlitschMag","tcg_remington","tcg_mossberg","tcg_combat","Saiga12K","LeeEnfield","10x_303","8Rnd_B_Saiga12_Pellets","8Rnd_B_Beneli_Pellets","KPFS_KarS","KPFS_10Rnd_762x39_SKS"];
//Item Shop
_is = ["apple","straw","getreide","blowfish","mackerel","herring","perch","trout","walleye","bass","boar","lighter"];
//Copbasefood
_cf = ["wulf","bjerk","tcgmp","doshd"];
//Alcohol shop
_pub = ["beer","beer2","vodka","smirnoff","wiskey","wine","wine2"];

//Pistol Shop
_gss = ["RH_g19t","RH_17Rnd_9x19_g17","RH_p38","RH_8Rnd_9x19_p38","RH_tt33","RH_8Rnd_762_tt33","RH_browninghp","RH_13Rnd_9x19_bhp","RH_uspm","RH_12Rnd_45cal_usp","RH_usp","RH_15Rnd_9x19_usp","RH_mk2","RH_10Rnd_22LR_mk2","RH_m93r","RH_20Rnd_9x19_M93","RH_m9c","Rnd_9x19_M9","RH_anacg","RH_6Rnd_44_Mag","RH_python","RH_6Rnd_357_Mag","RH_deagle","RH_7Rnd_50_AE","RH_g17","RH_19Rnd_9x19_g18","RH_m1911old","RH_8Rnd_45cal_m1911","RH_bull","RH_6Rnd_44_Mag","C1987_P99_black","15Rnd_9x19_p99"];

_ass = ["RH_m9sd","15Rnd_9x19_M9SD","RH_g17sd","RH_17Rnd_9x19_g17SD","RH_m1911sd","RH_8Rnd_45cal_m1911","RH_mk22sd","RH_8Rnd_9x19_Mksd","RH_uzisd","RH_9mm_32RND_SD_Mag","C1987_P99_black_sd","15Rnd_9x19_p99_sd"];
_mgs = ["RH_mk22","RH_8Rnd_9x19_Mk","KPFS_MP2","KPFS_32Rnd_MP2","RH_muzi","RH_32rnd_9x19_Muzi","RH_uzi","RH_9mm_32RND_Mag","RH_tmpeot","30Rnd_9x19_MP5","RH_fmg9","RH_9mm_32RND_Mag","GPS","NVGoggles","CHRYSLER_B_limmo","tcg_taurus_security", "ilpd_ags_cvpi"];
//Equiptment shop
_es = ["Binocular","GPS","NVGoggles","hideout","fishingpole"];
//gocart
_gc = ["Da_kart"];
//Car Upgrades
_cu = ["supgrade1","supgrade2"];
//Car Shop
_cs1 = ["MMT_USMC","Volha_1_TK_CIV_EP1","Volha_2_TK_CIV_EP1","Lada2_TK_CIV_EP1","S1203_TK_CIV_EP1","civic","Car_hatchback","VWGolf","Car_Sedan","SkodaBlue","Skodared","lada1","lada2","LandRover_TK_CIV_EP1","datsun1_civil_3_open","UAZ_Unarmed_TK_CIV_EP1","oldtruck","Tractor"];
_cs2 = ["MMT_USMC","tractor","oldtruc2","oldtruc2a","Volha_1_TK_CIV_EP1","Lada2_TK_CIV_EP1"];
//Sports Car Shop
_sc1 = ["440cuda","roadrunner","roadrunner2","CHEVROLET_CAMARO_SS_396","chevrolet_chevelle","cuda","hemicuda","cd71hm","barcuda","fury","FORD_MUSTANG_SHELBY_COBRA","FORD_MUSTANG_SHELBY_COBRA1","FORD_MUSTANG_SHELBY_COBRA2","FORD_MUSTANG_SHELBY_COBRA3","FORD_GT","monaco","monaco_grey","monaco_blue","monaco_white","monaco_green","monaco_red","challenger_grey","challenger_blue","challenger_yellow","challenger_pink","challenger_white","challenger_green","challenger_red","challenger_orange"];
_sc2 = ["cl_charger","cl_charger_black","il_charger_blue","il_charger_black","il_charger_red","il_charger_orange","MAZDA_RX_7","MAZDA_RX_71","MAZDA_RX_72","MAZDA_RX_73","MAZDA_RX_75","MAZDA_RX_74","MAZDA_MAZDASPEED_3"];
_sc3 = ["CHRYSLER_300","RENAULT_CLIO_SPORT_V6","SUBARU_IMPREZA_WRX_STI_AWD","SUBARU_IMPREZA_STI_AWD","FIAT_PUNTO","ALFA_ROMEO_BRERA","NISSAN_240SX_SE","PONTIAC_GTO_6","240GD"];
_sc4 = ["MustangGTRyellow_MLOD","Convertible_MLOD","FORD_SHELBY_GT","CHRYSLER_W_limmo","CORVETTE_Z06","INFINITI_G35","MERCEDES_BENZ_CLK_500","MERCEDES_BENZ_SL_65_AMG","JAGUAR_XK","CADILLAC_CTS"];
_sc5 = ["CL_PORSCHE_997","CL_LAMBORGHINI_GT3","KOENIGSEGG_CCX","KOENIGSEGG_CCX1","KOENIGSEGG_CCX2","KOENIGSEGG_CCX3","MCLAREN_F1","MERCEDES_BENZ_SLR","PORSCHE_997_GT3_RSR","PORSCHE_911_TURBO","PORSCHE_911_GT3_RS","LAMBORGHINI_MURCIELAGO","LAMBORGHINI_REVENTON","LAMBORGHINI_GALLARDO","MASERATI_MC12","JAGUAR_XK","BUGATTI_VEYRON","AUDI_TT_QUATTRO_S_LINE","AUDI_FSI_LE_MANS","PAGANI_ZONDA_F","ASTON_MARTIN_DB9"];
_sc6 = ["NISSAN_GTR_SPECV","NISSAN_GTR_SPECV1","NISSAN_GTR_SPECV2","NISSAN_GTR_SPECV3","NISSAN_350Z","NISSAN_370Z","NISSAN_370Z1","NISSAN_370Z2","NISSAN_370Z3","NISSAN_370Z4","NISSAN_SKYLINE_GT_R_Z","NISSAN_SKYLINE_GT_R_Z1","NISSAN_SKYLINE_GT_R_Z2","NISSAN_SKYLINE_GT_R_Z3"];
_sc7 = ["350z_red","350z_kiwi","350z_black","350z_silver","350z_green","350z_blue","350z_gold","350z_white","350z_pink","350z_mod","350z_ruben","350z_v","350z_yellow"];
_sc8 = ["tcg_taurus_civ1","tcg_taurus_civ2","tcg_taurus_civ3","tcg_taurus_civ4","tcg_taurus_civ5","tcg_taurus_civ6","il_fordcv_white","il_fordcv_grey","il_fordcv_black","il_fordcv_darkblue","il_fordcv_maroon","il_fordcv_sandstone"];
_sc9 = ["m5_red","m5_grey","m5_blue","m5_c_green","m5_c_black","m5_c_white","BMW_M6","BMW_M3_GTR","BMW_M3","BMW_M3_RALLY","BMW_135I","tcg_bmw_m3","tcg_bmw_m3_hamwhite","tcg_bmw_m3_c1","tcg_bmw_m3_c3","tcg_bmw_m3_c4","tcg_bmw_m3_c5","tcg_bmw_m3_c6","tcg_bmw_m3_c7","tcg_bmw_m3_c8","tcg_bmw_m3_c9"];
//Tahoe shop
_tahoe = ["tahoe_grey","tahoe_darkblue","tahoe_blue","tahoe_yellow","tahoe_white","tahoe_green","tahoe_black","tahoe_orange","tahoe_pink","tahoe_darkblue_cb","tahoe_grey_cb","tahoe_blue_cb","tahoe_yellow_cb","tahoe_pink_cb","tahoe_white_cb","tahoe_green_cb","tahoe_black_cb","tahoe_orange_cb"];
//Pickup Shop - 
_ps = ["oltruc3","datsun1_civil_1_open","datsun1_civil_2_covered","datsun1_civil_3_open","hilux1_civil_1_open","hilux1_civil_2_covered","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","tcg_suburban_red","tcg_suburban_yellow","tcg_suburban_grey","tcg_suburban_white","tcg_suburban_green","suburban_blue","suburban_black","suburban_maroon","suburban_sandstone","suburban_grey","suburban_white","f350","f350_blue","f350_pink","f350_white","f350_black","sierra","sierra_grey","sierra_blue","sierra_yellow","sierra_pink"];
//taxi shop
_tx = ["GLT_M300_LT","GLT_M300_ST","il_fordcv_taxi","tcg_taurus_taxi"];
//motorcycle shop
_mbs = ["tcg_hrly","tcg_hrly_coco","tcg_hrly_demon","tcg_hrly_limited","tcg_hrly_orig1","tcg_hrly_gay","tcg_hrly_metal","tcg_hrly_orig2","tcg_hrly_white","tcg_hrly_blue","tcg_hrly_red","Old_moto_TK_Civ_EP1","TT650_TK_CIV_EP1","TT650_Ins","TT650_Civ","ATV_CZ_EP1"];
_qbs = ["cl_quaddescammo","cl_green","cl_quadred","cl_quadsaftysteel","cl_quadyellow","cl_blue2","cl_chark","cl_dirtyred"];
_qbss = ["tcg_aprilia_blue","tcg_aprilia_yellow","tcg_aprilia_white","tcg_aprilia_green","tcg_aprilia_red","tcg_aprilia_black","tcg_aprilia_black_2","tcg_aprilia_blue_2","tcg_aprilia_blue_4","tcg_aprilia_blue_5","tcg_aprilia_cyan","tcg_aprilia_green_3","tcg_aprilia_orange","tcg_aprilia_red_1","tcg_aprilia_red_2","tcg_aprilia_white_2","tcg_aprilia_yellow_2"];
//Truck Shop
_ts = ["cl_del_mackr","cl_trucktest_mackr","cl_flatbed_mackr","Ural_TK_CIV_EP1", "V3S_Open_TK_CIV_EP1", "V3S_TK_EP1","UralOpen_CDF","KamazOpen","Ural_CDF","schoolbus"];
//Bus Shop
_bss = ["Ikarus_TK_CIV_EP1","Ikarus"];
//Air Shop
_as = ["An2_1_TK_CIV_EP1","An2_2_TK_CIV_EP1","USEC_MAULE_M7_STD","gnt_piperwii","GNT_C185F","GNT_C185E","GNT_C185R","GNT_C185C","GNT_C185"];
_assa = ["kyo_ultralight","AH6X_EP1","KA137_PMC","CSJ_Gyroc","Mi17_Civilian","bd5j_civil_3","bd5j_civil_2","bd5j","GazelleUN","GazelleD","Gazelle","Gazelle1","Gazelle3","adf_as350","ibr_as350_specops","ibr_as350_jungle","tcg_bell206_3","tcg_bell206_4","tcg_bell206_1","tcg_bell206_2","tcg_bell206_5","tcg_bell206", "MH6J_EP1"];
_asc = ["can_c130","airnz_C130","luf_c130","qantas_C130","A320MPA"];
//Scuba Shop
_sb = ["fishingpole","tcg_wrun","tcg_wave_red","tcg_wave_black","tcg_wave_red2","tcg_wave_sky","tcg_wave_red3"];

//Boat Shop
_bs = ["fishingpole","tcg_wrun","tcg_wave_red","tcg_wave_black","tcg_wave_red2","tcg_wave_sky","tcg_wave_red3","cl_trawler_fishing_boat","cl_sport_fishing_boat","Fishing_boat","cl_container_boat","cl_inflatable","PBX","Zodiac","Smallboat_1","Smallboat_2","lcu","big_boat"];
_bsp = ["fishingpole","GNT_C185F","GNT_C185E","PBX","Zodiac","tcg_wrun","tcg_wave_red","tcg_wave_black","tcg_wave_red2","tcg_wave_sky","tcg_wave_red3"];

//cop boat shop
_cb = [
"fishingpole",
"JFH_USCG_ZODIAC",
"JFH_USCG_RHIB",
"cl_inflatable",
"tcg_wrun"];

//Terror Boat Shop
_bt = [
"fishingpole",
"PBX", 
"Zodiac",
"cl_trawler_fishing_boat",
"cl_container_boat",
"cl_sport_fishing_boat",
"Fishing_boat",
"cl_inflatable",
"RHIB",
"lcu",
"JMSDF_US2",
"JMSDF_US1"
];

//Jewelry shop
_js = ["Diamond"];

//insurance
_ins = ["bankversicherung"];

//Doctor
_td = [
"firetruck",
"rescue",
"Laddertruck",
"suburban_fd",
"il_silverado_pd",
"tcg_suburban_FD",
"il_ambulance",
"il_f350_brush",
"gmc_ambulance",
"ibr_as350",
"roadcone",
"roadbarrierlong",
"roadbarriersmall",
"supgrade1",
"supgrade2",
"bjerk"
];


//Resource Shop
_rs = [
"gold",
"iron",
"copper",
"diamond rock"
];


//WildBill 
_gds = [
"bread",
"straw",
"doshd"
];


_gds1 = [
"supgrade1",
"supgrade2",
"reparaturkit"
];


_gds3 = [
"roadblock",
"glt_roadsign_octagon",
"bargate",
"SearchLight_UN_EP1",
"roadcone",
"bunkersmall",
"FlagCarrierUSA",
"FlagCarrierRU",
"FlagCarrierTakistanKingdom_EP1",
"FlagCarrierCzechRepublic_EP1",
"FlagCarrierGermany_EP1",
"FlagCarrierBAF"
];

//Oil Trader/Seller
_os = [
"OilBarrel",
"Oil"];

//Whale Sale
_ws = ["Whale"];
//Cocaine Sell
_dsc = ["cocaine","cocaineseed"];
//Marijuana Sell
_dsm = ["marijuana","marijuanaseed"];
//LSD Sell
_dsl = ["lsd"];

//Heroin Sell
_dsh = ["heroin","heroinseed"];
_psc = ["medikit","pharm","GymMem1","GymMem2","cl_wheelchair"];
_msc = ["meth","GymMem3","GymMem4"];

//Cop Air Shop
//Littlebird Unarmed, Huey
_ca = [
"MH6J_EP1",
"HH65C",
"OH58g",
"UH1H_TK_GUE_EP1"
];

//Cop Vehicle Shop
_cv = ["MMT_USMC",
"M1030_US_DES_EP1",
"cl_quadcarbonlight",
"ilpd_beat_f101",
"ilpd_slick_b40_npb",
"ilpd_slick_b40_PBG",
"ilpd_slick_b40_pb",
"il_charger_pd",
"ilpd_charger_white",
"tcg_taurus_pb_2",
"tcg_taurus",
"tcg_taurus_wopb",
"suburban_pd",
"tahoe_pd",
"vil_lublin_AMBU",
"jailbus"];


//sheriff shop car
_cv1 =["MMT_USMC",
"cl_quadcarbonlight",
"M1030_US_DES_EP1",
"tcg_hrlycop",
"ilpd_beat_f101_sh",
"pd_cvpi","pd_cvpi_hub",
"ilpd_slick_f220_npb",
"ilpd_slick_f220_PBG",
"tcg_taurus_shpb",
"tcg_taurus_sh",
"suburban_pd_sheriff",
"tahoe_sh",
"il_f350sheriff"];

_copshop = 
[
"DDOPP_X3",
"DDOPP_3Rnd_X3",
"DDOPP_X26",
"DDOPP_1Rnd_X26",
"M1014",
"tcg_mossberg",
"tcg_remington",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_Pellets",
"Itembag",
"Donut",
"medikit", 
"handy", 
"Binocular",
"Itembag",
"lockpick",
"spikestrip",
"supgrade1",
"supgrade2",
"reparaturkit",
"NVGoggles",
"copremotewire"
];

_sheriffshop = [
"DDOPP_X3",
"DDOPP_3Rnd_X3",
"DDOPP_X26",
"DDOPP_1Rnd_X26",
"M1014",
"tcg_mossberg",
"tcg_remington",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_Pellets",
"Itembag",
"Donut",
"medikit", 
"handy", 
"Binocular",
"Itembag",
"lockpick",
"spikestrip",
"supgrade1",
"supgrade2",
"reparaturkit",
"NVGoggles",
"RH_m14",
"20Rnd_762x51_DMR",
"M16A2",
"20Rnd_556x45_Stanag",
"copremotewire"
];

_copshop2 = 

[
"RAB_L111A1",
"SmokeShell",
"tcg_combat",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_Pellets",
"Itembag",
"Donut",
"medikit",
"spikestrip",
"lockpick",
"Fuelline",
"reparaturkit",
"Itembag",
"NVGoggles",
"RH_python",
"RH_6Rnd_357_Mag",
"RH_ak47",
"30Rnd_762x39_AK47"
];

_copshop_patrol = 

[
"RAB_L111A1",
"SmokeShell",
"RH_g17",
"RH_g18",
"RH_33Rnd_9x19_g18",
"RH_g19",
"RH_19Rnd_9x19_g18",
"RH_p226",
"RH_m9",
"Rnd_9x19_M9",
"RH_usp",
"RH_15Rnd_9x19_usp",
"RH_m1911",
"RH_m1911old",
"RH_8Rnd_45cal_m1911",
"M32_EP1",
"6Rnd_Smoke_M203",
"roadblock",
"glt_roadsign_octagon",
"bargate",
"SearchLight_UN_EP1",
"roadcone",
"bunkersmall",
"il_barrier"
];

_copshop_sobr = 

[
"DDOPP_X3_b",
"DDOPP_3Rnd_X3",
"DDOPP_X26_b",
"DDOPP_1Rnd_X26",
"RAB_L111A1",
"SmokeShell",
"SWAT",
"batter",
"Land_ladder_half",
"MP5A5",
"RH_mp5a4eot",
"30rnd_9x19_MP5",
"RH_ump",
"RH_45ACP_25RND_Mag",
"M14_EP1",
"KPFS_G3A3",
"20Rnd_762x51_DMR",
"BAF_LRR_scoped_W",
"5Rnd_86x70_L115A1",
"M24",
"5Rnd_762x51_M24",
"RH_M4sdeotech",
"RH_M4glaim",
"RH_M4gleotech",
"RH_acrb",
"RH_hk416aim",
"RH_mk12mod1",
"30Rnd_556x45_Stanag",
"1Rnd_Smoke_M203",
"Stinger",
"Stinger_mag",
"defuser"
];

_swatcarshop =

[
"ilpd_scu_black",
"ilpd_scu_grey",
"ilpd_scu_maroon",
"ilpd_charger_black",
"suburban_pd_black",
"tcg_suburban_uc_black",
"tcg_suburban_uc_white",
"tcg_suburban_uc_grey",
"tahoe_uc_black",
"tahoe_uc_white",
"ilf350swat",
"il_bearcat",
"HMMWV_M1151_M2_DES_EP1"
];

_trafficshop =

[

"RH_m14",
"20Rnd_762x51_DMR",
"M16A2",
"20Rnd_556x45_Stanag"
];

_trafficcars =

[
"ilpd_traffic_t101",
"ilpd_Traffic_black",
"ilpd_Traffic_white",
"tcg_suburban_patrol",
"suburban_pd_stealth"
];

_vicecars =

[
"MMT_USMC",
"cl_quadcarbonlight",
"Volha_1_TK_CIV_EP1",
"Volha_2_TK_CIV_EP1",
"Car_hatchback",
"LandRover_TK_CIV_EP1",
"civic",
"il_fordcv_taxi",
"tcg_taurus_taxi",
"tcg_taurus_uc",
"tahoe_uc_1_black",
"tahoe_uc_1_grey",
"tahoe_uc_1_blue",
"tahoe_uc_1_green",
"tahoe_uc_1_white",
"tahoe_uc_1_maroon",
"ilpd_unmarked_black",
"ilpd_unmarked_sandstone",
"ilpd_unmarked_maroon",
"ilpd_unmarked_darkblue",
"ilpd_unmarked_grey",
"m5_pd_traffic"
];

_k9cars =

[
"suburban_pd_k9",
"m5_pd_traffic"
];

_terrorshop = 

[ 
"NVGoggles",
"RH_oc14",
"RH_kriss",
"RH_krissaim",
"RH_ar10",
"RH_ar10s",
"RH_rk95",
"RH_aks47",
"RH_aks47b",
"AK_47_S",
"AA12_PMC",
"RH_akm",
"M14_EP1",
"RH_ctar21",
"RH_hk416sd",
"RH_hk417",
"RH_M16a1",
"RH_m21",
"PG7VL",
"RPG7V",
"RH_20Rnd_762x51_hk417",
"20Rnd_762x51_DMR",
"RH_45ACP_30RND_Mag",
"RH_20Rnd_762x51_AR10",
"30Rnd_762x39_AK47",
"RH_30Rnd_762x39_SDmag",
"RH_20Rnd_9x39_SP6_mag",
"20Rnd_B_AA12_Pellets",
"30Rnd_762x39_AK47",
"30Rnd_556x45_Stanag",
"100Rnd_556x45_BetaCMag",
"BAF_ied_v2",
"BAF_ied_v3",
"BAF_ied_v4",
"fernzuenderbombe"
//"zeitzuenderbombe",
//"aktivierungsbombe",
//"geschwindigkeitsbombe",
//"selbstmordbombe"
//"fernzuender"
];



_shady =

[
"lockpick",
"ziptie",
"burgl",
"codeb"
];

_gangshop_buy = 

[
"lockpick",
"ziptie",
"burgl",
"Fuelline", 
"medikit",
"Binocular", 
"NVGoggles",
"gangRH_ppk",
"RH_7Rnd_32cal_ppk",
"gangRH_mk2",
"RH_10Rnd_22LR_mk2",
"gangRH_browninghp",
"RH_13Rnd_9x19_bhp",
"gangRH_vz61",
"RH_20Rnd_32cal_vz61",
"gangRH_tec9",
"RH_30Rnd_9x19_tec",
"gangtcg_combat",
"8Rnd_B_Beneli_Pellets",
"KPFS_PM63",
"KPFS_25Rnd_pm"
];


_Donate1 = [
"donateNVGoggles",
"donateboar",
"donatereparaturkit",
"donateRH_browninghp",
"donateRH_13Rnd_9x19_bhp",
"ASTON_MARTIN_DBR9"
];


_Donate2 = [
"donateRH_mk2",
"donateRH_10Rnd_22LR_mk2",
"donateC1987_P99_black",
"donate15Rnd_9x19_p99",
"donateSaiga12K",
"donate8Rnd_B_Saiga12_Pellets",
"donateRH_krisssdaim",
"donateRH_45ACP_30RND_Mag",
"donateKPFS_KarS",
"donateKPFS_10Rnd_762x39_SKS",
"donateRH_M16a3c",
"donateRH_hk417aim",
"donateRH_hk417sdeotech",
"donateRH_20Rnd_762x51_hk417",
"donateRH_20Rnd_762x51_SD_hk417",
"donateRH_masb",
"donate30Rnd_556x45_Stanag",
"tcg_suburban_black",
"CORVETTE_C6R",
"DODGE_VIPER_SRT10"
];

_Donate3 = [

"donate100Rnd_556x45_BetaCMag",
"SUV_TK_CIV_EP1",
"tcg_bell206_1",
"MV22",
"donate_RH_7Rnd_50_AE",
"donate_RH_deagles"

];

_humcarshop = [
"h1_black",
"h1_grey",
"h1_blue",
"h1_yellow",
"h1_pink",
"h1_white",
"h1_green",
"h1_red",
"h1_orange",
"h1c_black",
"h1c_red",
"h1c_white",
"h1c_grey"
];

_jeepcarshop = [
"Cherokee_black",
"Cherokee_grey",
"Cherokee_blue",
"Cherokee_yellow",
"Cherokee_pink",
"Cherokee_white",
"Cherokee_green",
"Cherokee_red",
"Cherokee_orange"
];

_rovercarshop = [
"rangerover_black",
"rangerover_blue",
"rangerover_yellow",
"rangerover_pink",
"rangerover_white", 
"rangerover_green",
"rangerover_red",
"rangerover_orange",
"rangeroverc_black",
"rangeroverc_white",
"rangeroverc_grey",
"rangeroverc_red"
];

_starshop = [
"MMT_USMC"
];

_SportsPickup = [ 
"s331_black",
"s331_grey",
"s331_blue",
"s331_yellow",
"s331_pink",
"s331_white",
"s331_green",
"s331_red",
"s331_orange",
"s331c_black",
"s331c_white",
"s331c_red",
"s331c_grey",
"raptor_black",
"raptor_grey",
"raptor_blue",
"raptor_yellow",
"raptor_pink",
"raptor_white",
"raptor_green",
"raptor_red",
"raptor_orange"
];


_bodyarrayshop = [
"eyes",
"brain",
"liver",
"heart",
"kidney",
"bones",
"teeth"
];

INV_ItemShops = [

[fuelshop1,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],//1
[fuelshop2,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],//2
[fuelshop3,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],//3
[fuelshop4,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],//4
[fuelshop5,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],//5
[fuelshop6,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],//6
[fuelshop7,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],//7
[fuelshop8,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],//8
[fuelshop9,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],//9
[vending2,"Outdoor Shop",vending2,dummyobj,_fs2,_fs2,true],//10
[shop1,"Food Shop",dummyobj,dummyobj,_is,_is,true],//11
[shop2,"Food Shop",dummyobj,dummyobj,_is,_is,true],//12
[shop4,"Food Shop",dummyobj,dummyobj,_is,_is,true],//13
[bailflag,"Food and Gun Locker",dummyobj,dummyobj,_cf,_cf,true],//14
[pub1,"Pub",dummyobj,dummyobj,_pub,_pub,true],//15
[pub2,"Pub",dummyobj,dummyobj,_pub,_pub,true],//16
[pub3,"Pub",dummyobj,dummyobj,_pub,_pub,true],//17
[pub4,"Pub",dummyobj,dummyobj,_pub,_pub,true],//18
[gundealer1,"Firearms Dealer",gunbox2,dummyobj,_gss,_gss,true],//19
[assassinshop,"Assassin Shop",assassinshop,dummyobj,_ass,_ass,true],//20
[mayorguns,"Government Equip Shop",mayorguns,mayorcarspawn,_mgs,_mgs,true],//21
[equipbox,"Equipment Shop",equipbox,dummyobj,_es,_es,true],//22
[gocartshop,"Ohio Go-Carts Shop",dummyobj,gocartspawn,_gc,_gc,true],//23
[tuning1,"Car Upgrades",dummyobj,dummyobj,_cu,_cu,true],//24
[carshop1,"Used Cars",dummyobj,carspawn1,_cs1,_cs1,true],//25
[carshop2,"Farm Equipment",dummyobj,carspawn2,_cs2,_cs2,false],//26
[scarshop,"Muscle Car Shop",dummyobj,scarspawn1,_sc1,_sc1,true],//27
[scarshop2,"Charger and Mazda",dummyobj,scarspawn2,_sc2,_sc2,true],//28
[scarshop3,"Low End Sports",dummyobj,scarspawn3,_sc3,_sc3,true],//29
[scarshop4,"Mid Level Sports",dummyobj,scarspawn4,_sc4,_sc4,true],//30
[scarshop5,"High End Sports",dummyobj,scarspawn5,_sc5,_sc5,true],//31
[scarshop6,"Nissan Car Shop",dummyobj,scarspawn6,_sc6,_sc6,true],//32
[scarshop7,"350z Car Shop",dummyobj,scarspawn7,_sc7,_sc7,true],//33
[scarshop8,"Ford Car Shop",dummyobj,scarspawn8,_sc8,_sc8,true],//34
[scarshop9,"BMW Car Shop",dummyobj,scarspawn9,_sc9,_sc9,true],//35
[tahoeshop1,"Tahoe Shop",dummyobj,tahoespawn1,_tahoe,_tahoe,true],//36
[pickupshop1,"Pickup Shop",dummyobj,pickupspawn1,_ps,_ps,true],//37
[taxishop,"Taxi Shop",dummyobj,taxispawn1,_tx,_tx,true],//38
[bikeshop,"Mikes Bike Shop",dummyobj,bikespawn,_mbs,_mbs,true],//39 
[bikeshop1,"Quad Bike Shop",dummyobj,bikespawn1,_qbs,_qbs,true],//40
[bikeshop2,"Sports Bike Shop",dummyobj,bikespawn1,_qbss,_qbss,true],//41
[truckshop,"Truck Shop",dummyobj,truckspawn,_ts,_ts,true],//42
[busshop,"Tour Bus Shop",dummyobj,busspawn,_bss,_bss,true],//43
[airshop,"Airplane Shop",dummyobj,asairspawn,_as,_as,true],//44
[airshop2,"Chopper and Jet Shop",dummyobj,asairspawn,_assa,_assa,true],//45
[airshop3,"Commercial Air Shop",dummyobj,asairspawn,_asc,_asc,true],//46
[airshop4,"Chopper and Jet Shop",dummyobj,asairspawn2,_assa,_assa,true],//47
[scubashop, "Jetski Shop",dummyobj,boatspawn5,_sb,_sb,true],//48	
[boatshop1, "Boat Shop",dummyobj,boatspawn1,_bs,_bs,true],//49
[boatshop2, "Boat Shop",dummyobj,boatspawn2,_bs,_bs,true],//50
[boatshop3, "Boat Shop",dummyobj,boatspawn3,_bs,_bs,false],//51
[boatshop4, "Sea Plane Shop",dummyobj,boatspawn4,_bsp,_bsp,false],//52
[copboatshop, "Coast Guard Boat Shop",dummyobj,copboatspawn,_cb,_cb,true],//53
[tboatshop1,"Boat Shop",dummyobj,tboatspawn1,_bt,_bt,true],//54
[Diamond_1,"Pretty Jewelry Shop",dummyobj,dummyobj,_js,_js,true],//55
[Insure,"Insurance",insure,dummyobj,_ins, _emptyshop,false],//56
[tdoc,"Fire Rescue Equipment",dummyobj,tdocspawn,_td,_td,true],//57
[tdoc_1,"Rescue Equipment",dummyobj,tdocspawn_1,_td,_td,true],//58
[resourcesell,"Sell Resources",dummyobj,dummyobj,_rs,_rs,true],//59
[cheeseburger,"BBQ",dummyobj,dummyobj,_gds,_gds,true],//60
[workplace_getjobflag_4,"Imporium",dummyobj,dummyobj,_gds1,_gds1,true],//61
[workplace_getjobflag_6,"Wigworths",dummyobj,dummyobj,_gds3,_gds3,true],//62
[OilSell1,"Oil Dealer", dummyobj,dummyobj,_emptyshop,_os,true],//63
[whalesell,"Sell Whale",dummyobj,dummyobj,_emptyshop,_ws,true],	//64
[terrorbox,"Black Market Vendor",terrorcargo,dummyobj, _terrorshop,_terrorshop,true],//65
[shadyd,"Barely Legal",shadyd,dummyobj, _shady,_shady,true],//66
[gangarea1,"Gang Shop",gangbox1,dummyobj,_gangshop_buy,_gangshop_buy,true],//67
[gangarea2,"Gang Shop",gangbox2,dummyobj,_gangshop_buy,_gangshop_buy,true],//68
[gangarea3,"Gang Shop",gangbox3,dummyobj,_gangshop_buy,_gangshop_buy,true],//69				
[gangarea4,"Gang Shop",gangbox4,dummyobj,_gangshop_buy,_gangshop_buy,true],//70				
[cdrugsell,"Sell Cocaine",dummyobj,dummyobj,_dsc,_dsc,true],//71
[mdrugsell,"Sell marijuana",dummyobj,dummyobj,_dsm,_dsm,true],//72
[ldrugsell,"Sell LSD",dummyobj,dummyobj,_emptyshop,_dsl,true],//73
[hdrugsell,"Sell Heroin",dummyobj,dummyobj,_dsh,_dsh,true],//74
[methsell,"Sell Meth",dummyobj,dummyobj,_msc,_msc,true],//75
[pharmacy,"Pharmacy",dummyobj,pharmspawn,_psc,_emptyshop,false],//76
[pharmacy2,"Hospital",dummyobj,pharmspawn2,_psc,_emptyshop,false],//77
[copair,"Police Aircraft",dummyobj, cairspawn,_ca,_ca,true],//78
[copcar,"Police vehicles",dummyobj, ccarspawn,_cv,_cv,true],//79
[copcar1,"Sheriff Vehicles",copsheriff, ccarspawn1,_cv1,_cv1,true],//80
[copbasic,"Basic Police Gear",copbasic,dummyobj, _copshop,_copshop,false],//81
[coppatrol,"Patrol Officer Gear",coppatrol,dummyobj,_copshop_patrol,_copshop_patrol,true],//82
[copsheriff,"Sheriffs Department Gear",copsheriff,dummyobj, _sheriffshop,_sheriffshop,false],//83
[copswat,"SWAT Equipment",copswat,dummyobj,_copshop_sobr,_copshop_sobr,true],//84
[copbasic2,"Vice Unit Equipment",copbasic2,dummyobj, _copshop2,_copshop2,false],//85
[copswatcars,"SWAT Vehicles",dummyobj,ccarspawnswat,_swatcarshop,_swatcarshop,true],//86
[coptraffic,"Trained Patrol officer gear",coptraffic,dummyobj,_trafficshop,_trafficshop,true],//87
[coptrafficcars,"Traffic Division Vehicles",dummyobj,ctrafficspawn,_trafficcars,_trafficcars,true],//88
[copvicecars,"Vice Unit Vehicles",dummyobj,ccarspawn2,_vicecars,_vicecars,true],//89
[copk9cars,"K9 Unit Vehicles",dummyobj,ck9spawn,_k9cars,_k9cars,true],//90
[donatebuy1,"Donators Shop 1",donatebuy1,maindonatespawn1,_Donate1,_Donate1,true],//91
[donatebuy2,"Donators Shop 2",donatebuy2,maindonatespawn2,_Donate2,_Donate2,true],//92
[donatebuy3,"Donators Shop 3",donatebuy3,maindonatespawn3,_Donate3,_Donate3,true],//93
[humcarshop,"Hummer Vehicles",dummyobj,humcarspawn,_humcarshop,_humcarshop,true],//94
[jeepcarshop,"Jeep Vehicles",dummyobj,jeepcarspawn,_jeepcarshop,_jeepcarshop,true],//95
[rovercarshop,"Range Rover Vehicles",dummyobj,rovercarspawn,_rovercarshop,_rovercarshop,true],//96
[starshop,"Bike Shop",dummyobj,starshopspawn,_starshop,_starshop,true],//97
[SportsPickup,"Sports Pickup Shop",dummyobj,sportpickupspawn,_SportsPickup,_SportsPickup,true],//98
[organmarket,"Sell Body Parts",dummyobj,dummyobj,_emptyshop,_bodyarrayshop,true]//99
];
