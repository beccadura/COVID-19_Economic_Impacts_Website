-- MariaDB dump 10.17  Distrib 10.5.6-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: covid_economic_impacts
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `country_population`
--

LOCK TABLES `country_population` WRITE;
/*!40000 ALTER TABLE `country_population` DISABLE KEYS */;
INSERT INTO `country_population` VALUES ('Aruba','ABW',101665,104339,104822,106310,106766),('Afghanistan','AFG',29185512,34413604,34656032,38041756,38928340),('Angola','AGO',23356248,27884380,28813463,31825300,32866268),('Albania','ALB',2948029,2890524,2876101,2880913,2877800),('Andorra','AND',84454,77993,77281,77146,77265),('Arab World','ARB',NULL,NULL,406452690,NULL,NULL),('United Arab Emirates','ARE',8549998,9262896,9269612,9770526,9890400),('Argentina','ARG',40895752,43075416,43847430,44780676,45195776),('Armenia','ARM',2877314,2925559,2924816,2957728,2963234),('American Samoa','ASM',56084,55806,55599,55312,55197),('Antigua and Barbuda','ATG',88030,93571,100963,97115,97928),('Australia','AUS',22154688,23932500,24127159,25203200,25499880),('Austria','AUT',8409945,8678667,8747358,8955108,9006400),('Azerbaijan','AZE',9032465,9622741,9762274,10047719,10139175),('Burundi','BDI',8675606,10160034,10524117,11530577,11890781),('Belgium','BEL',10938735,11287931,11348159,11539326,11589616),('Benin','BEN',9199254,10575962,10872298,11801151,12123198),('Burkina Faso','BFA',15605211,18110616,18646433,20321384,20903278),('Bangladesh','BGD',147575440,156256288,162951560,163046176,164689376),('Bulgaria','BGR',7425011,7199739,7127822,7000117,6948445),('Bahrain','BHR',1240864,1371853,1425171,1641164,1701583),('Bahamas, The','BHS',354936,374200,391232,389486,393248),('Bosnia and Herzegovina','BIH',3705478,3429362,3516816,3300998,3280815),('Belarus','BLR',9420576,9439424,9507120,9452409,9449321),('Belize','BLZ',322465,360926,366954,390351,397621),('Bermuda','BMU',65388,63695,65331,62508,62273),('Bolivia','BOL',10048597,10869732,10887882,11513102,11673029),('Brazil','BRA',195713632,204471760,207652865,211049520,212559408),('Barbados','BRB',282131,285327,284996,287021,287371),('Brunei Darussalam','BRN',388634,414914,423196,433296,437483),('Bhutan','BTN',685502,727885,797765,763094,771612),('Botswana','BWA',1987106,2120716,2250260,2303703,2351625),('Central African Republic','CAF',4386765,4493171,4594621,4745179,4829764),('Canada','CAN',34147568,36026668,36286425,37411040,37742156),('Central Europe and the Ba','CEB',NULL,NULL,102974082,NULL,NULL),('Switzerland','CHE',7808674,8296775,8372098,8591361,8654618),('Channel Islands','CHI',NULL,NULL,164541,NULL,NULL),('Chile','CHL',17062532,17969356,17909754,18952036,19116208),('China','CHN',1368810624,1406847872,1378665000,1433783680,1439323776),('Cote d\'Ivoire','CIV',20532944,23226148,23695919,25716554,26378276),('Cameroon','CMR',20341236,23298376,23439189,25876388,26545864),('Congo, Dem. Rep.','COD',64563852,76244528,78736153,86790568,89561408),('Congo, Rep.','COG',4273738,4856093,5125821,5380504,5518092),('Colombia','COL',45222700,47520668,48653419,50339444,50882884),('Comoros','COM',689696,777435,795601,850891,869595),('Cabo Verde','CPV',492644,524740,539560,549936,555988),('Costa Rica','CRI',4577371,4847805,4857274,5047561,5094114),('Caribbean small states','CSS',NULL,NULL,7245472,NULL,NULL),('Cuba','CUB',11225833,11324777,11475982,11333484,11326616),('Curacao','CUW',NULL,NULL,159999,NULL,NULL),('Cayman Islands','CYM',56672,61721,60765,64948,65720),('Cyprus','CYP',1112617,1160987,1170125,1198574,1207361),('Czech Republic','CZE',10536514,10601390,10561633,10689213,10708982),('Germany','DEU',80827000,81787408,82667685,83517048,83783944),('Djibouti','DJI',840194,913998,942333,973557,988002),('Dominica','DMA',70877,71175,73543,71808,71991),('Denmark','DNK',5554849,5688695,5731118,5771877,5792203),('Dominican Republic','DOM',9695117,10281675,10648791,10738957,10847904),('Algeria','DZA',35977452,39728020,40606052,43053056,43851044),('East Asia & Pacific (excl','EAP',NULL,NULL,2051452657,NULL,NULL),('Early-demographic dividen','EAR',NULL,NULL,3170542188,NULL,NULL),('East Asia & Pacific','EAS',NULL,NULL,2296786207,NULL,NULL),('Europe & Central Asia (ex','ECA',NULL,NULL,417424643,NULL,NULL),('Europe & Central Asia','ECS',NULL,NULL,911995305,NULL,NULL),('Ecuador','ECU',15011114,16212022,16385068,17373656,17643060),('Egypt, Arab Rep.','EGY',82761248,92442552,95688681,100388080,102334400),('Euro area','EMU',NULL,NULL,340894606,NULL,NULL),('Eritrea','ERI',3170437,3342818,0,3497117,3546427),('Spain','ESP',46931012,46671920,46443959,46736784,46754784),('Estonia','EST',1332103,1315330,1316481,1325649,1326539),('Ethiopia','ETH',87639960,100835456,102403196,112078728,114963584),('European Union','EUU',NULL,NULL,511497415,NULL,NULL),('Fragile and conflict affe','FCS',NULL,NULL,496575241,NULL,NULL),('Finland','FIN',5365784,5481128,5495096,5532159,5540718),('Fiji','FJI',859816,868632,898760,889955,896444),('France','FRA',62879536,64453192,66896109,65129732,65273512),('Faroe Islands','FRO',47803,48055,49117,48677,48865),('Micronesia, Fed. Sts.','FSM',NULL,NULL,104937,NULL,NULL),('Gabon','GAB',1624146,1947690,1979786,2172578,2225728),('United Kingdom','GBR',63459800,65860148,65637239,67530160,67886000),('Georgia','GEO',4099096,4024180,3719300,3996762,3989175),('Ghana','GHA',24779614,27849204,28206728,30417858,31072944),('Gibraltar','GIB',33585,33742,34408,33706,33691),('Guinea','GIN',10192168,11432096,12395924,12771246,13132792),('Gambia, The','GMB',1793199,2085860,2038501,2347696,2416664),('Guinea-Bissau','GNB',1522603,1737207,1815698,1920917,1967998),('Equatorial Guinea','GNQ',943640,1168575,1221490,1355982,1402985),('Greece','GRC',10887640,10659737,10746740,10473452,10423056),('Grenada','GRD',106227,109603,107317,112002,112519),('Greenland','GRL',56638,56378,56186,56660,56772),('Guatemala','GTM',14630420,16252425,16582469,17581476,17915568),('Guam','GUM',159439,161851,162896,167295,168783),('Guyana','GUY',749430,767433,773303,782775,786559),('High income','HIC',NULL,NULL,1190029421,NULL,NULL),('Hong Kong SAR, China','HKG',6966324,7185992,7346700,7436157,7496988),('Honduras','HND',8317467,9112904,9112867,9746115,9904608),('Heavily indebted poor cou','HPC',NULL,NULL,744602976,NULL,NULL),('Croatia','HRV',4328163,4232874,4170600,4130299,4105268),('Haiti','HTI',9949318,10695540,10847334,11263079,11402533),('Hungary','HUN',9927380,9777925,9817958,9684680,9660350),('IBRD only','IBD',NULL,NULL,4697247117,NULL,NULL),('IDA & IBRD total','IBT',NULL,NULL,6271593092,NULL,NULL),('IDA total','IDA',NULL,NULL,1574345975,NULL,NULL),('IDA blend','IDB',NULL,NULL,521159393,NULL,NULL),('Indonesia','IDN',241834224,258383264,261115456,270625568,273523616),('IDA only','IDX',NULL,NULL,1053186582,NULL,NULL),('Isle of Man','IMN',NULL,NULL,83737,NULL,NULL),('India','IND',1234281216,1310152448,1324171354,1366417792,1380004352),('Ireland','IRL',4554330,4652420,4773095,4882498,4937796),('Iran, Islamic Rep.','IRN',73762520,78492208,80277428,82913896,83992952),('Iraq','IRQ',29741976,35572268,37202572,39309788,40222504),('Iceland','ISL',320342,330237,334252,339037,341250),('Israel','ISR',7346446,7978496,8547100,8519373,8655541),('Italy','ITA',59325232,60578488,60600590,60550092,60461828),('Jamaica','JAM',2810464,2891024,2881355,2948277,2961161),('Jordan','JOR',7261541,9266573,9455802,10101697,10203140),('Japan','JPN',128542352,127985136,126994511,126860296,126476456),('Kazakhstan','KAZ',16252273,17572010,17797032,18551428,18776708),('Kenya','KEN',42030684,47878340,48461567,52573968,53771300),('Kyrgyz Republic','KGZ',5422298,5959126,6082700,6415851,6524191),('Cambodia','KHM',14312205,15521435,15762370,16486542,16718971),('Kiribati','KIR',102930,110927,114395,117608,119446),('St. Kitts and Nevis','KNA',NULL,NULL,54821,NULL,NULL),('Korea, Rep.','KOR',24548840,25183832,51245707,25666158,25778816),('Kuwait','KWT',2991884,3835588,4052584,4207077,4270563),('Latin America & Caribbean','LAC',NULL,NULL,610136397,NULL,NULL),('Lao PDR','LAO',6249168,6741160,6758353,7169456,7275556),('Lebanon','LBN',4953064,6532681,6006668,6855709,6825442),('Liberia','LBR',3891357,4472229,4613823,4937374,5057677),('Libya','LBY',6197667,6418315,6293253,6777453,6871287),('St. Lucia','LCA',NULL,NULL,178015,NULL,NULL),('Latin America & Caribbean','LCN',NULL,NULL,637664490,NULL,NULL),('Least developed countries','LDC',NULL,NULL,980609415,NULL,NULL),('Low income','LIC',NULL,NULL,659272676,NULL,NULL),('Liechtenstein','LIE',35996,37465,37666,38020,38137),('Sri Lanka','LKA',20261738,20908024,21203000,21323734,21413250),('Lower middle income','LMC',NULL,NULL,3012923806,NULL,NULL),('Low & middle income','LMY',NULL,NULL,6247922508,NULL,NULL),('Lesotho','LSO',1995575,2059011,2203821,2125267,2142252),('Late-demographic dividend','LTE',NULL,NULL,2262709895,NULL,NULL),('Lithuania','LTU',3123825,2931872,2872298,2759631,2722291),('Luxembourg','LUX',507890,566741,582972,615730,625976),('Latvia','LVA',2118855,1997675,1960424,1906740,1886202),('Macao SAR, China','MAC',538215,602093,612167,640446,649342),('St. Martin (French part)','MAF',NULL,NULL,31949,NULL,NULL),('Morocco','MAR',32343384,34663608,35276786,36471768,36910560),('Monaco','MCO',35609,37723,38499,38967,39244),('Moldova','MDA',4086090,4070705,3552000,4043258,4033963),('Madagascar','MDG',21151640,24234080,24894551,26969306,27691020),('Maldives','MDV',365730,454914,417492,530957,540542),('Middle East & North Afric','MEA',NULL,NULL,436720722,NULL,NULL),('Mexico','MEX',114092960,121858248,127540423,127575528,128932752),('Marshall Islands','MHL',56361,57444,53066,58791,59194),('Middle income','MIC',NULL,NULL,5592833481,NULL,NULL),('Macedonia, FYR','MKD',2070737,2079335,2081206,2083458,2083380),('Mali','MLI',15049352,17438772,17994837,19658024,20250834),('Malta','MLT',414257,433559,436947,440377,441539),('Myanmar','MMR',50600828,52680724,52885223,54045424,54409792),('Middle East & North Afric','MNA',NULL,NULL,373719055,NULL,NULL),('Montenegro','MNE',624279,626957,622781,627988,628062),('Mongolia','MNG',2719902,2998433,3027398,3225166,3278292),('Northern Mariana Islands','MNP',53971,55779,55023,57213,57557),('Mozambique','MOZ',23531568,27042000,28829476,30366044,31255436),('Mauritania','MRT',3494200,4046304,4301018,4525698,4649660),('Mauritius','MUS',1247953,1259457,1263473,1269670,1271767),('Malawi','MWI',14539609,16745305,18091575,18628748,19129956),('Malaysia','MYS',28208028,30270964,31187265,31949788,32365998),('North America','NAC',NULL,NULL,359479269,NULL,NULL),('Namibia','NAM',2118877,2314901,2479713,2494524,2540916),('New Caledonia','NCL',253529,271062,278000,282757,285491),('Niger','NER',16464025,20001664,20672987,23310720,24206636),('Nigeria','NGA',158503200,181137456,185989640,200963600,206139584),('Nicaragua','NIC',5824058,6223234,6149928,6545503,6624554),('Netherlands','NLD',16682927,16938492,17018408,17097124,17134872),('Norway','NOR',4885878,5199827,5232929,5378859,5421242),('Nepal','NPL',27013208,27015032,28982771,28608716,29136808),('Nauru','NRU',10009,10374,13049,10764,10834),('New Zealand','NZL',4370060,4614527,4692700,4783062,4822233),('OECD members','OED',NULL,NULL,1289937319,NULL,NULL),('Oman','OMN',3041435,4267341,4424762,4974992,5106622),('Other small states','OSS',NULL,NULL,29983809,NULL,NULL),('Pakistan','PAK',179424640,199426960,193203476,216565312,220892336),('Panama','PAN',3642691,3968490,4034119,4246440,4314768),('Peru','PER',29027680,30470740,31773839,32510462,32971846),('Philippines','PHL',93966784,102113208,103320222,108116624,109581088),('Palau','PLW',17954,17665,21503,18001,18092),('Papua New Guinea','PNG',7310512,8107772,8084991,8776119,8947027),('Poland','POL',38329784,38034076,37948016,37887772,37846604),('Pre-demographic dividend','PRE',NULL,NULL,879292453,NULL,NULL),('Puerto Rico','PRI',3579842,3381512,3411307,2933404,2860840),('Korea, Dem. People’s Rep.','PRK',24548840,25183832,25368620,NULL,25778816),('Portugal','PRT',10596055,10368346,10324611,10226178,10196707),('Paraguay','PRY',6248017,6688746,6725308,7044639,7132530),('West Bank and Gaza','PSE',NULL,NULL,4551566,NULL,NULL),('Pacific island small stat','PSS',NULL,NULL,2388875,NULL,NULL),('Post-demographic dividend','PST',NULL,NULL,1102730983,NULL,NULL),('French Polynesia','PYF',266449,273119,280208,279285,280904),('Qatar','QAT',1856329,2565708,2569804,2832071,2881060),('Romania','ROU',20471860,19925182,19705301,19364558,19237682),('Russian Federation','RUS',143479280,144985056,144342396,145872256,145934464),('Rwanda','RWA',10039338,11369066,11917508,12626938,12952209),('South Asia','SAS',NULL,NULL,1766383450,NULL,NULL),('Saudi Arabia','SAU',27421468,31717676,32275687,34268528,34813868),('Sudan','SDN',34545016,38902948,39578828,42813236,43849268),('Senegal','SEN',12678143,14578450,15411614,16296362,16743930),('Singapore','SGP',5131170,5592143,5607283,5804343,5850343),('Solomon Islands','SLB',527861,603133,599419,669821,686878),('Sierra Leone','SLE',6415636,7171909,7396190,7813207,7976985),('El Salvador','SLV',6183877,6325121,6344722,6453550,6486201),('San Marino','SMR',31221,33270,33203,33864,33938),('Somalia','SOM',12043886,13797204,14317996,15442906,15893219),('Serbia','SRB',8991258,8876777,7057412,8772228,8737370),('Sub-Saharan Africa (exclu','SSA',NULL,NULL,1033011458,NULL,NULL),('South Sudan','SSD',9508372,10715657,12230730,11062114,11193729),('Sub-Saharan Africa','SSF',NULL,NULL,1033106135,NULL,NULL),('Small states','SST',NULL,NULL,39618156,NULL,NULL),('Sao Tome and Principe','STP',180372,199439,199910,215048,219161),('Suriname','SUR',529126,559136,558368,581363,586634),('Slovak Republic','SVK',5404293,5435614,5428704,5457012,5459643),('Slovenia','SVN',2043336,2071199,2064845,2078654,2078932),('Sweden','SWE',9390157,9764949,9903122,10036391,10099270),('Swaziland','SWZ',1064841,1104038,1343098,1148133,1160164),('Sint Maarten (Dutch part)','SXM',NULL,NULL,40005,NULL,NULL),('Seychelles','SYC',91273,94981,94677,97741,98340),('Syrian Arab Republic','SYR',21362540,17997412,18430453,17070132,17500656),('Turks and Caicos Islands','TCA',32658,35979,34900,38194,38718),('Chad','TCD',11952134,14110971,14452543,15946882,16425859),('East Asia & Pacific (IDA ','TEA',NULL,NULL,2026028438,NULL,NULL),('Europe & Central Asia (ID','TEC',NULL,NULL,455372659,NULL,NULL),('Togo','TGO',6421674,7323162,7606374,8082359,8278737),('Thailand','THA',67195032,68714520,68863514,69625584,69799976),('Tajikistan','TJK',7527397,8454019,8734951,9321023,9537642),('Turkmenistan','TKM',5087211,5565283,5662544,5942094,6031187),('Latin America & the Carib','TLA',NULL,NULL,621534921,NULL,NULL),('Timor-Leste','TLS',1093517,1196294,1268671,1293120,1318442),('Middle East & North Afric','TMN',NULL,NULL,369167489,NULL,NULL),('Tonga','TON',103981,100780,107122,104497,105697),('South Asia (IDA & IBRD)','TSA',NULL,NULL,1766383450,NULL,NULL),('Sub-Saharan Africa (IDA &','TSS',NULL,NULL,1033106135,NULL,NULL),('Trinidad and Tobago','TTO',1328144,1370332,1364962,1394969,1399491),('Tunisia','TUN',10635245,11179951,11403248,11694721,11818618),('Turkey','TUR',72326992,78529416,79512426,83429608,84339064),('Tuvalu','TUV',10521,11099,11097,11655,11792),('Tanzania','TZA',44346532,51482640,55572201,58005460,59734212),('Uganda','UGA',32428164,38225448,41487965,44269588,45741000),('Ukraine','UKR',45792088,44921636,45004645,43993644,43733760),('Upper middle income','UMC',NULL,NULL,2579909675,NULL,NULL),('Uruguay','URY',3359273,3412013,3444006,3461731,3473727),('United States','USA',309011456,320878304,323127513,329064928,331002656),('Uzbekistan','UZB',28515908,30929556,31848200,32981716,33469200),('St. Vincent and the Grena','VCT',NULL,NULL,109643,NULL,NULL),('Venezuela, RB','VEN',28439942,30081828,31568179,28515828,28435944),('British Virgin Islands','VGB',NULL,NULL,30661,NULL,NULL),('Virgin Islands (U.S.)','VIR',106086,104950,102951,104579,104423),('Vietnam','VNM',87967656,92677080,92701100,96462112,97338584),('Vanuatu','VUT',236216,271128,270402,299882,307150),('World','WLD',NULL,NULL,7442135578,NULL,NULL),('Samoa','WSM',185944,193510,195125,197093,198410),('Kosovo','XKX',NULL,NULL,1816200,NULL,NULL),('Yemen, Rep.','YEM',23154854,26497880,27584213,29161922,29825968),('South Africa','ZAF',51216968,55386368,55908865,58558268,59308688),('Zambia','ZMB',13605986,15879370,16591390,17861034,18383956),('Zimbabwe','ZWE',12697728,13814642,16150362,14645473,14862927);
/*!40000 ALTER TABLE `country_population` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-25 23:15:35
