DROP TABLE fastfood;
DROP TABLE tax;

CREATE TABLE fastfood (
    id NUMBER,
    gb VARCHAR2(50) NOT NULL,
    nm VARCHAR2(50),
    addr VARCHAR2(200),
    sido VARCHAR2(50) NOT NULL,
    sigungu VARCHAR2(50) NOT NULL,
    road_addr VARCHAR2(200),
    zipcd VARCHAR2(5),
    
    CONSTRAINT pk_fastfood PRIMARY KEY (id)
);

COMMENT ON TABLE fastfood IS '패스트푸드점';
COMMENT ON COLUMN fastfood.id IS 'ID';
COMMENT ON COLUMN fastfood.gb IS '패스트 푸드점 구분(버거킹, kfc..)';
COMMENT ON COLUMN fastfood.nm IS '지점명';
COMMENT ON COLUMN fastfood.addr IS '주소';
COMMENT ON COLUMN fastfood.sido IS '시도';
COMMENT ON COLUMN fastfood.sigungu IS '시군구';
COMMENT ON COLUMN fastfood.road_addr IS '도로주소';
COMMENT ON COLUMN fastfood.zipcd IS '우편번호';


CREATE TABLE TAX (
    id NUMBER,
    sido VARCHAR2(50) NOT NULL,
    sigungu VARCHAR2(50) NOT NULL,
    people NUMBER NOT NULL,
    sal NUMBER NOT NULL,
    CONSTRAINT pk_tax PRIMARY KEY (id)
);
COMMENT ON TABLE tax IS '시도별 급여';
COMMENT ON COLUMN tax.id IS 'ID';    
COMMENT ON COLUMN tax.sido IS '시도';    
COMMENT ON COLUMN tax.sigungu IS '시군구';    
COMMENT ON COLUMN tax.people IS '인구수';    
COMMENT ON COLUMN tax.sal IS '급여';    


INSERT INTO TAX VALUES(1, '서울특별시', ' 강남구', 201206, 14142558);
INSERT INTO TAX VALUES(2, '서울특별시', ' 강동구', 160371, 5824940);
INSERT INTO TAX VALUES(3, '서울특별시', ' 강북구', 102117, 2764297);
INSERT INTO TAX VALUES(4, '서울특별시', ' 강서구', 236070, 8221014);
INSERT INTO TAX VALUES(5, '서울특별시', ' 관악구', 205325, 6098873);
INSERT INTO TAX VALUES(6, '서울특별시', ' 광진구', 139502, 4949835);
INSERT INTO TAX VALUES(7, '서울특별시', ' 구로구', 162000, 5264673);
INSERT INTO TAX VALUES(8, '서울특별시', ' 금천구', 91260, 2531695);
INSERT INTO TAX VALUES(9, '서울특별시', ' 노원구', 188364, 6697695);
INSERT INTO TAX VALUES(10, '서울특별시', ' 도봉구', 116510, 3530209);
INSERT INTO TAX VALUES(11, '서울특별시', ' 동대문구', 117744, 3783211);
INSERT INTO TAX VALUES(12, '서울특별시', ' 동작구', 154339, 5915612);
INSERT INTO TAX VALUES(13, '서울특별시', ' 마포구', 148218, 6336265);
INSERT INTO TAX VALUES(14, '서울특별시', ' 서대문구', 112716, 4227723);
INSERT INTO TAX VALUES(15, '서울특별시', ' 서초구', 165674, 11359238);
INSERT INTO TAX VALUES(16, '서울특별시', ' 성동구', 116243, 4929924);
INSERT INTO TAX VALUES(17, '서울특별시', ' 성북구', 144303, 5413273);
INSERT INTO TAX VALUES(18, '서울특별시', ' 송파구', 263839, 12335849);
INSERT INTO TAX VALUES(19, '서울특별시', ' 양천구', 170083, 7279487);
INSERT INTO TAX VALUES(20, '서울특별시', ' 영등포구', 156209, 6241782);
INSERT INTO TAX VALUES(21, '서울특별시', ' 용산구', 86315, 4942793);
INSERT INTO TAX VALUES(22, '서울특별시', ' 은평구', 172919, 5452739);
INSERT INTO TAX VALUES(23, '서울특별시', ' 종로구', 50504, 2353076);
INSERT INTO TAX VALUES(24, '서울특별시', ' 중구', 43810, 1894195);
INSERT INTO TAX VALUES(25, '서울특별시', ' 중랑구', 139776, 3888819);
INSERT INTO TAX VALUES(26, '인천광역시', ' 강화군', 16947, 501111);
INSERT INTO TAX VALUES(27, '인천광역시', ' 계양구', 115930, 3235988);
INSERT INTO TAX VALUES(28, '인천광역시', ' 남구', 145574, 3938522);
INSERT INTO TAX VALUES(29, '인천광역시', ' 남동구', 201133, 6153649);
INSERT INTO TAX VALUES(30, '인천광역시', ' 동구', 22908, 639655);
INSERT INTO TAX VALUES(31, '인천광역시', ' 부평구', 190694, 5686158);
INSERT INTO TAX VALUES(32, '인천광역시', ' 서구', 205137, 6533479);
INSERT INTO TAX VALUES(33, '인천광역시', ' 연수구', 133014, 5540970);
INSERT INTO TAX VALUES(34, '인천광역시', ' 옹진군', 6720, 241102);
INSERT INTO TAX VALUES(35, '인천광역시', ' 중구', 46437, 1482402);
INSERT INTO TAX VALUES(36, '경기도', ' 가평군', 16876, 501141);
INSERT INTO TAX VALUES(37, '경기도', ' 고양시', 374452, 13845144);
INSERT INTO TAX VALUES(38, '경기도', ' 과천시', 21272, 1138903);
INSERT INTO TAX VALUES(39, '경기도', ' 광명시', 122829, 4230916);
INSERT INTO TAX VALUES(40, '경기도', ' 광주시', 139496, 4073756);
INSERT INTO TAX VALUES(41, '경기도', ' 구리시', 69862, 2285324);
INSERT INTO TAX VALUES(42, '경기도', ' 군포시', 110466, 3962253);
INSERT INTO TAX VALUES(43, '경기도', ' 김포시', 162343, 5410797);
INSERT INTO TAX VALUES(44, '경기도', ' 남양주시', 220273, 6807236);
INSERT INTO TAX VALUES(45, '경기도', ' 동두천시', 31416, 804852);
INSERT INTO TAX VALUES(46, '경기도', ' 부천시', 317454, 9680039);
INSERT INTO TAX VALUES(47, '경기도', ' 성남시', 369392, 16629729);
INSERT INTO TAX VALUES(48, '경기도', ' 수원시', 474241, 18623591);
INSERT INTO TAX VALUES(49, '경기도', ' 시흥시', 184930, 5483020);
INSERT INTO TAX VALUES(50, '경기도', ' 안산시', 260155, 7752638);
INSERT INTO TAX VALUES(51, '경기도', ' 안성시', 69552, 2079882);
INSERT INTO TAX VALUES(52, '경기도', ' 안양시', 224858, 8354813);
INSERT INTO TAX VALUES(53, '경기도', ' 양주시', 75420, 2023709);
INSERT INTO TAX VALUES(54, '경기도', ' 양평군', 29678, 1006632);
INSERT INTO TAX VALUES(55, '경기도', ' 여주시', 35202, 1010290);
INSERT INTO TAX VALUES(56, '경기도', ' 연천군', 12952, 386623);
INSERT INTO TAX VALUES(57, '경기도', ' 오산시', 87693, 2893828);
INSERT INTO TAX VALUES(58, '경기도', ' 용인시', 380135, 16539462);
INSERT INTO TAX VALUES(59, '경기도', ' 의왕시', 58695, 2216488);
INSERT INTO TAX VALUES(60, '경기도', ' 의정부시', 148147, 4157464);
INSERT INTO TAX VALUES(61, '경기도', ' 이천시', 81272, 2879176);
INSERT INTO TAX VALUES(62, '경기도', ' 파주시', 169230, 5586039);
INSERT INTO TAX VALUES(63, '경기도', ' 평택시', 186182, 6356196);
INSERT INTO TAX VALUES(64, '경기도', ' 포천시', 57172, 1438393);
INSERT INTO TAX VALUES(65, '경기도', ' 하남시', 91721, 3348151);
INSERT INTO TAX VALUES(66, '경기도', ' 화성시', 320571, 13424608);
INSERT INTO TAX VALUES(67, '강원도', ' 강릉시', 63999, 1986223);
INSERT INTO TAX VALUES(68, '강원도', ' 고성군', 7810, 224500);
INSERT INTO TAX VALUES(69, '강원도', ' 동해시', 27245, 925233);
INSERT INTO TAX VALUES(70, '강원도', ' 삼척시', 19358, 638838);
INSERT INTO TAX VALUES(71, '강원도', ' 속초시', 24361, 716837);
INSERT INTO TAX VALUES(72, '강원도', ' 양구군', 7066, 235992);
INSERT INTO TAX VALUES(73, '강원도', ' 양양군', 6970, 200665);
INSERT INTO TAX VALUES(74, '강원도', ' 영월군', 10315, 332504);
INSERT INTO TAX VALUES(75, '강원도', ' 원주시', 114751, 3725573);
INSERT INTO TAX VALUES(76, '강원도', ' 인제군', 9950, 332212);
INSERT INTO TAX VALUES(77, '강원도', ' 정선군', 10551, 325107);
INSERT INTO TAX VALUES(78, '강원도', ' 철원군', 13270, 418227);
INSERT INTO TAX VALUES(79, '강원도', ' 춘천시', 91628, 2997277);
INSERT INTO TAX VALUES(80, '강원도', ' 태백시', 14190, 487246);
INSERT INTO TAX VALUES(81, '강원도', ' 평창군', 10356, 296735);
INSERT INTO TAX VALUES(82, '강원도', ' 홍천군', 18077, 537900);
INSERT INTO TAX VALUES(83, '강원도', ' 화천군', 8315, 272125);
INSERT INTO TAX VALUES(84, '강원도', ' 횡성군', 11759, 328745);
INSERT INTO TAX VALUES(85, '대전광역시', ' 대덕구', 63060, 1856372);
INSERT INTO TAX VALUES(86, '대전광역시', ' 동구', 70391, 1938560);
INSERT INTO TAX VALUES(87, '대전광역시', ' 서구', 170449, 5876253);
INSERT INTO TAX VALUES(88, '대전광역시', ' 유성구', 131984, 5953730);
INSERT INTO TAX VALUES(89, '대전광역시', ' 중구', 77608, 2376938);
INSERT INTO TAX VALUES(90, '충청북도', ' 괴산군', 9566, 271894);
INSERT INTO TAX VALUES(91, '충청북도', ' 단양군', 7881, 235306);
INSERT INTO TAX VALUES(92, '충청북도', ' 보은군', 7889, 229385);
INSERT INTO TAX VALUES(93, '충청북도', ' 영동군', 12267, 353206);
INSERT INTO TAX VALUES(94, '충청북도', ' 옥천군', 14176, 394699);
INSERT INTO TAX VALUES(95, '충청북도', ' 음성군', 39804, 1122035);
INSERT INTO TAX VALUES(96, '충청북도', ' 제천시', 39824, 1228746);
INSERT INTO TAX VALUES(97, '충청북도', ' 증평군', 13522, 415890);
INSERT INTO TAX VALUES(98, '충청북도', ' 진천군', 33260, 991590);
INSERT INTO TAX VALUES(99, '충청북도', ' 청주시', 308558, 10836096);
INSERT INTO TAX VALUES(100, '충청북도', ' 충주시', 67380, 2075025);
INSERT INTO TAX VALUES(101, '충청남도', ' 계룡시', 14671, 642704);
INSERT INTO TAX VALUES(102, '충청남도', ' 공주시', 30857, 945336);
INSERT INTO TAX VALUES(103, '충청남도', ' 금산군', 12279, 348679);
INSERT INTO TAX VALUES(104, '충청남도', ' 논산시', 32557, 917603);
INSERT INTO TAX VALUES(105, '충청남도', ' 당진시', 57959, 2048715);
INSERT INTO TAX VALUES(106, '충청남도', ' 보령시', 28942, 890902);
INSERT INTO TAX VALUES(107, '충청남도', ' 부여군', 15891, 440734);
INSERT INTO TAX VALUES(108, '충청남도', ' 서산시', 56097, 2223965);
INSERT INTO TAX VALUES(109, '충청남도', ' 서천군', 12221, 369742);
INSERT INTO TAX VALUES(110, '충청남도', ' 아산시', 120935, 4649850);
INSERT INTO TAX VALUES(111, '충청남도', ' 예산군', 22024, 618693);
INSERT INTO TAX VALUES(112, '충청남도', ' 천안시', 253009, 9207333);
INSERT INTO TAX VALUES(113, '충청남도', ' 청양군', 7427, 214388);
INSERT INTO TAX VALUES(114, '충청남도', ' 태안군', 14497, 454345);
INSERT INTO TAX VALUES(115, '충청남도', ' 홍성군', 29479, 918636);
INSERT INTO TAX VALUES(116, '세종특별시', '', 119289, 4941608);
INSERT INTO TAX VALUES(117, '광주광역시', ' 광산구', 145338, 4783200);
INSERT INTO TAX VALUES(118, '광주광역시', ' 남구', 67375, 2340539);
INSERT INTO TAX VALUES(119, '광주광역시', ' 동구', 28388, 949175);
INSERT INTO TAX VALUES(120, '광주광역시', ' 북구', 143316, 4507653);
INSERT INTO TAX VALUES(121, '광주광역시', ' 서구', 102403, 3613745);
INSERT INTO TAX VALUES(122, '전라북도', ' 고창군', 11706, 341531);
INSERT INTO TAX VALUES(123, '전라북도', ' 군산시', 82620, 2769001);
INSERT INTO TAX VALUES(124, '전라북도', ' 김제시', 21602, 572392);
INSERT INTO TAX VALUES(125, '전라북도', ' 남원시', 19794, 553638);
INSERT INTO TAX VALUES(126, '전라북도', ' 무주군', 5621, 157997);
INSERT INTO TAX VALUES(127, '전라북도', ' 부안군', 12145, 331069);
INSERT INTO TAX VALUES(128, '전라북도', ' 순창군', 6791, 194811);
INSERT INTO TAX VALUES(129, '전라북도', ' 완주군', 27309, 870082);
INSERT INTO TAX VALUES(130, '전라북도', ' 익산시', 89928, 2691925);
INSERT INTO TAX VALUES(131, '전라북도', ' 임실군', 6549, 196526);
INSERT INTO TAX VALUES(132, '전라북도', ' 장수군', 4910, 145043);
INSERT INTO TAX VALUES(133, '전라북도', ' 전주시', 211757, 7182213);
INSERT INTO TAX VALUES(134, '전라북도', ' 정읍시', 28258, 792796);
INSERT INTO TAX VALUES(135, '전라북도', ' 진안군', 5833, 171522);
INSERT INTO TAX VALUES(136, '전라남도', ' 강진군', 7808, 232384);
INSERT INTO TAX VALUES(137, '전라남도', ' 고흥군', 11690, 324897);
INSERT INTO TAX VALUES(138, '전라남도', ' 곡성군', 6815, 219181);
INSERT INTO TAX VALUES(139, '전라남도', ' 광양시', 49570, 1918051);
INSERT INTO TAX VALUES(140, '전라남도', ' 구례군', 6448, 179726);
INSERT INTO TAX VALUES(141, '전라남도', ' 나주시', 34837, 1092298);
INSERT INTO TAX VALUES(142, '전라남도', ' 담양군', 12168, 370327);
INSERT INTO TAX VALUES(143, '전라남도', ' 목포시', 66981, 1944221);
INSERT INTO TAX VALUES(144, '전라남도', ' 무안군', 22043, 736182);
INSERT INTO TAX VALUES(145, '전라남도', ' 보성군', 8363, 240988);
INSERT INTO TAX VALUES(146, '전라남도', ' 순천시', 85436, 3035101);
INSERT INTO TAX VALUES(147, '전라남도', ' 신안군', 7353, 225273);
INSERT INTO TAX VALUES(148, '전라남도', ' 여수시', 82338, 3207348);
INSERT INTO TAX VALUES(149, '전라남도', ' 영광군', 12807, 423868);
INSERT INTO TAX VALUES(150, '전라남도', ' 영암군', 16539, 452004);
INSERT INTO TAX VALUES(151, '전라남도', ' 완도군', 9404, 270842);
INSERT INTO TAX VALUES(152, '전라남도', ' 장성군', 12566, 385941);
INSERT INTO TAX VALUES(153, '전라남도', ' 장흥군', 8362, 244257);
INSERT INTO TAX VALUES(154, '전라남도', ' 진도군', 5477, 163706);
INSERT INTO TAX VALUES(155, '전라남도', ' 함평군', 7447, 218743);
INSERT INTO TAX VALUES(156, '전라남도', ' 해남군', 14303, 393238);
INSERT INTO TAX VALUES(157, '전라남도', ' 화순군', 17964, 508674);
INSERT INTO TAX VALUES(158, '대구광역시', ' 남구', 41656, 1091249);
INSERT INTO TAX VALUES(159, '대구광역시', ' 달서구', 194034, 6322009);
INSERT INTO TAX VALUES(160, '대구광역시', ' 달성군', 90005, 2774925);
INSERT INTO TAX VALUES(161, '대구광역시', ' 동구', 110188, 3297807);
INSERT INTO TAX VALUES(162, '대구광역시', ' 북구', 142367, 4239629);
INSERT INTO TAX VALUES(163, '대구광역시', ' 서구', 55408, 1319297);
INSERT INTO TAX VALUES(164, '대구광역시', ' 수성구', 132091, 5752044);
INSERT INTO TAX VALUES(165, '대구광역시', ' 중구', 23693, 758724);
INSERT INTO TAX VALUES(166, '경상북도', ' 경산시', 86189, 2489071);
INSERT INTO TAX VALUES(167, '경상북도', ' 경주시', 83533, 2816372);
INSERT INTO TAX VALUES(168, '경상북도', ' 고령군', 9306, 254083);
INSERT INTO TAX VALUES(169, '경상북도', ' 구미시', 154895, 5605706);
INSERT INTO TAX VALUES(170, '경상북도', ' 군위군', 5379, 161773);
INSERT INTO TAX VALUES(171, '경상북도', ' 김천시', 41786, 1401345);
INSERT INTO TAX VALUES(172, '경상북도', ' 문경시', 17486, 513569);
INSERT INTO TAX VALUES(173, '경상북도', ' 봉화군', 6357, 187261);
INSERT INTO TAX VALUES(174, '경상북도', ' 상주시', 22525, 658714);
INSERT INTO TAX VALUES(175, '경상북도', ' 성주군', 11126, 287905);
INSERT INTO TAX VALUES(176, '경상북도', ' 안동시', 43343, 1391644);
INSERT INTO TAX VALUES(177, '경상북도', ' 영덕군', 7556, 203775);
INSERT INTO TAX VALUES(178, '경상북도', ' 영양군', 3127, 95485);
INSERT INTO TAX VALUES(179, '경상북도', ' 영주시', 26798, 850439);
INSERT INTO TAX VALUES(180, '경상북도', ' 영천시', 28169, 804704);
INSERT INTO TAX VALUES(181, '경상북도', ' 예천군', 12041, 402981);
INSERT INTO TAX VALUES(182, '경상북도', ' 울릉군', 2907, 104730);
INSERT INTO TAX VALUES(183, '경상북도', ' 울진군', 12787, 456063);
INSERT INTO TAX VALUES(184, '경상북도', ' 의성군', 10404, 272097);
INSERT INTO TAX VALUES(185, '경상북도', ' 청도군', 9833, 275220);
INSERT INTO TAX VALUES(186, '경상북도', ' 청송군', 5073, 141134);
INSERT INTO TAX VALUES(187, '경상북도', ' 칠곡군', 42323, 1333320);
INSERT INTO TAX VALUES(188, '경상북도', ' 포항시', 157439, 5941833);
INSERT INTO TAX VALUES(189, '부산광역시', ' 강서구', 47354, 1683042);
INSERT INTO TAX VALUES(190, '부산광역시', ' 금정구', 78579, 2720852);
INSERT INTO TAX VALUES(191, '부산광역시', ' 기장군', 51865, 1701808);
INSERT INTO TAX VALUES(192, '부산광역시', ' 남구', 88591, 3131224);
INSERT INTO TAX VALUES(193, '부산광역시', ' 동구', 26122, 686110);
INSERT INTO TAX VALUES(194, '부산광역시', ' 동래구', 87743, 3064044);
INSERT INTO TAX VALUES(195, '부산광역시', ' 부산진구', 118350, 3624256);
INSERT INTO TAX VALUES(196, '부산광역시', ' 북구', 101508, 3209206);
INSERT INTO TAX VALUES(197, '부산광역시', ' 사상구', 80000, 2173515);
INSERT INTO TAX VALUES(198, '부산광역시', ' 사하구', 116566, 3431638);
INSERT INTO TAX VALUES(199, '부산광역시', ' 서구', 33298, 1003905);
INSERT INTO TAX VALUES(200, '부산광역시', ' 수영구', 57496, 1881045);
INSERT INTO TAX VALUES(201, '부산광역시', ' 연제구', 67477, 2296728);
INSERT INTO TAX VALUES(202, '부산광역시', ' 영도구', 36409, 1015442);
INSERT INTO TAX VALUES(203, '부산광역시', ' 중구', 13053, 313108);
INSERT INTO TAX VALUES(204, '부산광역시', ' 해운대구', 133266, 5462047);
INSERT INTO TAX VALUES(205, '울산광역시', ' 남구', 117719, 5262216);
INSERT INTO TAX VALUES(206, '울산광역시', ' 동구', 64886, 2616021);
INSERT INTO TAX VALUES(207, '울산광역시', ' 북구', 78624, 3551377);
INSERT INTO TAX VALUES(208, '울산광역시', ' 울주군', 77963, 3020026);
INSERT INTO TAX VALUES(209, '울산광역시', ' 중구', 79616, 3313178);
INSERT INTO TAX VALUES(210, '경상남도', ' 거제시', 94956, 3614797);
INSERT INTO TAX VALUES(211, '경상남도', ' 거창군', 14529, 444539);
INSERT INTO TAX VALUES(212, '경상남도', ' 고성군', 12965, 359647);
INSERT INTO TAX VALUES(213, '경상남도', ' 김해시', 195275, 6304129);
INSERT INTO TAX VALUES(214, '경상남도', ' 남해군', 8996, 258647);
INSERT INTO TAX VALUES(215, '경상남도', ' 밀양시', 29119, 823901);
INSERT INTO TAX VALUES(216, '경상남도', ' 사천시', 34927, 1143659);
INSERT INTO TAX VALUES(217, '경상남도', ' 산청군', 7728, 226962);
INSERT INTO TAX VALUES(218, '경상남도', ' 양산시', 122769, 3873060);
INSERT INTO TAX VALUES(219, '경상남도', ' 의령군', 6477, 191009);
INSERT INTO TAX VALUES(220, '경상남도', ' 진주시', 107513, 3726858);
INSERT INTO TAX VALUES(221, '경상남도', ' 창녕군', 17100, 492858);
INSERT INTO TAX VALUES(222, '경상남도', ' 창원시', 375231, 13680887);
INSERT INTO TAX VALUES(223, '경상남도', ' 통영시', 35650, 1005498);
INSERT INTO TAX VALUES(224, '경상남도', ' 하동군', 9529, 281558);
INSERT INTO TAX VALUES(225, '경상남도', ' 함안군', 22078, 660556);
INSERT INTO TAX VALUES(226, '경상남도', ' 함양군', 8904, 254163);
INSERT INTO TAX VALUES(227, '경상남도', ' 합천군', 9187, 270618);
INSERT INTO TAX VALUES(228, '제주특별자치도', ' 제주시', 157011, 4803882);
INSERT INTO TAX VALUES(229, '제주특별자치도', ' 서귀포시', 50517, 1478653);

Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (183,'맥도날드','마석DT점','경기도 남양주시 화도읍 마석우리 481번지','경기도','남양주시','경기도 남양주시 화도읍 비룡로 89','12166');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (184,'맘스터치','천마산점','경기도 남양주시 화도읍 묵현리 390번지','경기도','남양주시','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (185,'맥도날드','마석점','경기도 남양주시 화도읍 묵현리 481번지','경기도','남양주시','경기도 남양주시 화도읍 먹갓로38번길 27','12157');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (186,'롯데리아','롯데마트동두천점','경기도 동두천시 송내동 551번지','경기도','동두천시','경기도 동두천시 평화로2169번길 21, (송내동)','11355');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (187,'맥도날드','동두천지행점','경기도 동두천시 지행동 340-1번지','경기도','동두천시','경기도 동두천시 평화로 2290, (지행동)','11363');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (188,'버거킹','동두천DT점','경기도 동두천시 지행동 736-7번지','경기도','동두천시','경기도 동두천시 평화로2261번길 2, (지행동)','11356');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (189,'맘스터치','고강점','경기도 부천시 고강동 347-6번지','경기도','부천시','경기도 부천시 역곡로 478, (고강동)','14408');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (190,'맥도날드','부천역곡역DT점','경기도 부천시 괴안동 112-23번지','경기도','부천시','경기도 부천시 경인로 487, (괴안동)','14675');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (191,'파파이스','부천소사홈플러스점','경기도 부천시 괴안동 129-1번지','경기도','부천시','경기도 부천시 경인로 532, (괴안동)','14676');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (192,'맘스터치','유한대점','경기도 부천시 괴안동 185-34번지','경기도','부천시','경기도 부천시 경인로 590, (괴안동)','14780');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (193,'롯데리아','부천도당점','경기도 부천시 도당동 58-2번지','경기도','부천시','경기도 부천시 삼작로 252, (도당동)','14481');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (194,'파파이스','0','경기도 부천시 상동 456번지','경기도','부천시','경기도 부천시 송내대로74번길 22, (상동)','14623');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (195,'파파이스','송내점','경기도 부천시 상동 461번지','경기도','부천시','경기도 부천시 부일로 223, (상동)','14623');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (196,'버거킹','부천세이브존점','경기도 부천시 상동 535-5번지','경기도','부천시','경기도 부천시 길주로 105, (상동)','14542');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (197,'버거킹','부천NC점','경기도 부천시 상동 539-1번지','경기도','부천시','경기도 부천시 송내대로 239, (상동)','14545');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (198,'맥도날드','상동홈플러스점','경기도 부천시 상동 540-1번지','경기도','부천시','경기도 부천시 길주로 118, (상동)','14545');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (199,'롯데리아','양주덕정점','경기도 부천시 상동 571-3번지','경기도','부천시','경기도 부천시 상동로 23, (상동)','14591');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (200,'KFC','0','경기도 부천시 상동 572-1번지','경기도','부천시','경기도 부천시 조마루로 2, (상동)','14592');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (201,'맘스터치','소명여고점','경기도 부천시 소사동 5-17번지','경기도','부천시','경기도 부천시 부흥로 461-1, (소사동)','14647');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (202,'맥도날드','부천북부역점','경기도 부천시 심곡동 175-6번지','경기도','부천시','경기도 부천시 부천로 11, (심곡동)','14637');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (203,'KFC','0','경기도 부천시 심곡본동 316-2번지','경기도','부천시','경기도 부천시 부천로 1-1, (심곡본동)','14637');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (204,'맥도날드','심곡DT점','경기도 부천시 심곡본동 559번지','경기도','부천시','경기도 부천시 경인로 170, (심곡본동)','14725');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (205,'롯데리아','역곡점','경기도 부천시 역곡동 77-10번지','경기도','부천시','경기도 부천시 부일로 727, (역곡동)','14671');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (206,'버거킹','부천원종점','경기도 부천시 원종동 375-1번지','경기도','부천시','경기도 부천시 소사로 713, (원종동)','14465');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (207,'맥도날드','부천원종DT점','경기도 부천시 원종동 376-6번지','경기도','부천시','경기도 부천시 소사로 689, (원종동)','14465');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (208,'롯데리아','부천시청역점','경기도 부천시 중동 1031-2번지','경기도','부천시','경기도 부천시 길주로 181, (중동)','14537');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (209,'버거킹','부천중동점','경기도 부천시 중동 1131-4번지','경기도','부천시','경기도 부천시 신흥로 163, (중동)','14580');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (210,'맥도날드','중동DT점','경기도 부천시 중동 1142-9번지','경기도','부천시','경기도 부천시 중동로262번길 94, (중동)','14548');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (211,'버거킹','부천현대점','경기도 부천시 중동 1164번지','경기도','부천시','경기도 부천시 길주로 180, (중동)','14546');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (212,'롯데리아','미금아울렛점','경기도 성남시 분당구 구미동 11-1번지','경기도','성남시','경기도 성남시 분당구 미금일로154번길 20, (구미동)','13630');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (213,'롯데리아','0','경기도 성남시 분당구 구미동 157번지','경기도','성남시','경기도 성남시 분당구 성남대로 45, (구미동)','13636');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (214,'맥도날드','오리역점','경기도 성남시 분당구 구미동 157번지','경기도','성남시','경기도 성남시 분당구 성남대로 45, (구미동)','13636');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (215,'KFC','0','경기도 성남시 분당구 구미동 159번지','경기도','성남시','경기도 성남시 분당구 탄천상로151번길 20, (구미동)','13636');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (216,'롯데리아','0','경기도 성남시 분당구 구미동 159번지','경기도','성남시','경기도 성남시 분당구 탄천상로151번길 20, (구미동)','13636');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (217,'롯데리아','분당미금점','경기도 성남시 분당구 금곡동 158번지','경기도','성남시','경기도 성남시 분당구 성남대로 168, (금곡동)','13618');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (218,'롯데리아','0','경기도 성남시 분당구 삼평동 661번지','경기도','성남시','경기도 성남시 분당구 판교역로192번길 14-1, (삼평동)','13524');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (219,'맥도날드','판교테크노밸리점','경기도 성남시 분당구 삼평동 680번지','경기도','성남시','경기도 성남시 분당구 판교역로 231, (삼평동)','13494');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (220,'맥도날드','동판교점','경기도 성남시 분당구 삼평동 741번지','경기도','성남시','경기도 성남시 분당구 대왕판교로606번길 58, (삼평동)','13525');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (221,'KFC','0','경기도 성남시 분당구 서현동 269-2번지','경기도','성남시','경기도 성남시 분당구 분당로53번길 19, (서현동)','13591');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (222,'버거킹','분당서현점','경기도 성남시 분당구 서현동 269-2번지','경기도','성남시','경기도 성남시 분당구 분당로53번길 19, (서현동)','13591');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (223,'맥도날드','분당효자점','경기도 성남시 분당구 서현동 305-2번지','경기도','성남시','경기도 성남시 분당구 불정로 379, (서현동)','13586');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (224,'맘스터치','분당서현점','경기도 성남시 분당구 서현동 306-3번지','경기도','성남시','경기도 성남시 분당구 불정로376번길 7, (서현동)','13587');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (225,'롯데리아','0','경기도 성남시 분당구 서현동 97-3번지','경기도','성남시','경기도 성남시 분당구 서현로321번길 10, (서현동)','13577');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (226,'롯데리아','분당수내점','경기도 성남시 분당구 수내동 14번지','경기도','성남시','경기도 성남시 분당구 성남대로 491, (수내동)','13595');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (227,'맘스터치','수내역점','경기도 성남시 분당구 수내동 19-2번지','경기도','성남시','경기도 성남시 분당구 백현로101번길 20, (수내동)','13595');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1,'롯데리아','경포해수욕장점','강원도 강릉시 강문동 302-1번지','강원도','강릉시','강원도 강릉시 창해로 441, (강문동)','25460');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2,'롯데리아','강릉교동점','강원도 강릉시 교동 1883-2번지','강원도','강릉시','강원도 강릉시 교동광장로 106, (교동)','25515');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (3,'버거킹','강릉교동SK점','강원도 강릉시 교동 1893번지','강원도','강릉시','강원도 강릉시 하슬라로 159, (교동)','25516');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (4,'롯데리아','강릉점','강원도 강릉시 왕산면 왕산리 444-2번지','강원도','강릉시','강원도 강릉시 왕산면 왕산곰자리길 61-20','25641');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (5,'맥도날드','강릉점','강원도 강릉시 임당동 86번지','강원도','강릉시','강원도 강릉시 경강로 2097, (임당동)','25532');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (6,'맘스터치','강릉입암점','강원도 강릉시 입암동 708-3번지','강원도','강릉시','강원도 강릉시 성덕포남로 45-8, (입암동)','25615');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (7,'롯데리아','강릉주문진점','강원도 강릉시 주문진읍 주문리 323-6번지','강원도','강릉시','강원도 강릉시 주문진읍 구시장길 3-2','25413');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (8,'롯데리아','포남점','강원도 강릉시 포남동 1291-5번지','강원도','강릉시','강원도 강릉시 하평2길 11, (포남동)','25566');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (9,'맘스터치','강릉점','강원도 강릉시 홍제동 992-1번지','강원도','강릉시','강원도 강릉시 하슬라로 27, (홍제동)','25519');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (10,'롯데리아','고성간성점','강원도 고성군 간성읍 하리 33-3번지','강원도','고성군','강원도 고성군 간성읍 간성로 59-1','24736');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (11,'맥도날드','0','강원도 동해시 천곡동 1066번지','강원도','동해시','강원도 동해시 한섬로 93, (천곡동)','25768');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (12,'KFC','0','강원도 동해시 천곡동 863번지','강원도','동해시','강원도 동해시 한섬로 111-7, (천곡동)','25769');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (13,'맘스터치','삼척점','강원도 삼척시 남양동 17-3번지','강원도','삼척시','강원도 삼척시 진주로 39, (남양동)','25921');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (14,'롯데리아','속초점','강원도 속초시 금호동 479-25번지','강원도','속초시','강원도 속초시 중앙로 128, (금호동)','24837');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (15,'롯데리아','속초점','강원도 속초시 금호동 482-96번지','강원도','속초시','강원도 속초시 중앙로 124, (금호동)','24837');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (16,'롯데리아','설악산점','강원도 속초시 설악동 151-8번지','강원도','속초시','강원도 속초시 설악산로 1042, (설악동)','24903');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (17,'맘스터치','설악워터피아점','강원도 속초시 장사동 24-1번지','강원도','속초시','강원도 속초시 미시령로2983번길 111, (장사동)','24801');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (18,'버거킹','속초디티점','강원도 속초시 조양동 1521-3번지','강원도','속초시','강원도 속초시 동해대로 4059, (조양동)','24890');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (19,'맥도날드','속초DT점','강원도 속초시 조양동 636-53번지','강원도','속초시','강원도 속초시 동해대로 4118, (조양동)','24872');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (20,'파파이스','0','강원도 속초시 청학동 644-30번지','강원도','속초시','강원도 속초시 중앙로 75, (청학동)','24835');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (21,'롯데리아','0','강원도 양구군 양구읍 상리 273-8번지','강원도','양구군','강원도 양구군 양구읍 양록길 99','24525');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (22,'맘스터치','양구점','강원도 양구군 양구읍 상리 334-24번지','강원도','양구군','강원도 양구군 양구읍 양록길 71','24526');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (23,'롯데리아','낙산해수욕장점','강원도 양양군 강현면 주청리 2-12번지','강원도','양양군','강원도 양양군 강현면 일출로 31-7','25009');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (24,'롯데리아','영월점','강원도 영월군 영월읍 하송리 253-17번지','강원도','영월군','강원도 영월군 영월읍 중앙로 22','26236');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (25,'롯데리아','홈플러스원주점','강원도 원주시 관설동 1453번지','강원도','원주시','강원도 원주시 치악로 1489, (관설동)','26471');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (26,'롯데리아','원주하나로점','강원도 원주시 단계동 803-2번지','강원도','원주시','강원도 원주시 무실로 182, (단계동)','26434');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (27,'롯데리아','원주터미널점','강원도 원주시 단계동 877-1번지','강원도','원주시','강원도 원주시 서원대로 171, (단계동)','26436');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (28,'맥도날드','원주단계점','강원도 원주시 단계동 879-1번지','강원도','원주시','강원도 원주시 서원대로 154, (단계동)','26382');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (29,'맥도날드','원주단구DT점','강원도 원주시 단구동 1026-16번지','강원도','원주시','강원도 원주시 서원대로 426, (단구동)','26485');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (30,'맥도날드','0','강원도 원주시 무실동 1062-1번지','강원도','원주시','강원도 원주시 북원로 1928, (무실동)','26395');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (31,'롯데리아','무실점','강원도 원주시 무실동 1641-11번지','강원도','원주시','강원도 원주시 시청로 86, (무실동)','26388');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (32,'버거킹','원주무실점','강원도 원주시 무실동 1857-6번지','강원도','원주시','강원도 원주시 능라동길 61, (무실동)','26392');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (33,'롯데리아','문막휴게소강릉방면','강원도 원주시 문막읍 동화리 113번지','강원도','원주시','강원도 원주시 문막읍 원문로 1234','26364');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (34,'롯데리아','0','강원도 원주시 문막읍 동화리 114번지','강원도','원주시','강원도 원주시 문막읍 원문로 1234-1','26364');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (35,'롯데리아','혁신도시점','강원도 원주시 반곡동 1910-3번지','강원도','원주시','강원도 원주시 건강로 17-2, (반곡동)','26464');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (36,'맘스터치','우산점','강원도 원주시 우산동 120-10번지','강원도','원주시','강원도 원주시 상지대길 56, (우산동)','26338');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (37,'롯데리아','우산점','강원도 원주시 우산동 121-5번지','강원도','원주시','강원도 원주시 우산로 72, (우산동)','26341');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (38,'맘스터치','원주중앙점','강원도 원주시 일산동 162-20번지','강원도','원주시','강원도 원주시 원일로115번길 10, (일산동)','26427');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (39,'롯데리아','원주일산점','강원도 원주시 중앙동 13-2번지','강원도','원주시','강원도 원주시 천사로 213, (중앙동)','26415');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (40,'롯데리아','오크밸리리조트ST점','강원도 원주시 지정면 월송리 1016번지','강원도','원주시','강원도 원주시 지정면 월송석화로 838','26357');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (41,'맘스터치','원주연세대점','강원도 원주시 흥업면 매지리 1875번지','강원도','원주시','강원도 원주시 흥업면 연세대길 1','26493');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (42,'맘스터치','원주흥업점','강원도 원주시 흥업면 흥업리 707-7번지','강원도','원주시','강원도 원주시 흥업면 남원로 85','26403');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (43,'롯데리아','내린천휴게소서울방면','강원도 인제군 상남면 하남리 371번지','강원도','인제군','강원도 인제군 상남면 서울양양고속도로 117','24665');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (44,'맘스터치','인제읍점','강원도 인제군 인제읍 상동리 358-7번지','강원도','인제군','강원도 인제군 인제읍 비봉로 7','24635');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (45,'파파이스','하이원리조트점','강원도 정선군 고한읍 고한리 130-38번지','강원도','정선군','강원도 정선군 고한읍 하이원길 500','26154');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (46,'롯데리아','에코리조트점','강원도 정선군 정선읍 북실리 579-7번지','강원도','정선군','강원도 정선군 정선읍 병방치길 235','26132');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (47,'롯데리아','철원동송점','강원도 철원군 동송읍 이평리 681-22번지','강원도','철원군','강원도 철원군 동송읍 금학로 227','24014');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (48,'맘스터치','와수리점','강원도 철원군 서면 와수리 1140-9번지','강원도','철원군','강원도 철원군 서면 와수로 167-2','24059');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (49,'롯데리아','엘리시안강촌리조트점','강원도 춘천시 남산면 백양리 1-2번지','강원도','춘천시','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (50,'버거킹','춘천거두GS점','강원도 춘천시 동내면 거두리 910번지','강원도','춘천시','강원도 춘천시 동내면 춘천순환로 59','24400');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (51,'롯데리아','롯데마트석사점','강원도 춘천시 석사동 27-2번지','강원도','춘천시','강원도 춘천시 세실로 108, (석사동)','24315');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (52,'롯데리아','우두점','강원도 춘천시 우두동 707-35번지','강원도','춘천시','강원도 춘천시 충열로 39, (우두동)','24226');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (53,'롯데리아','익스프레스점','강원도 춘천시 중앙로1가 13번지','강원도','춘천시','강원도 춘천시 서부대성로57번길 10, (중앙로1가)','24265');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (54,'맥도날드','춘천명동점','강원도 춘천시 중앙로2가 23-1번지','강원도','춘천시','강원도 춘천시 명동길 14, (중앙로2가)','24353');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (55,'KFC','0','강원도 춘천시 중앙로2가 31번지','강원도','춘천시','강원도 춘천시 중앙로67번길 4, (중앙로2가)','24354');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (56,'맥도날드','춘천퇴계DT점','강원도 춘천시 퇴계동 418-20번지','강원도','춘천시','강원도 춘천시 영서로 2173, (퇴계동)','24446');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (57,'맘스터치','강원대점','강원도 춘천시 효자동 192-1번지','강원도','춘천시','강원도 춘천시 강원대학길 1, (효자동)','24341');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (58,'롯데리아','강대점','강원도 춘천시 효자동 632-2번지','강원도','춘천시','강원도 춘천시 서부대성로 243, (효자동)','24287');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (59,'맥도날드','0','강원도 춘천시 후평동 702-5번지','강원도','춘천시','강원도 춘천시 후석로 334, (후평동)','24299');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (60,'롯데리아','태백점','강원도 태백시 황지동 264-14번지','강원도','태백시','강원도 태백시 황지로 194-1, (황지동)','26011');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (61,'맘스터치','휘닉스파크점','강원도 평창군 봉평면 면온리 1095-1번지','강원도','평창군','강원도 평창군 봉평면 태기로 174','25307');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (62,'파파이스','휘닉스파크점','강원도 평창군 봉평면 면온리 1095-1번지','강원도','평창군','강원도 평창군 봉평면 태기로 174','25307');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (63,'맘스터치','평창점','강원도 평창군 평창읍 하리 137-20번지','강원도','평창군','강원도 평창군 평창읍 백오로 54','25376');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (64,'버거킹','0','강원도 홍천군 서면 팔봉리 1279-3번지','강원도','홍천군','강원도 홍천군 서면 한치골길 262','25102');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (65,'버거킹','대명비발디점','강원도 홍천군 서면 팔봉리 1290-14번지','강원도','홍천군','강원도 홍천군 서면 한치골길 262','25102');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (66,'버거킹','비발디점','강원도 홍천군 서면 팔봉리 1290-17번지','강원도','홍천군','강원도 홍천군 서면 한치골길 262','25102');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (67,'롯데리아','홍천점','강원도 홍천군 홍천읍 신장대리 79-71번지','강원도','홍천군','강원도 홍천군 홍천읍 홍천로6길 22','25137');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (68,'롯데리아','0','강원도 홍천군 홍천읍 신장대리 79-87번지','강원도','홍천군','강원도 홍천군 홍천읍 홍천로6길 24-2','25137');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (69,'맘스터치','홍천점','강원도 홍천군 홍천읍 희망리 329-12번지','강원도','홍천군','강원도 홍천군 홍천읍 홍천로3길 7','25135');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (70,'맘스터치','사내점','강원도 화천군 사내면 사창리 456-7번지','강원도','화천군','강원도 화천군 사내면 사내로 42','24154');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (71,'롯데리아','화천사내점','강원도 화천군 사내면 사창리 457-46번지','강원도','화천군','강원도 화천군 사내면 사내로 35','24155');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (72,'롯데리아','화천점','강원도 화천군 화천읍 하리 48-10번지','강원도','화천군','강원도 화천군 화천읍 중앙로 16-1','24127');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (73,'롯데리아','0','강원도 화천군 화천읍 하리 50-41번지','강원도','화천군','강원도 화천군 화천읍 중앙로4길 13-10','24127');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (74,'KFC','0','강원도 횡성군 둔내면 두원리 204번지','강원도','횡성군','강원도 횡성군 둔내면 고원로 451','25263');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (75,'롯데리아','0','강원도 횡성군 횡성읍 읍하리 112-20번지','강원도','횡성군','강원도 횡성군 횡성읍 문정로 20','25233');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (76,'맘스터치','가평점','경기도 가평군 가평읍 읍내리 380-32번지','경기도','가평군','경기도 가평군 가평읍 가평제방길 129','12419');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (77,'롯데리아','가평점','경기도 가평군 가평읍 읍내리 474-15번지','경기도','가평군','경기도 가평군 가평읍 가화로 106','12419');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (78,'롯데리아','가평점','경기도 가평군 가평읍 읍내리 495-6번지','경기도','가평군','경기도 가평군 가평읍 보납로 2','12418');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (79,'롯데리아','현리점','경기도 가평군 조종면 현리 409-11번지','경기도','가평군','경기도 가평군 조종면 현창로38번길 2-1','12437');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (80,'맘스터치','관산점','경기도 고양시 덕양구 관산동 1015번지','경기도','고양시','경기도 고양시 덕양구 통일로 760, (관산동)','10285');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (81,'롯데리아','고양관산점','경기도 고양시 덕양구 관산동 231-29번지','경기도','고양시','경기도 고양시 덕양구 통일로 792, (관산동)','10286');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (82,'롯데리아','고양원흥점','경기도 고양시 덕양구 도내동 957번지','경기도','고양시','경기도 고양시 덕양구 도래울로 105, (도내동)','10551');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (83,'버거킹','스타필드고양점','경기도 고양시 덕양구 동산동 370번지','경기도','고양시','경기도 고양시 덕양구 고양대로 1955, (동산동)','10595');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (84,'맥도날드','고양DT점','경기도 고양시 덕양구 벽제동 262-1번지','경기도','고양시','경기도 고양시 덕양구 호국로 1699, (벽제동)','10275');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (85,'롯데리아','원당점','경기도 고양시 덕양구 성사동 696-2번지','경기도','고양시','경기도 고양시 덕양구 마상로154번길 68, (성사동)','10463');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (86,'맘스터치','0','경기도 고양시 덕양구 신원동 621-1번지','경기도','고양시','경기도 고양시 덕양구 신원로 36, (신원동)','10568');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (87,'맥도날드','고양원당DT점','경기도 고양시 덕양구 주교동 610-4번지','경기도','고양시','경기도 고양시 덕양구 호국로 777, (주교동)','10461');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (88,'맥도날드','행신점','경기도 고양시 덕양구 행신동 714-1번지','경기도','고양시','경기도 고양시 덕양구 충경로 38, (행신동)','10523');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (89,'롯데리아','0','경기도 고양시 덕양구 행신동 714-4번지','경기도','고양시','경기도 고양시 덕양구 무원로6번길 50, (행신동)','10523');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (90,'롯데리아','롯데마트고양점','경기도 고양시 덕양구 행신동 944번지','경기도','고양시','경기도 고양시 덕양구 중앙로558번길 21, (행신동)','10495');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (91,'버거킹','일산화정오일뱅크점','경기도 고양시 덕양구 화정동 1002번지','경기도','고양시','경기도 고양시 덕양구 화중로 38, (화정동)','10503');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (92,'맥도날드','화정점','경기도 고양시 덕양구 화정동 970-3번지','경기도','고양시','경기도 고양시 덕양구 화신로272번길 67, (화정동)','10500');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (93,'KFC','0','경기도 고양시 덕양구 화정동 970-5번지','경기도','고양시','경기도 고양시 덕양구 화신로272번길 57, (화정동)','10500');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (94,'롯데리아','화정점','경기도 고양시 덕양구 화정동 970-5번지','경기도','고양시','경기도 고양시 덕양구 화신로272번길 57, (화정동)','10500');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (95,'맘스터치','화정로데오점','경기도 고양시 덕양구 화정동 979-1번지','경기도','고양시','경기도 고양시 덕양구 화신로260번길 33, (화정동)','10500');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (96,'맘스터치','0','경기도 고양시 일산동구 마두동 739번지','경기도','고양시','경기도 고양시 일산동구 일산로 205, (마두동)','10416');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (97,'버거킹','일산백마점','경기도 고양시 일산동구 마두동 751번지','경기도','고양시','경기도 고양시 일산동구 일산로 237, (마두동)','10416');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (98,'맥도날드','마두역점','경기도 고양시 일산동구 마두동 798-6번지','경기도','고양시','경기도 고양시 일산동구 중앙로 1190, (마두동)','10414');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (99,'롯데리아','고양터미널롯데아울렛점','경기도 고양시 일산동구 백석동 1242번지','경기도','고양시','경기도 고양시 일산동구 중앙로 1036, (백석동)','10450');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (100,'버거킹','고양터미널점','경기도 고양시 일산동구 백석동 1242번지','경기도','고양시','경기도 고양시 일산동구 중앙로 1036, (백석동)','10450');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (101,'파파이스','동국대일산병원점','경기도 고양시 일산동구 식사동 814번지','경기도','고양시','경기도 고양시 일산동구 동국로 27, (식사동)','10326');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (102,'롯데리아','일산점','경기도 고양시 일산동구 장항동 755번지','경기도','고양시','경기도 고양시 일산동구 중앙로1275번길 64, (장항동)','10401');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (103,'롯데리아','일산라페스타점','경기도 고양시 일산동구 장항동 761번지','경기도','고양시','경기도 고양시 일산동구 무궁화로 20-11, (장항동)','10401');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (104,'KFC','0','경기도 고양시 일산동구 장항동 769-2번지','경기도','고양시','경기도 고양시 일산동구 중앙로1275번길 56, (장항동)','10401');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (105,'맥도날드','정발산점','경기도 고양시 일산동구 장항동 770-2번지','경기도','고양시','경기도 고양시 일산동구 중앙로1275번길 38-5, (장항동)','10401');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (106,'버거킹','일산호수공원점','경기도 고양시 일산동구 장항동 771-1번지','경기도','고양시','경기도 고양시 일산동구 중앙로1275번길 38-10, (장항동)','10401');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (107,'KFC','0','경기도 고양시 일산동구 장항동 859번지','경기도','고양시','경기도 고양시 일산동구 정발산로 31-9, (장항동)','10402');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (108,'버거킹','일산마두점','경기도 고양시 일산동구 장항동 893-1번지','경기도','고양시','경기도 고양시 일산동구 장백로 194, (장항동)','10414');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (109,'맥도날드','중산DT점','경기도 고양시 일산동구 중산동 1667-5번지','경기도','고양시','경기도 고양시 일산동구 고양대로 745, (중산동)','10338');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (110,'맥도날드','0','경기도 고양시 일산동구 풍동 148-3번지','경기도','고양시','경기도 고양시 일산동구 백마로 493, (풍동)','10304');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (111,'맥도날드','고양풍동DT점','경기도 고양시 일산동구 풍동 148번지','경기도','고양시','경기도 고양시 일산동구 백마로 497, (풍동)','10304');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (112,'롯데리아','일산가좌점','경기도 고양시 일산서구 가좌동 1088번지','경기도','고양시','경기도 고양시 일산서구 가좌1로 38, (가좌동)','10210');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (113,'맘스터치','일산가좌점','경기도 고양시 일산서구 가좌동 390-11번지','경기도','고양시','경기도 고양시 일산서구 가좌3로 25, (가좌동)','10209');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (114,'롯데리아','0','경기도 고양시 일산서구 대화동 1050-171번지','경기도','고양시','경기도 고양시 일산서구 주엽로 79, (대화동)','10391');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (115,'롯데리아','일산대화역점','경기도 고양시 일산서구 대화동 2203-1번지','경기도','고양시','경기도 고양시 일산서구 중앙로 1564, (대화동)','10381');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (116,'롯데리아','하나로고양점','경기도 고양시 일산서구 대화동 2324번지','경기도','고양시','경기도 고양시 일산서구 대화로 362, (대화동)','10226');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (117,'롯데리아','0','경기도 고양시 일산서구 대화동 2600번지','경기도','고양시','경기도 고양시 일산서구 킨텍스로 217-60, (대화동)','10390');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (118,'맥도날드','원마운트점','경기도 고양시 일산서구 대화동 2606번지','경기도','고양시','경기도 고양시 일산서구 한류월드로 300, (대화동)','10392');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (119,'롯데리아','일산킨텍스점','경기도 고양시 일산서구 대화동 2700번지','경기도','고양시','경기도 고양시 일산서구 킨텍스로 217-59, (대화동)','10390');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (120,'롯데리아','일산후곡점','경기도 고양시 일산서구 일산동 1079번지','경기도','고양시','경기도 고양시 일산서구 일산로 544, (일산동)','10374');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (121,'버거킹','일산산들SK점','경기도 고양시 일산서구 일산동 1681-2번지','경기도','고양시','경기도 고양시 일산서구 고양대로 717, (일산동)','10340');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (122,'KFC','0','경기도 고양시 일산서구 주엽동 102번지','경기도','고양시','경기도 고양시 일산서구 강선로 49, (주엽동)','10386');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (123,'KFC','0','경기도 고양시 일산서구 주엽동 109번지','경기도','고양시','경기도 고양시 일산서구 중앙로 1437, (주엽동)','10387');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (124,'맥도날드','강선점','경기도 고양시 일산서구 주엽동 51-1번지','경기도','고양시','경기도 고양시 일산서구 대산로 113, (주엽동)','10388');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (125,'맥도날드','과천뉴코아점','경기도 과천시 별양동 1-19번지','경기도','과천시','경기도 과천시 별양상가3로 11, (별양동)','13837');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (126,'롯데리아','0','경기도 과천시 별양동 19-4번지','경기도','과천시','경기도 과천시 향촌길 5-13, (별양동)','13834');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (127,'맥도날드','광명역점','경기도 광명시 광명동 158-792번지','경기도','광명시','경기도 광명시 광명로 895-1, (광명동)','14286');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (128,'맥도날드','광명DT점','경기도 광명시 광명동 754-4번지','경기도','광명시','경기도 광명시 광명로 765, (광명동)','14296');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (129,'버거킹','0','경기도 광명시 소하동 1339-3번지','경기도','광명시','경기도 광명시 소하로 97, (소하동)','14316');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (130,'맥도날드','광명소하DT점','경기도 광명시 소하동 1340번지','경기도','광명시','경기도 광명시 오리로 512, (소하동)','14316');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (131,'파파이스','광명역점','경기도 광명시 일직동 276-8번지','경기도','광명시','경기도 광명시 광명역로 21, (일직동)','14347');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (132,'롯데리아','광명아울렛점','경기도 광명시 일직동 500번지','경기도','광명시','경기도 광명시 일직로 17, (일직동)','14352');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (133,'맘스터치','0','경기도 광명시 철산동 245-4번지','경기도','광명시','경기도 광명시 철산로 27, (철산동)','14236');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (134,'맥도날드','광명한신점','경기도 광명시 철산동 367번지','경기도','광명시','경기도 광명시 디지털로 64, (철산동)','14243');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (135,'버거킹','광명철산점','경기도 광명시 철산동 382번지','경기도','광명시','경기도 광명시 철산로 24, (철산동)','14237');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (136,'맥도날드','철산역점','경기도 광명시 철산동 404번지','경기도','광명시','경기도 광명시 오리로856번길 17, (철산동)','14237');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (137,'롯데리아','광명하안점','경기도 광명시 하안동 34-8번지','경기도','광명시','경기도 광명시 범안로 1045, (하안동)','14248');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (138,'KFC','0','경기도 광명시 하안동 51번지','경기도','광명시','경기도 광명시 하안로 289, (하안동)','14305');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (139,'버거킹','광주경안점','경기도 광주시 경안동 23번지','경기도','광주시','경기도 광주시 경안로 10, (경안동)','12756');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (140,'파파이스','광주터미널점','경기도 광주시 경안동 25-3번지','경기도','광주시','경기도 광주시 광주대로 30, (경안동)','12757');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (141,'맘스터치','광주경안점','경기도 광주시 경안동 30-4번지','경기도','광주시','경기도 광주시 경안로 17, (경안동)','12758');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (142,'롯데리아','경안제일점','경기도 광주시 경안동 74-17번지','경기도','광주시','경기도 광주시 중앙로 152, (경안동)','12756');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (143,'롯데리아','곤지암점','경기도 광주시 곤지암읍 곤지암리 433-14번지','경기도','광주시','경기도 광주시 곤지암읍 곤지암로 45','12804');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (144,'롯데리아','광주능평점','경기도 광주시 오포읍 능평리 437-9번지','경기도','광주시','경기도 광주시 오포읍 태재로 117','12772');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (145,'맘스터치','광주신현점','경기도 광주시 오포읍 신현리 672-9번지','경기도','광주시','경기도 광주시 오포읍 신현로 84','12771');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (146,'롯데리아','광주오포점','경기도 광주시 오포읍 양벌리 375-1번지','경기도','광주시','경기도 광주시 오포읍 양벌로 207','12797');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (147,'롯데리아','태전점','경기도 광주시 장지동 686-2번지','경기도','광주시','경기도 광주시 고불로 43-1, (장지동)','12780');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (148,'맥도날드','구리점','경기도 구리시 수택동 383-8번지','경기도','구리시','경기도 구리시 경춘로 214-1, (수택동)','11927');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (149,'맥도날드','구리수택점','경기도 구리시 수택동 526-4번지','경기도','구리시','경기도 구리시 검배로 7, (수택동)','11929');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (150,'KFC','0','경기도 구리시 수택동 847-1번지','경기도','구리시','경기도 구리시 이문안로 62, (수택동)','11940');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (151,'맥도날드','인창DT점','경기도 구리시 인창동 410-5번지','경기도','구리시','경기도 구리시 동구릉로 130, (인창동)','11918');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (152,'KFC','0','경기도 구리시 인창동 676-2번지','경기도','구리시','경기도 구리시 경춘로 243, (인창동)','11922');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (153,'맥도날드','군포당동SKDT점','경기도 군포시 당동 871-2번지','경기도','군포시','경기도 군포시 고산로 259, (당동)','15875');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (154,'롯데리아','당동지점','경기도 군포시 당동 921-2번지','경기도','군포시','경기도 군포시 고산로 262, (당동)','15856');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (155,'버거킹','산본점','경기도 군포시 산본동 1097번지','경기도','군포시','경기도 군포시 산본로 382, (산본동)','15818');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (156,'맥도날드','산본이마트점','경기도 군포시 산본동 1123번지','경기도','군포시','경기도 군포시 산본로 347, (산본동)','15865');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (157,'맘스터치','0','경기도 군포시 산본동 1144-2번지','경기도','군포시','경기도 군포시 광정로 68, (산본동)','15865');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (158,'맥도날드','김포고촌SK점','경기도 김포시 고촌읍 신곡리 532-25번지','경기도','김포시','경기도 김포시 고촌읍 김포대로 336','10125');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (159,'버거킹','김포현대아울렛점','경기도 김포시 고촌읍 전호리 654번지','경기도','김포시','경기도 김포시 고촌읍 아라육로152번길 100','10135');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (160,'KFC','0','경기도 김포시 구래동 6880-7번지','경기도','김포시','경기도 김포시 김포한강7로 93, (구래동)','10071');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (161,'롯데리아','김포구래점','경기도 김포시 구래동 6883-15번지','경기도','김포시','경기도 김포시 김포한강9로76번길 41, (구래동)','10071');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (162,'맘스터치','구래점','경기도 김포시 구래동 6883-2번지','경기도','김포시','경기도 김포시 김포한강9로76번길 63, (구래동)','10071');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (163,'파파이스','김포구래점','경기도 김포시 구래동 6890-1번지','경기도','김포시','경기도 김포시 김포한강9로 36, (구래동)','10070');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (164,'KFC','0','경기도 김포시 사우동 237-2번지','경기도','김포시','경기도 김포시 돌문로 43, (사우동)','10108');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (165,'롯데리아','김포양곡점','경기도 김포시 양촌읍 양곡리 1306-3번지','경기도','김포시','경기도 김포시 양촌읍 양곡2로30번길 7-19','10062');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (166,'맘스터치','운양점','경기도 김포시 운양동 1297-9번지','경기도','김포시','경기도 김포시 김포한강11로 288-19, (운양동)','10073');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (167,'롯데리아','김포운양점','경기도 김포시 운양동 1299-1번지','경기도','김포시','경기도 김포시 김포한강1로 227, (운양동)','10073');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (168,'맘스터치','통진점','경기도 김포시 통진읍 마송리 105-17번지','경기도','김포시','경기도 김포시 통진읍 김포대로2230번길 21-10','10018');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (169,'롯데리아','홈플러스풍무점','경기도 김포시 풍무동 38-1번지','경기도','김포시','경기도 김포시 풍무로 167, (풍무동)','10117');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (170,'롯데리아','우영남양주지점','경기도 남양주시 금곡동 156-40번지','경기도','남양주시','경기도 남양주시 경춘로 979, (금곡동)','12237');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (171,'맘스터치','삼육대점','경기도 남양주시 별내동 558-9번지','경기도','남양주시','경기도 남양주시 불암로 41-56, (별내동)','12100');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (172,'맘스터치','오남양지점','경기도 남양주시 오남읍 양지리 101-16번지','경기도','남양주시','경기도 남양주시 오남읍 진건오남로 812','12036');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (173,'롯데리아','남양주덕소점','경기도 남양주시 와부읍 덕소리 474-4번지','경기도','남양주시','경기도 남양주시 와부읍 덕소로97번길 7','12209');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (174,'맥도날드','덕소점','경기도 남양주시 와부읍 덕소리 474-5번지','경기도','남양주시','경기도 남양주시 와부읍 덕소로 93','12209');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (175,'맘스터치','덕소점','경기도 남양주시 와부읍 덕소리 540-5번지','경기도','남양주시','경기도 남양주시 와부읍 덕소로 116','12215');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (176,'KFC','0','경기도 남양주시 진접읍 장현리 216-1번지','경기도','남양주시','경기도 남양주시 진접읍 금강로 1447','12008');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (177,'맥도날드','진접DT점','경기도 남양주시 진접읍 장현리 218번지','경기도','남양주시','경기도 남양주시 진접읍 금강로 1467','12008');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (178,'맥도날드','진접DT점','경기도 남양주시 진접읍 팔야리 218번지','경기도','남양주시','경기도 남양주시 진접읍 팔야로128번길 71','12017');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (179,'롯데리아','0','경기도 남양주시 퇴계원면 퇴계원리 295-3번지','경기도','남양주시','경기도 남양주시 퇴계원면 퇴계원로 30','12122');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (180,'맥도날드','평내DT점','경기도 남양주시 평내동 246-21번지','경기도','남양주시','경기도 남양주시 경춘로 1273, (평내동)','12217');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (181,'롯데리아','평내점','경기도 남양주시 평내동 565-2번지','경기도','남양주시','경기도 남양주시 경춘로1256번길 34, (평내동)','12225');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (182,'맘스터치','0','경기도 남양주시 호평동 641-1번지','경기도','남양주시','경기도 남양주시 늘을2로14번길 5, (호평동)','12150');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (228,'버거킹','분당수내점','경기도 성남시 분당구 수내동 28-2번지','경기도','성남시','경기도 성남시 분당구 내정로 167, (수내동)','13597');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (229,'롯데리아','분당수내동점','경기도 성남시 분당구 수내동 88-3번지','경기도','성남시','경기도 성남시 분당구 불정로 256, (수내동)','13601');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (230,'파파이스','야탑점','경기도 성남시 분당구 야탑동 291-1번지','경기도','성남시','경기도 성남시 분당구 매화로 46, (야탑동)','13504');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (231,'맥도날드','야탑킴스점','경기도 성남시 분당구 야탑동 357-1번지','경기도','성남시','경기도 성남시 분당구 야탑로81번길 11, (야탑동)','13497');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (232,'버거킹','분당야탑점','경기도 성남시 분당구 야탑동 366-4번지','경기도','성남시','경기도 성남시 분당구 성남대로916번길 11, (야탑동)','13506');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (233,'맥도날드','서판교DT점','경기도 성남시 분당구 운중동 1017-3번지','경기도','성남시','경기도 성남시 분당구 판교로 35, (운중동)','13467');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (234,'맥도날드','서판교DT점','경기도 성남시 분당구 운중동 1017번지','경기도','성남시','경기도 성남시 분당구 운중로 190, (운중동)','13467');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (235,'버거킹','분당정자점','경기도 성남시 분당구 정자동 117번지','경기도','성남시','경기도 성남시 분당구 내정로 54, (정자동)','13607');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (236,'KFC','0','경기도 성남시 분당구 정자동 126-4번지','경기도','성남시','경기도 성남시 분당구 정자로 88, (정자동)','13612');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (237,'버거킹','분당상록점','경기도 성남시 분당구 정자동 126-4번지','경기도','성남시','경기도 성남시 분당구 정자로 88, (정자동)','13612');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (238,'버거킹','분당정자점','경기도 성남시 분당구 정자동 8-4번지','경기도','성남시','경기도 성남시 분당구 정자일로 234, (정자동)','13555');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (239,'파파이스','0','경기도 성남시 분당구 판교동 590번지','경기도','성남시','경기도 성남시 분당구 운중로 255, (판교동)','13477');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (240,'파파이스','경원대점','경기도 성남시 수정구 복정동 620-2번지','경기도','성남시','경기도 성남시 수정구 성남대로 1342, (복정동)','13120');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (241,'맥도날드','성남신흥DT점','경기도 성남시 수정구 신흥동 181번지','경기도','성남시','경기도 성남시 수정구 수정로 306, (신흥동)','13261');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (242,'롯데리아','세이브존점','경기도 성남시 수정구 신흥동 2463-5번지','경기도','성남시','경기도 성남시 수정구 산성대로 337, (신흥동)','13272');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (243,'맥도날드','성남한신점','경기도 성남시 수정구 신흥동 2463-5번지','경기도','성남시','경기도 성남시 수정구 산성대로 337, (신흥동)','13272');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (244,'롯데리아','양지점','경기도 성남시 수정구 양지동 231번지','경기도','성남시','경기도 성남시 수정구 산성대로 531, (양지동)','13136');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (245,'롯데리아','위례우남역점','경기도 성남시 수정구 창곡동 547-4번지','경기도','성남시','경기도 성남시 수정구 위례광장로 25, (창곡동)','13647');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (246,'버거킹','성남이마트점','경기도 성남시 수정구 태평동 7336번지','경기도','성남시','경기도 성남시 수정구 수정로 201, (태평동)','13281');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (247,'맘스터치','신구대점','경기도 성남시 중원구 금광동 2685번지','경기도','성남시','경기도 성남시 중원구 광명로 377, (금광동)','13174');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (248,'롯데리아','성남단대점','경기도 성남시 중원구 금광동 4353번지','경기도','성남시','경기도 성남시 중원구 산성대로372번길 15, (금광동)','13179');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (249,'롯데리아','성남도촌점','경기도 성남시 중원구 도촌동 604번지','경기도','성남시','경기도 성남시 중원구 도촌로26번길 3, (도촌동)','13420');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (250,'롯데리아','성남테크노벨리점','경기도 성남시 중원구 상대원동 190-1번지','경기도','성남시','경기도 성남시 중원구 사기막골로 124, (상대원동)','13207');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (251,'맥도날드','모란역점','경기도 성남시 중원구 성남동 1575번지','경기도','성남시','경기도 성남시 중원구 성남대로 1147, (성남동)','13376');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (252,'맘스터치','수진역점','경기도 성남시 중원구 성남동 2161번지','경기도','성남시','경기도 성남시 중원구 광명로 119, (성남동)','13357');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (253,'맘스터치','수진역점','경기도 성남시 중원구 성남동 2509번지','경기도','성남시','경기도 성남시 중원구 광명로 120, (성남동)','13361');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (254,'맥도날드','한국지점','경기도 성남시 중원구 성남동 4093-1번지','경기도','성남시','경기도 성남시 중원구 둔촌대로 121-4, (성남동)','13373');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (255,'맥도날드','모란역점','경기도 성남시 중원구 성남동 4169번지','경기도','성남시','경기도 성남시 중원구 성남대로 1133, (성남동)','13376');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (256,'맘스터치','0','경기도 성남시 중원구 여수동 426번지','경기도','성남시','경기도 성남시 중원구 여수울로15번길 4-16, (여수동)','13435');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (257,'파파이스','0','경기도 성남시 중원구 중앙동 1152번지','경기도','성남시','경기도 성남시 중원구 산성대로 258, (중앙동)','13246');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (258,'롯데리아','수원곡반정점','경기도 수원시 권선구 곡반정동 593-2번지','경기도','수원시','경기도 수원시 권선구 곡반정로65번길 33, (곡반정동)','16672');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (259,'버거킹','이마트서수원점','경기도 수원시 권선구 구운동 925번지','경기도','수원시','경기도 수원시 권선구 수인로 291, (구운동)','16405');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (260,'롯데리아','0','경기도 수원시 권선구 권선동 1022-5번지','경기도','수원시','경기도 수원시 권선구 권광로 119, (권선동)','16571');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (261,'맥도날드','수원GS점','경기도 수원시 권선구 권선동 1029번지','경기도','수원시','경기도 수원시 권선구 권선로 684, (권선동)','16566');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (262,'KFC','0','경기도 수원시 권선구 권선동 1189번지','경기도','수원시','경기도 수원시 권선구 경수대로 270, (권선동)','16585');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (263,'롯데리아','롯데몰수원점','경기도 수원시 권선구 서둔동 296-77번지','경기도','수원시','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (264,'맥도날드','수원세류DT점','경기도 수원시 권선구 세류동 1155-8번지','경기도','수원시','경기도 수원시 권선구 경수대로 195, (세류동)','16660');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (265,'롯데리아','탑동점','경기도 수원시 권선구 탑동 757-1번지','경기도','수원시','경기도 수원시 권선구 탑동로 68, (탑동)','16604');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (266,'맥도날드','0','경기도 수원시 영통구 망포동 21-13번지','경기도','수원시','경기도 수원시 영통구 덕영대로 1495, (망포동)','16680');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (267,'맥도날드','수원망포DT점','경기도 수원시 영통구 망포동 21-1번지','경기도','수원시','경기도 수원시 영통구 덕영대로 1499, (망포동)','16680');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (268,'롯데리아','수원망포점','경기도 수원시 영통구 망포동 378번지','경기도','수원시','경기도 수원시 영통구 태장로 73, (망포동)','16688');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (269,'버거킹','수원망포점','경기도 수원시 영통구 망포동 535-18번지','경기도','수원시','경기도 수원시 영통구 영통로 108, (망포동)','16692');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (270,'버거킹','수원매탄점','경기도 수원시 영통구 매탄동 1276번지','경기도','수원시','경기도 수원시 영통구 효원로 400, (매탄동)','16547');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (271,'KFC','0','경기도 수원시 영통구 영통동 1011-1번지','경기도','수원시','경기도 수원시 영통구 청명남로 40, (영통동)','16705');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (272,'맥도날드','0','경기도 수원시 영통구 영통동 1024-9번지','경기도','수원시','경기도 수원시 영통구 덕영대로 1703, (영통동)','16702');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (273,'버거킹','수원영통점','경기도 수원시 영통구 영통동 958-1번지','경기도','수원시','경기도 수원시 영통구 봉영로 1623, (영통동)','16703');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (274,'맥도날드','영통그랜드마트점','경기도 수원시 영통구 영통동 960-1번지','경기도','수원시','경기도 수원시 영통구 봉영로 1579, (영통동)','16703');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (275,'KFC','0','경기도 수원시 영통구 영통동 990-23번지','경기도','수원시','경기도 수원시 영통구 매영로 396, (영통동)','16702');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (276,'롯데리아','홈플러스영통점','경기도 수원시 영통구 영통동 994-2번지','경기도','수원시','경기도 수원시 영통구 봉영로 1576, (영통동)','16704');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (277,'맥도날드','홈플러스원천점','경기도 수원시 영통구 원천동 177-1번지','경기도','수원시','경기도 수원시 영통구 중부대로 437, (원천동)','16513');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (278,'맥도날드','수원아주대점','경기도 수원시 영통구 원천동 18-1번지','경기도','수원시','경기도 수원시 영통구 아주로 46, (원천동)','16502');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (279,'버거킹','아주대병원점','경기도 수원시 영통구 원천동 26-6번지','경기도','수원시','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (280,'롯데리아','경기대역점','경기도 수원시 영통구 이의동 1250번지','경기도','수원시','경기도 수원시 영통구 대학4로 9, (이의동)','16226');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (281,'롯데리아','광교중앙역점','경기도 수원시 영통구 이의동 1332번지','경기도','수원시','경기도 수원시 영통구 센트럴타운로 85, (이의동)','16507');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (282,'버거킹','광교아브뉴프랑점','경기도 수원시 영통구 이의동 1332번지','경기도','수원시','경기도 수원시 영통구 센트럴타운로 85, (이의동)','16507');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (283,'롯데리아','롯데아울렛광교점','경기도 수원시 영통구 이의동 1338번지','경기도','수원시','경기도 수원시 영통구 도청로 10, (이의동)','16508');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (284,'롯데리아','광교도청역점','경기도 수원시 영통구 이의동 1347-2번지','경기도','수원시','경기도 수원시 영통구 도청로89번길 31, (이의동)','16509');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (285,'맥도날드','동수원GSDT점','경기도 수원시 영통구 이의동 422-5번지','경기도','수원시','경기도 수원시 영통구 창룡대로 370-1, (이의동)','16229');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (286,'버거킹','송죽SK점','경기도 수원시 장안구 송죽동 200-5번지','경기도','수원시','경기도 수원시 장안구 경수대로 992, (송죽동)','16298');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (287,'맥도날드','북수원DT점','경기도 수원시 장안구 송죽동 451-1번지','경기도','수원시','경기도 수원시 장안구 경수대로 991, (송죽동)','16303');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (288,'롯데리아','수원연무점','경기도 수원시 장안구 연무동 245-33번지','경기도','수원시','경기도 수원시 장안구 창룡대로 197, (연무동)','16219');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (289,'롯데리아','수원북문점','경기도 수원시 장안구 영화동 301-6번지','경기도','수원시','경기도 수원시 장안구 정조로 952, (영화동)','16269');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (290,'맥도날드','수원성균관대점','경기도 수원시 장안구 율전동 291-6번지','경기도','수원시','경기도 수원시 장안구 서부로 2127, (율전동)','16360');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (291,'롯데리아','성대점','경기도 수원시 장안구 율전동 433-117번지','경기도','수원시','경기도 수원시 장안구 서부로 2119, (율전동)','16362');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (292,'맥도날드','수원정자DT점','경기도 수원시 장안구 정자동 76-18번지','경기도','수원시','경기도 수원시 장안구 수성로 267, (정자동)','16314');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (293,'롯데리아','북수원점','경기도 수원시 장안구 정자동 840-77번지','경기도','수원시','경기도 수원시 장안구 정자로 149, (정자동)','16337');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (294,'롯데리아','수원정자점','경기도 수원시 장안구 정자동 873-4번지','경기도','수원시','경기도 수원시 장안구 정자천로 199, (정자동)','16335');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (295,'롯데리아','수원정자점','경기도 수원시 장안구 정자동 876-2번지','경기도','수원시','경기도 수원시 장안구 정자천로173번길 17, (정자동)','16334');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (296,'롯데리아','수원KT위즈파크점','경기도 수원시 장안구 조원동 775번지','경기도','수원시','경기도 수원시 장안구 경수대로 893, (조원동)','16308');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (297,'맥도날드','북수원홈플러스점','경기도 수원시 장안구 조원동 896번지','경기도','수원시','경기도 수원시 장안구 경수대로 930, (조원동)','16295');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (298,'맥도날드','수원천천점','경기도 수원시 장안구 천천동 527-3번지','경기도','수원시','경기도 수원시 장안구 만석로19번길 29, (천천동)','16329');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (299,'KFC','0','경기도 수원시 팔달구 매산로1가 18번지','경기도','수원시','경기도 수원시 팔달구 덕영대로 924, (매산로1가)','16622');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (300,'롯데리아','수원역사점','경기도 수원시 팔달구 매산로1가 18번지','경기도','수원시','경기도 수원시 팔달구 덕영대로 924, (매산로1가)','16622');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (301,'버거킹','수원역사점','경기도 수원시 팔달구 매산로1가 18번지','경기도','수원시','경기도 수원시 팔달구 덕영대로 924, (매산로1가)','16622');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (302,'파파이스','수원역점','경기도 수원시 팔달구 매산로1가 54-6번지','경기도','수원시','경기도 수원시 팔달구 매산로 7-1, (매산로1가)','16455');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (303,'롯데리아','송파점','경기도 수원시 팔달구 매산로2가 62-10번지','경기도','수원시','경기도 수원시 팔달구 매산로 40, (매산로2가)','16460');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (304,'맥도날드','수원성점','경기도 수원시 팔달구 우만동 490-4번지','경기도','수원시','경기도 수원시 팔달구 경수대로 676, (우만동)','16235');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (305,'맥도날드','수원성점','경기도 수원시 팔달구 우만동 500번지','경기도','수원시','경기도 수원시 팔달구 세지로 436, (우만동)','16236');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (306,'KFC','0','경기도 수원시 팔달구 인계동 1019-1번지','경기도','수원시','경기도 수원시 팔달구 인계로 98, (인계동)','16489');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (307,'롯데리아','동수원홈플러스점','경기도 수원시 팔달구 인계동 1045번지','경기도','수원시','경기도 수원시 팔달구 효원로 257, (인계동)','16490');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (308,'버거킹','수원시청점','경기도 수원시 팔달구 인계동 1046-18번지','경기도','수원시','경기도 수원시 팔달구 권광로 163, (인계동)','16490');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (309,'파파이스','동수원점','경기도 수원시 팔달구 인계동 1114-1번지','경기도','수원시','경기도 수원시 팔달구 인계로 154, (인계동)','16488');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (310,'맥도날드','수원인계DT점','경기도 수원시 팔달구 인계동 363-3번지','경기도','수원시','경기도 수원시 팔달구 권광로 261, (인계동)','16487');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (311,'버거킹','수원팔달점','경기도 수원시 팔달구 팔달로2가 128-2번지','경기도','수원시','경기도 수원시 팔달구 정조로777번길 2, (팔달로2가)','16261');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (312,'버거킹','수원팔달점','경기도 수원시 팔달구 팔달로2가 128-4번지','경기도','수원시','경기도 수원시 팔달구 정조로 781-1, (팔달로2가)','16261');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (313,'KFC','0','경기도 수원시 팔달구 팔달로3가 96번지','경기도','수원시','경기도 수원시 팔달구 정조로 771, (팔달로3가)','16261');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (314,'맘스터치','화서역점','경기도 수원시 팔달구 화서동 644-5번지','경기도','수원시','경기도 수원시 팔달구 덕영대로697번길 17, (화서동)','16435');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (315,'롯데리아','시흥거모점','경기도 시흥시 거모동 1754-5번지','경기도','시흥시','경기도 시흥시 도일로135번길 4, (거모동)','15070');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (316,'맘스터치','시흥거모점','경기도 시흥시 거모동 1761-16번지','경기도','시흥시','경기도 시흥시 군자로 519, (거모동)','15068');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (317,'롯데리아','목감신도시점','경기도 시흥시 목감동 396-20번지','경기도','시흥시','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (318,'롯데리아','시흥연성점','경기도 시흥시 장곡동 814-4번지','경기도','시흥시','경기도 시흥시 진말로19번길 16, (장곡동)','15002');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (319,'롯데리아','0','경기도 시흥시 정왕동 1366-4번지','경기도','시흥시','경기도 시흥시 마유로238번길 26, (정왕동)','15079');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (320,'맥도날드','시화이마트점','경기도 시흥시 정왕동 1734-2번지','경기도','시흥시','경기도 시흥시 정왕대로 210, (정왕동)','15066');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (321,'롯데리아','시흥정왕점','경기도 시흥시 정왕동 1734-5번지','경기도','시흥시','경기도 시흥시 정왕대로 220, (정왕동)','15066');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (322,'롯데리아','롯데마트시흥배곧점','경기도 시흥시 정왕동 1771-1번지','경기도','시흥시','경기도 시흥시 배곧1로 27-15, (정왕동)','15011');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (323,'롯데리아','시흥배곧점','경기도 시흥시 정왕동 1772-28번지','경기도','시흥시','경기도 시흥시 배곧4로 32-29, (정왕동)','15010');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (324,'롯데리아','오이도점','경기도 시흥시 정왕동 2006-17번지','경기도','시흥시','경기도 시흥시 오이도로 185, (정왕동)','15015');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (325,'맘스터치','경기과기대점','경기도 시흥시 정왕동 2121-3번지','경기도','시흥시','경기도 시흥시 경기과기대로 269, (정왕동)','15073');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (326,'롯데리아','시흥정왕역점','경기도 시흥시 정왕동 2327-2번지','경기도','시흥시','경기도 시흥시 마유로418번길 10, (정왕동)','15049');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (327,'롯데리아','시흥하중점','경기도 시흥시 하중동 817-2번지','경기도','시흥시','경기도 시흥시 하중로 113, (하중동)','14975');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (328,'롯데리아','시흥하중점','경기도 시흥시 하중동 861-4번지','경기도','시흥시','경기도 시흥시 하중로 213-1, (하중동)','14976');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (329,'파파이스','시흥연성점','경기도 시흥시 하중동 874-6번지','경기도','시흥시','경기도 시흥시 연성로 23, (하중동)','14976');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (330,'롯데리아','안산고잔점','경기도 안산시 단원구 고잔동 534-1번지','경기도','안산시','경기도 안산시 단원구 고잔1길 17, (고잔동)','15360');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (331,'맥도날드','안산점','경기도 안산시 단원구 고잔동 536번지','경기도','안산시','경기도 안산시 단원구 당곡로 12, (고잔동)','15360');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (332,'맥도날드','고잔DT점','경기도 안산시 단원구 고잔동 705-4번지','경기도','안산시','경기도 안산시 단원구 광덕3로 145-5, (고잔동)','15461');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (333,'맥도날드','0','경기도 안산시 단원구 고잔동 705-5번지','경기도','안산시','경기도 안산시 단원구 광덕3로 145-3, (고잔동)','15461');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (334,'롯데리아','아울렛안산5점','경기도 안산시 단원구 고잔동 725번지','경기도','안산시','경기도 안산시 단원구 광덕대로 198, (고잔동)','15462');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (335,'버거킹','안산고잔점','경기도 안산시 단원구 고잔동 771-3번지','경기도','안산시','경기도 안산시 단원구 광덕대로 154, (고잔동)','15470');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (336,'롯데리아','탄현점','경기도 안산시 단원구 고잔동 778번지','경기도','안산시','경기도 안산시 단원구 광덕2로 264, (고잔동)','15480');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (337,'맘스터치','선부점','경기도 안산시 단원구 선부동 1070-15번지','경기도','안산시','경기도 안산시 단원구 선부광장1로 30, (선부동)','15240');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (338,'버거킹','0','경기도 안산시 단원구 선부동 1076-16번지','경기도','안산시','경기도 안산시 단원구 선부광장로 33, (선부동)','15239');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (339,'롯데리아','안산선부점','경기도 안산시 단원구 선부동 1085번지','경기도','안산시','경기도 안산시 단원구 달미로 63, (선부동)','15234');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (340,'롯데리아','와동지점','경기도 안산시 단원구 와동 716-9번지','경기도','안산시','경기도 안산시 단원구 와동로 43, (와동)','15254');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (341,'롯데리아','안산초지점','경기도 안산시 단원구 초지동 729번지','경기도','안산시','경기도 안산시 단원구 광덕1로 55, (초지동)','15445');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (342,'맘스터치','반월점','경기도 안산시 상록구 건건동 535-1번지','경기도','안산시','경기도 안산시 상록구 건건로 123, (건건동)','15521');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (343,'롯데리아','안산반월점','경기도 안산시 상록구 건건동 922-4번지','경기도','안산시','경기도 안산시 상록구 건건2길 6, (건건동)','15521');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (344,'롯데리아','본오점','경기도 안산시 상록구 본오동 872-18번지','경기도','안산시','경기도 안산시 상록구 샘골로 150, (본오동)','15538');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (345,'KFC','0','경기도 안산시 상록구 본오동 872-2번지','경기도','안산시','경기도 안산시 상록구 샘골로 190, (본오동)','15538');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (346,'버거킹','안산상록수역점','경기도 안산시 상록구 본오동 873-5번지','경기도','안산시','경기도 안산시 상록구 용신로 394, (본오동)','15537');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (347,'맥도날드','0','경기도 안산시 상록구 본오동 873-7번지','경기도','안산시','경기도 안산시 상록구 본삼로 51, (본오동)','15537');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (348,'롯데리아','상록수점','경기도 안산시 상록구 본오동 874-2번지','경기도','안산시','경기도 안산시 상록구 상록수로 40, (본오동)','15532');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (349,'롯데리아','상록수점','경기도 안산시 상록구 본오동 874-3번지','경기도','안산시','경기도 안산시 상록구 상록수로 44, (본오동)','15532');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (350,'롯데리아','안산부곡점','경기도 안산시 상록구 부곡동 538-5번지','경기도','안산시','경기도 안산시 상록구 부곡로 118, (부곡동)','15305');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (351,'맥도날드','안산홈플러스점','경기도 안산시 상록구 성포동 586번지','경기도','안산시','경기도 안산시 상록구 충장로 432, (성포동)','15294');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (352,'롯데리아','롯데마트안산점','경기도 안산시 상록구 성포동 590번지','경기도','안산시','경기도 안산시 상록구 충장로 427, (성포동)','15299');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (353,'파파이스','안산롯데점','경기도 안산시 상록구 성포동 590번지','경기도','안산시','경기도 안산시 상록구 충장로 427, (성포동)','15299');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (354,'롯데리아','안산드라이브점','경기도 안산시 상록구 월피동 445-30번지','경기도','안산시','경기도 안산시 상록구 예술광장1로 68, (월피동)','15288');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (355,'롯데리아','아산한양대역점','경기도 안산시 상록구 이동 715-2번지','경기도','안산시','경기도 안산시 상록구 광덕1로 379, (이동)','15494');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (535,'KFC','0','경기도 평택시 평택동 65-7번지','경기도','평택시','경기도 평택시 평택1로 13, (평택동)','17911');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (536,'KFC','0','경기도 포천시 내촌면 소학리 295번지','경기도','포천시','경기도 포천시 내촌면 금강로2536번길 27','11188');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (537,'맘스터치','0','경기도 포천시 내촌면 음현리 765번지','경기도','포천시','경기도 포천시 내촌면 내촌로 32','11192');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (538,'맥도날드','포천점','경기도 포천시 설운동 13-7번지','경기도','포천시','경기도 포천시 호국로 894, (설운동)','11162');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (539,'롯데리아','포천송우점','경기도 포천시 소흘읍 송우리 159-3번지','경기도','포천시','경기도 포천시 소흘읍 송우로 53','11178');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (540,'롯데리아','홈플러스송우점','경기도 포천시 소흘읍 송우리 730-60번지','경기도','포천시','경기도 포천시 소흘읍 솔모루로 9','11180');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (541,'롯데리아','운천점','경기도 포천시 영북면 운천리 510-3번지','경기도','포천시','경기도 포천시 영북면 운천안길 32','11106');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (542,'롯데리아','일동점','경기도 포천시 일동면 기산리 91-117번지','경기도','포천시','경기도 포천시 일동면 화동로1051번길 4-7','11116');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (543,'롯데리아','하남덕풍점','경기도 하남시 덕풍동 372-19번지','경기도','하남시','경기도 하남시 신장로 147, (덕풍동)','12976');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (544,'버거킹','하남이마트점','경기도 하남시 덕풍동 736번지','경기도','하남시','경기도 하남시 덕풍서로 70, (덕풍동)','12927');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (545,'맘스터치','하남신장점','경기도 하남시 신장동 427-73번지','경기도','하남시','경기도 하남시 신장로 119-2, (신장동)','12965');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (546,'맥도날드','하남시청점','경기도 하남시 신장동 522-5번지','경기도','하남시','경기도 하남시 대청로 25, (신장동)','12947');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (547,'롯데리아','하남신장점','경기도 하남시 신장동 524-1번지','경기도','하남시','경기도 하남시 대청로 26, (신장동)','12951');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (548,'롯데리아','0','경기도 하남시 신장동 524번지','경기도','하남시','경기도 하남시 대청로 26, (신장동)','12951');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (549,'KFC','0','경기도 하남시 신장동 570번지','경기도','하남시','경기도 하남시 하남대로 747, (신장동)','12961');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (550,'맥도날드','화성봉담DT점','경기도 화성시 기안동 357-5번지','경기도','화성시','경기도 화성시 효행로 269, (기안동)','18337');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (551,'롯데리아','남양점','경기도 화성시 남양읍 남양리 1268번지','경기도','화성시','경기도 화성시 남양읍 남양성지로 147','18261');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (552,'맥도날드','0','경기도 화성시 능동 1051-1번지','경기도','화성시','경기도 화성시 효행로 1260, (능동)','18423');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (553,'파파이스','동탄능동점','경기도 화성시 능동 1065-3번지','경기도','화성시','경기도 화성시 동탄원천로 360, (능동)','18423');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (554,'맘스터치','능동점','경기도 화성시 능동 1113-3번지','경기도','화성시','경기도 화성시 동탄지성로 142, (능동)','18433');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (555,'롯데리아','서동탄역점','경기도 화성시 능동 1154-8번지','경기도','화성시','경기도 화성시 남여울2길 4, (능동)','18428');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (556,'버거킹','화성능동FS점','경기도 화성시 능동 460-2번지','경기도','화성시','경기도 화성시 동탄지성로 190, (능동)','18421');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (557,'롯데리아','화성동탄점','경기도 화성시 반송동 107-7번지','경기도','화성시','경기도 화성시 동탄문화센터로 61, (반송동)','18455');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (558,'맥도날드','동탄나루점','경기도 화성시 반송동 218-1번지','경기도','화성시','경기도 화성시 동탄솔빛로 68, (반송동)','18442');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (559,'맘스터치','동탄나루마을점','경기도 화성시 반송동 220-1번지','경기도','화성시','경기도 화성시 동탄솔빛로 61, (반송동)','18443');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (560,'롯데리아','화성동탄점','경기도 화성시 반송동 220-5번지','경기도','화성시','경기도 화성시 동탄솔빛로 51, (반송동)','18443');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (561,'버거킹','동탄점','경기도 화성시 반송동 93-9번지','경기도','화성시','경기도 화성시 동탄반석로 156, (반송동)','18454');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (562,'롯데리아','0','경기도 화성시 반송동 96번지','경기도','화성시','경기도 화성시 동탄중앙로 220, (반송동)','18445');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (563,'롯데리아','화성반월점','경기도 화성시 반월동 138-1번지','경기도','화성시','경기도 화성시 영통로27번길 1, (반월동)','18384');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (564,'맘스터치','0','경기도 화성시 병점동 314-3번지','경기도','화성시','경기도 화성시 병점2로 44, (병점동)','18414');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (565,'맥도날드','병점DT점','경기도 화성시 병점동 372-1번지','경기도','화성시','경기도 화성시 경기대로 1004, (병점동)','18411');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (566,'롯데리아','홈플러스병점점','경기도 화성시 병점동 399-4번지','경기도','화성시','경기도 화성시 경기대로 985, (병점동)','18412');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (567,'파파이스','봉담이마트','경기도 화성시 봉담읍 동화리 133-1번지','경기도','화성시','경기도 화성시 봉담읍 효행로 278','18298');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (568,'롯데리아','화성봉담점','경기도 화성시 봉담읍 동화리 99-2번지','경기도','화성시','경기도 화성시 봉담읍 효행로 246-36','18298');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (569,'파파이스','수원대점','경기도 화성시 봉담읍 와우리 41-1번지','경기도','화성시','경기도 화성시 봉담읍 와우로 110','18322');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (570,'롯데리아','0','경기도 화성시 서신면 전곡리 1076번지','경기도','화성시','경기도 화성시 서신면 전곡항로 5','18554');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (571,'롯데리아','송산포도휴게소평택방면','경기도 화성시 송산면 고정리 349-26번지','경기도','화성시','경기도 화성시 송산면 평택시흥고속도로 25','18248');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (572,'롯데리아','화성사강D/T점','경기도 화성시 송산면 사강리 736-8번지','경기도','화성시','경기도 화성시 송산면 사강로 144','18550');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (573,'롯데리아','화성화산DT점','경기도 화성시 안녕동 37-89번지','경기도','화성시','경기도 화성시 효행로 759, (안녕동)','18362');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (574,'롯데리아','동탄커뮤니티점','경기도 화성시 영천동 678-7번지','경기도','화성시','경기도 화성시 동탄순환대로 685, (영천동)','18472');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (575,'롯데리아','화성조암점','경기도 화성시 우정읍 조암리 350-21번지','경기도','화성시','경기도 화성시 우정읍 조암남로 24','18567');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (576,'롯데리아','화성태안점','경기도 화성시 진안동 876-4번지','경기도','화성시','경기도 화성시 병점1로 221, (진안동)','18404');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (577,'맘스터치','병점중앙점','경기도 화성시 진안동 914-2번지','경기도','화성시','경기도 화성시 효행로 1059, (진안동)','18398');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (578,'맥도날드','화성향남DT점','경기도 화성시 향남읍 방축리 297-75번지','경기도','화성시','경기도 화성시 향남읍 행정남로 120','18608');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (579,'롯데리아','향남2신도시점','경기도 화성시 향남읍 하길리 1467-2번지','경기도','화성시','경기도 화성시 향남읍 발안양감로 211','18606');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (580,'롯데리아','거제고현점','경상남도 거제시 고현동 100-12번지','경상남도','거제시','경상남도 거제시 고현로 97, (고현동)','53253');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (356,'맘스터치','안산한대역점','경기도 안산시 상록구 이동 716-10번지','경기도','안산시','경기도 안산시 상록구 광덕1로 380, (이동)','15495');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (357,'롯데리아','안성공도점','경기도 안성시 공도읍 만정리 274-3번지','경기도','안성시','경기도 안성시 공도읍 공도로 132','17559');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (358,'롯데리아','0','경기도 안성시 공도읍 양기리 306번지','경기도','안성시','경기도 안성시 공도읍 서동대로 4478','17558');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (359,'롯데리아','안성공도DT점','경기도 안성시 공도읍 진사리 22-11번지','경기도','안성시','경기도 안성시 공도읍 서동대로 3904-6','17564');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (360,'롯데리아','안성중앙점','경기도 안성시 대천동 56번지','경기도','안성시','경기도 안성시 중앙로 397, (대천동)','17589');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (361,'맥도날드','안성점','경기도 안성시 대천동 64번지','경기도','안성시','경기도 안성시 중앙로389번길 6, (대천동)','17589');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (362,'롯데리아','0','경기도 안성시 서운면 신능리 51-16번지','경기도','안성시','경기도 안성시 서운면 평택제천고속도로 41','17606');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (363,'롯데리아','0','경기도 안성시 원곡면 산하리 67-3번지','경기도','안성시','경기도 안성시 원곡면 경부고속도로 372','17553');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (364,'롯데리아','평촌스마트스퀘어점','경기도 안양시 동안구 관양동 1019-5번지','경기도','안양시','경기도 안양시 동안구 시민대로327번길 6, (관양동)','14055');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (365,'롯데리아','안양관양점','경기도 안양시 동안구 관양동 1384-25번지','경기도','안양시','경기도 안양시 동안구 관악대로 291, (관양동)','13940');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (366,'롯데리아','평촌주공공이점','경기도 안양시 동안구 관양동 1606번지','경기도','안양시','경기도 안양시 동안구 관평로170번길 33, (관양동)','14066');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (367,'버거킹','0','경기도 안양시 동안구 관양동 1746-4번지','경기도','안양시','경기도 안양시 동안구 시민대로 325, (관양동)','14055');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (368,'롯데리아','홈플러스평촌점','경기도 안양시 동안구 비산동 1109-3번지','경기도','안양시','경기도 안양시 동안구 동안로 162, (비산동)','14046');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (369,'롯데리아','안양비산점','경기도 안양시 동안구 비산동 459-52번지','경기도','안양시','경기도 안양시 동안구 관악대로 131, (비산동)','13922');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (370,'맥도날드','안양비산SKDT점','경기도 안양시 동안구 비산동 576-13번지','경기도','안양시','경기도 안양시 동안구 경수대로 839, (비산동)','14039');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (371,'롯데리아','평촌주공공이점','경기도 안양시 동안구 평촌동 895번지','경기도','안양시','경기도 안양시 동안구 관평로 149, (평촌동)','14067');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (372,'버거킹','평촌학원가점','경기도 안양시 동안구 평촌동 922-8번지','경기도','안양시','경기도 안양시 동안구 평촌대로 112, (평촌동)','14103');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (373,'버거킹','0','경기도 안양시 동안구 호계동 1040번지','경기도','안양시','경기도 안양시 동안구 시민대로 182, (호계동)','14072');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (374,'맘스터치','0','경기도 안양시 동안구 호계동 1046-1번지','경기도','안양시','경기도 안양시 동안구 평촌대로223번길 65, (호계동)','14072');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (375,'롯데리아','평촌귀인점','경기도 안양시 동안구 호계동 1058-1번지','경기도','안양시','경기도 안양시 동안구 평촌대로 139, (호계동)','14099');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (376,'롯데리아','안양호계점','경기도 안양시 동안구 호계동 995-1번지','경기도','안양시','경기도 안양시 동안구 경수대로 566, (호계동)','14112');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (377,'롯데리아','안양석수DT점','경기도 안양시 만안구 석수동 385-11번지','경기도','안양시','경기도 안양시 만안구 경수대로 1401, (석수동)','13906');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (378,'롯데리아','만안구청점','경기도 안양시 만안구 안양동 532-1번지','경기도','안양시','경기도 안양시 만안구 문예로 48, (안양동)','14035');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (379,'KFC','0','경기도 안양시 만안구 안양동 674-140번지','경기도','안양시','경기도 안양시 만안구 안양로292번길 7, (안양동)','13992');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (380,'맥도날드','안양점','경기도 안양시 만안구 안양동 674-208번지','경기도','안양시','경기도 안양시 만안구 안양로292번길 22, (안양동)','13992');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (381,'KFC','0','경기도 안양시 만안구 안양동 88-1번지','경기도','안양시','경기도 안양시 만안구 만안로 230, (안양동)','13992');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (382,'롯데리아','안양역사','경기도 안양시 만안구 안양동 88-1번지','경기도','안양시','경기도 안양시 만안구 만안로 230, (안양동)','13992');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (383,'맘스터치','0','경기도 양주시 광사동 653번지','경기도','양주시','경기도 양주시 고읍남로 20-5, (광사동)','11492');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (384,'롯데리아','양주광적점','경기도 양주시 광적면 가납리 873번지','경기도','양주시','경기도 양주시 광적면 삼일로 11','11419');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (385,'맘스터치','양주덕계점','경기도 양주시 덕계동 424-40번지','경기도','양주시','경기도 양주시 평화로 1440, (덕계동)','11444');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (386,'롯데리아','양주덕정점','경기도 양주시 덕정동 208-8번지','경기도','양주시','경기도 양주시 고암길 306-77, (덕정동)','11456');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (387,'롯데리아','양주옥정점','경기도 양주시 옥정동 963-15번지','경기도','양주시','경기도 양주시 회천남로 88, (옥정동)','11473');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (388,'맘스터치','송추점','경기도 양주시 장흥면 부곡리 540-10번지','경기도','양주시','경기도 양주시 장흥면 호국로 559-1','11521');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (389,'맥도날드','0','경기도 양주시 장흥면 삼하리 250-16번지','경기도','양주시','경기도 양주시 장흥면 서울외곽순환고속도로 58','11525');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (390,'롯데리아','양주브이플러스점','경기도 양주시 회정동 453-19번지','경기도','양주시','경기도 양주시 평화로 1593, (회정동)','11439');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (391,'롯데리아','양평점','경기도 양평군 양평읍 양근리 409-7번지','경기도','양평군','경기도 양평군 양평읍 양평시장길18번길 1','12556');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (392,'버거킹','경기양평점','경기도 양평군 양평읍 양근리 409-7번지','경기도','양평군','경기도 양평군 양평읍 양평시장길18번길 1','12556');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (393,'롯데리아','0','경기도 양평군 양평읍 양근리 446-7번지','경기도','양평군','경기도 양평군 양평읍 역전길 3','12553');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (394,'롯데리아','양평용문점','경기도 양평군 용문면 다문리 327-2번지','경기도','양평군','경기도 양평군 용문면 용문로 372','12523');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (395,'롯데리아','0','경기도 양평군 용문면 다문리 739-12번지','경기도','양평군','경기도 양평군 용문면 용문로 348-1','12520');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (396,'롯데리아','여주휴게소인천방면','경기도 여주시 가남읍 본두리 677번지','경기도','여주시','경기도 여주시 가남읍 여주남로 722','12656');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (397,'버거킹','여주휴게소강릉방면','경기도 여주시 가남읍 본두리 687-2번지','경기도','여주시','경기도 여주시 가남읍 여주남로 722','12656');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (398,'롯데리아','여주가남점','경기도 여주시 가남읍 태평리 110-7번지','경기도','여주시','경기도 여주시 가남읍 태평중앙1길 2','12662');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (399,'롯데리아','여주375아울렛점','경기도 여주시 상거동 375-12번지','경기도','여주시','경기도 여주시 명품1로 22-5, (상거동)','12646');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (400,'맘스터치','여주점','경기도 여주시 상동 285-3번지','경기도','여주시','경기도 여주시 여흥로 146, (상동)','12628');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (401,'롯데리아','여주점','경기도 여주시 홍문동 82-2번지','경기도','여주시','경기도 여주시 세종로 21, (홍문동)','12621');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (402,'롯데리아','전곡점','경기도 연천군 전곡읍 전곡리 474-2번지','경기도','연천군','경기도 연천군 전곡읍 온골로 49','11028');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (403,'버거킹','오산궐동점','경기도 오산시 궐동 631-1번지','경기도','오산시','경기도 오산시 궐리사로 61, (궐동)','18120');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (404,'버거킹','오산궐동점','경기도 오산시 궐동 647-3번지','경기도','오산시','경기도 오산시 궐동로 61, (궐동)','18120');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (405,'맥도날드','오산세교DT점','경기도 오산시 내삼미동 466-1번지','경기도','오산시','경기도 오산시 경기대로 651, (내삼미동)','18112');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (406,'롯데리아','0','경기도 오산시 세교동 173-3번지','경기도','오산시','경기도 오산시 경기대로 859, (세교동)','18111');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (407,'롯데리아','홈플러스오산세교점','경기도 오산시 수청동 610번지','경기도','오산시','경기도 오산시 청학로 238, (수청동)','18118');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (408,'파파이스','오산대역점','경기도 오산시 수청동 619-3번지','경기도','오산시','경기도 오산시 내삼미로79번길 52, (수청동)','18114');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (409,'롯데리아','롯데마트오산점','경기도 오산시 오산동 868번지','경기도','오산시','경기도 오산시 경기대로 271, (오산동)','18135');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (410,'맥도날드','오산DT점','경기도 오산시 원동 372-1번지','경기도','오산시','경기도 오산시 경기대로 174, (원동)','18144');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (411,'맥도날드','오산DT점','경기도 오산시 원동 372-5번지','경기도','오산시','경기도 오산시 경기대로 170, (원동)','18144');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (412,'버거킹','오산원동점','경기도 오산시 원동 766-6번지','경기도','오산시','경기도 오산시 경기대로 238, (원동)','18140');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (413,'롯데리아','원동점','경기도 오산시 원동 776-9번지','경기도','오산시','경기도 오산시 원동로37번길 37, (원동)','18141');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (414,'롯데리아','기흥휴게소점','경기도 용인시 기흥구 공세동 260-1번지','경기도','용인시','경기도 용인시 기흥구 공세로 173, (공세동)','17100');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (415,'맥도날드','강남대점','경기도 용인시 기흥구 구갈동 579-1번지','경기도','용인시','경기도 용인시 기흥구 강남로 13, (구갈동)','16977');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (416,'맘스터치','0','경기도 용인시 기흥구 구갈동 581-1번지','경기도','용인시','경기도 용인시 기흥구 강남로 3, (구갈동)','16977');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (417,'맥도날드','0','경기도 용인시 기흥구 마북동 552-4번지','경기도','용인시','경기도 용인시 기흥구 용구대로 2420, (마북동)','16908');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (418,'맥도날드','용인마북점','경기도 용인시 기흥구 마북동 552-4번지','경기도','용인시','경기도 용인시 기흥구 용구대로 2420, (마북동)','16908');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (419,'맘스터치','0','경기도 용인시 기흥구 보라동 553번지','경기도','용인시','경기도 용인시 기흥구 사은로126번길 10, (보라동)','17079');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (420,'롯데리아','0','경기도 용인시 기흥구 보라동 579-1번지','경기도','용인시','경기도 용인시 기흥구 한보라2로 5, (보라동)','17079');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (421,'KFC','0','경기도 용인시 기흥구 보정동 1265-3번지','경기도','용인시','경기도 용인시 기흥구 죽전로 52, (보정동)','16898');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (422,'맥도날드','0','경기도 용인시 기흥구 상하동 455-3번지','경기도','용인시','경기도 용인시 기흥구 어정로 106, (상하동)','16994');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (423,'맥도날드','용인동백DT점','경기도 용인시 기흥구 상하동 455-3번지','경기도','용인시','경기도 용인시 기흥구 어정로 106, (상하동)','16994');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (424,'롯데리아','신갈점','경기도 용인시 기흥구 신갈동 60-16번지','경기도','용인시','경기도 용인시 기흥구 신갈로 60, (신갈동)','16969');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (425,'버거킹','용인신갈점','경기도 용인시 기흥구 신갈동 63번지','경기도','용인시','경기도 용인시 기흥구 중부대로 375, (신갈동)','17064');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (426,'맥도날드','용인신갈DT점','경기도 용인시 기흥구 영덕동 40-2번지','경기도','용인시','경기도 용인시 기흥구 중부대로 266, (영덕동)','17095');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (427,'버거킹','용인동백점','경기도 용인시 기흥구 중동 831-3번지','경기도','용인시','경기도 용인시 기흥구 동백5로 23, (중동)','17006');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (428,'버거킹','수지GS점','경기도 용인시 수지구 동천동 236번지','경기도','용인시','경기도 용인시 수지구 신수로 781, (동천동)','16826');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (429,'롯데리아','용인동천점','경기도 용인시 수지구 동천동 875-4번지','경기도','용인시','경기도 용인시 수지구 수풍로131번길 1, (동천동)','16828');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (430,'롯데리아','광교드라이브점','경기도 용인시 수지구 상현동 17-1번지','경기도','용인시','경기도 용인시 수지구 이현로 115, (상현동)','16928');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (431,'롯데리아','용인상현점','경기도 용인시 수지구 상현동 254-9번지','경기도','용인시','경기도 용인시 수지구 상현로 114, (상현동)','16930');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (432,'KFC','0','경기도 용인시 수지구 상현동 255번지','경기도','용인시','경기도 용인시 수지구 만현로 102, (상현동)','16930');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (433,'맘스터치','수지상현점','경기도 용인시 수지구 상현동 257-22번지','경기도','용인시','경기도 용인시 수지구 만현로 100, (상현동)','16930');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (434,'맥도날드','단국대점','경기도 용인시 수지구 죽전동 1319-10번지','경기도','용인시','경기도 용인시 수지구 죽전로144번길 19, (죽전동)','16889');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (435,'맥도날드','단국대점','경기도 용인시 수지구 죽전동 1342-3번지','경기도','용인시','경기도 용인시 수지구 죽전로 162, (죽전동)','16889');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (436,'버거킹','죽전SK점','경기도 용인시 수지구 죽전동 889번지','경기도','용인시','경기도 용인시 수지구 용구대로 2751, (죽전동)','16869');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (437,'맥도날드','용인수지점','경기도 용인시 수지구 풍덕천동 1078번지','경기도','용인시','경기도 용인시 수지구 풍덕천로 119, (풍덕천동)','16836');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (438,'맥도날드','용인수지점','경기도 용인시 수지구 풍덕천동 1078번지','경기도','용인시','경기도 용인시 수지구 풍덕천로 119, (풍덕천동)','16836');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (439,'맘스터치','수지구청역점','경기도 용인시 수지구 풍덕천동 1080-13번지','경기도','용인시','경기도 용인시 수지구 수지로296번길 51-9, (풍덕천동)','16841');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (440,'맥도날드','용인수지DT점','경기도 용인시 수지구 풍덕천동 43-5번지','경기도','용인시','경기도 용인시 수지구 신수로 677, (풍덕천동)','16831');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (441,'롯데리아','수원삼성전자점','경기도 용인시 수지구 풍덕천동 663-1번지','경기도','용인시','경기도 용인시 수지구 수풍로 64, (풍덕천동)','16830');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (442,'롯데리아','수지풍덕천점','경기도 용인시 수지구 풍덕천동 713-5번지','경기도','용인시','경기도 용인시 수지구 풍덕천로 133, (풍덕천동)','16837');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (443,'맥도날드','0','경기도 용인시 처인구 고림동 12-6번지','경기도','용인시','경기도 용인시 처인구 주북로94번길 30-1, (고림동)','17149');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (444,'롯데리아','0','경기도 용인시 처인구 고림동 88-1번지','경기도','용인시','경기도 용인시 처인구 주북로 66-14, (고림동)','17039');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (445,'맘스터치','0','경기도 용인시 처인구 김량장동 226-7번지','경기도','용인시','경기도 용인시 처인구 금학로 355, (김량장동)','17044');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (446,'롯데리아','0','경기도 용인시 처인구 김량장동 23-1번지','경기도','용인시','경기도 용인시 처인구 중부대로 1486, (김량장동)','17063');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (447,'롯데리아','0','경기도 용인시 처인구 김량장동 95-1번지','경기도','용인시','경기도 용인시 처인구 금령로 106, (김량장동)','17051');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (448,'맘스터치','용인송담대점','경기도 용인시 처인구 마평동 571-2번지','경기도','용인시','경기도 용인시 처인구 동부로 61, (마평동)','17145');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (449,'롯데리아','용인모현점','경기도 용인시 처인구 모현면 왕산리 801-14번지','경기도','용인시','경기도 용인시 처인구 모현면 백옥대로 2387','17035');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (450,'롯데리아','천리점','경기도 용인시 처인구 모현면 왕산리 847-1번지','경기도','용인시','경기도 용인시 처인구 모현면 백옥대로 2319','17035');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (451,'롯데리아','용인백암점','경기도 용인시 처인구 백암면 백암리 493번지','경기도','용인시','경기도 용인시 처인구 백암면 백암로186번길 3','17178');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (452,'롯데리아','용인시청DT점','경기도 용인시 처인구 삼가동 198-15번지','경기도','용인시','경기도 용인시 처인구 중부대로 1137, (삼가동)','17017');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (453,'맥도날드','0','경기도 용인시 처인구 삼가동 250-34번지','경기도','용인시','경기도 용인시 처인구 중부대로 1166, (삼가동)','17091');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (454,'롯데리아','용인역북점','경기도 용인시 처인구 역북동 436번지','경기도','용인시','경기도 용인시 처인구 중부대로1313번길 2, (역북동)','17047');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (455,'KFC','0','경기도 용인시 처인구 역북동 446-12번지','경기도','용인시','경기도 용인시 처인구 중부대로 1339, (역북동)','17048');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (456,'롯데리아','용인천리점','경기도 용인시 처인구 이동면 천리 235-1번지','경기도','용인시','경기도 용인시 처인구 이동면 백옥대로 641','17128');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (457,'롯데리아','의왕부곡점','경기도 의왕시 삼동 192-42번지','경기도','의왕시','경기도 의왕시 부곡중앙남1길 3, (삼동)','16088');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (458,'롯데리아','0','경기도 의왕시 오전동 101-9번지','경기도','의왕시','경기도 의왕시 모락로 26, (오전동)','16050');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (459,'맥도날드','의왕오전DT점','경기도 의왕시 오전동 207-1번지','경기도','의왕시','경기도 의왕시 경수대로 351, (오전동)','16071');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (460,'파파이스','의왕레일파크점','경기도 의왕시 월암동 543-3번지','경기도','의왕시','경기도 의왕시 왕송못동로 307, (월암동)','16107');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (461,'KFC','0','경기도 의왕시 포일동 656번지','경기도','의왕시','경기도 의왕시 이미로 16, (포일동)','16006');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (462,'롯데리아','포일IT점','경기도 의왕시 포일동 660번지','경기도','의왕시','경기도 의왕시 포일세거리로 10, (포일동)','16001');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (463,'버거킹','의정부HP점','경기도 의정부시 금오동 475-1번지','경기도','의정부시','경기도 의정부시 청사로 38, (금오동)','11757');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (464,'맥도날드','0','경기도 의정부시 금오동 99-6번지','경기도','의정부시','경기도 의정부시 호국로 1604, (금오동)','11755');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (465,'롯데리아','낙양점','경기도 의정부시 낙양동 743-3번지','경기도','의정부시','경기도 의정부시 용민로 407, (낙양동)','11815');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (466,'롯데리아','녹양역점','경기도 의정부시 녹양동 412-6번지','경기도','의정부시','경기도 의정부시 체육로 298-33, (녹양동)','11610');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (467,'롯데리아','의정부민락점','경기도 의정부시 민락동 805-3번지','경기도','의정부시','경기도 의정부시 천보로 56, (민락동)','11813');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (468,'롯데리아','의정부휴게소구리방면','경기도 의정부시 산곡동 304-2번지','경기도','의정부시','경기도 의정부시 구리포천고속도로 19, (산곡동)','11800');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (469,'롯데리아','의정부신곡점','경기도 의정부시 신곡동 334-2번지','경기도','의정부시','경기도 의정부시 동일로 460, (신곡동)','11738');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (470,'롯데리아','용현점','경기도 의정부시 용현동 554-7번지','경기도','의정부시','경기도 의정부시 충의로 62, (용현동)','11788');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (471,'맥도날드','의정부만가대DT점','경기도 의정부시 용현동 60-1번지','경기도','의정부시','경기도 의정부시 민락로 11, (용현동)','11792');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (472,'롯데리아','회룡역점','경기도 의정부시 호원동 425번지','경기도','의정부시','경기도 의정부시 평화로 374, (호원동)','11704');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (473,'맥도날드','의정부LG맥드라이브점','경기도 의정부시 호원동 435번지','경기도','의정부시','경기도 의정부시 평화로 315, (호원동)','11705');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (474,'롯데리아','호원점','경기도 의정부시 호원동 453번지','경기도','의정부시','경기도 의정부시 평화로 238, (호원동)','11710');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (475,'롯데리아','0','경기도 이천시 관고동 485번지','경기도','이천시','경기도 이천시 경충대로2697번길 306, (관고동)','17379');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (476,'맥도날드','마장휴게소통영방면','경기도 이천시 마장면 목리 13-32번지','경기도','이천시','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (477,'버거킹','지산리조트점','경기도 이천시 마장면 해월리 358번지','경기도','이천시','경기도 이천시 마장면 지산로 267','17390');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (478,'롯데리아','0','경기도 이천시 부발읍 아미리 725-8번지','경기도','이천시','경기도 이천시 부발읍 경충대로 2096-4','17332');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (479,'버거킹','0','경기도 이천시 중리동 201-1번지','경기도','이천시','경기도 이천시 중리천로 58, (중리동)','17374');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (480,'KFC','0','경기도 이천시 중리동 218-5번지','경기도','이천시','경기도 이천시 중리천로 84, (중리동)','17374');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (481,'맥도날드','0','경기도 이천시 중리동 461-3번지','경기도','이천시','경기도 이천시 경충대로 2578, (중리동)','17377');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (482,'롯데리아','증포점','경기도 이천시 증포동 210-5번지','경기도','이천시','경기도 이천시 이섭대천로 1399, (증포동)','17347');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (483,'맥도날드','이천이마트점','경기도 이천시 증포동 47-4번지','경기도','이천시','경기도 이천시 이섭대천로 1440-50, (증포동)','17348');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (484,'롯데리아','중앙점','경기도 이천시 창전동 159-2번지','경기도','이천시','경기도 이천시 서희로60번길 4, (창전동)','17369');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (485,'롯데리아','프리미엄이천점','경기도 이천시 호법면 단천리 864번지','경기도','이천시','경기도 이천시 호법면 프리미엄아울렛로 177-74','17384');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (486,'버거킹','금촌역점','경기도 파주시 금촌동 329-158번지','경기도','파주시','경기도 파주시 중앙로 328, (금촌동)','10930');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (487,'맘스터치','금촌역점','경기도 파주시 금촌동 329-19번지','경기도','파주시','경기도 파주시 새꽃로 194, (금촌동)','10930');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (488,'파파이스','금촌점','경기도 파주시 금촌동 59-10번지','경기도','파주시','경기도 파주시 문화로 109, (금촌동)','10929');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (489,'롯데리아','금촌점','경기도 파주시 금촌동 60-1번지','경기도','파주시','경기도 파주시 문화로 105, (금촌동)','10929');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (490,'맘스터치','0','경기도 파주시 금촌동 989-4번지','경기도','파주시','경기도 파주시 금빛로 24-18, (금촌동)','10915');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (491,'파파이스','0','경기도 파주시 당하동 195-5번지','경기도','파주시','경기도 파주시 당하길 10, (당하동)','10866');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (492,'맘스터치','교하점','경기도 파주시 동패동 1694-1번지','경기도','파주시','경기도 파주시 청석로 260, (동패동)','10874');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (493,'롯데리아','운정한빛점','경기도 파주시 동패동 1759-2번지','경기도','파주시','경기도 파주시 와석순환로 125, (동패동)','10905');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (494,'롯데리아','운정한빛점','경기도 파주시 동패동 2-2번지','경기도','파주시','경기도 파주시 미래로310번길 135, (동패동)','10904');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (495,'맘스터치','운정산내마을점','경기도 파주시 목동동 939-2번지','경기도','파주시','경기도 파주시 청암로17번길 53, (목동동)','10892');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (496,'롯데리아','파주교하점','경기도 파주시 문발동 469번지','경기도','파주시','경기도 파주시 산업단지길 179, (문발동)','10878');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (497,'롯데리아','자유로휴게소점','경기도 파주시 문발동 495-122번지','경기도','파주시','경기도 파주시 자유로 2210, (문발동)','10881');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (498,'롯데리아','파주아울렛점','경기도 파주시 문발동 640번지','경기도','파주시','경기도 파주시 문발로 302, (문발동)','10881');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (499,'롯데리아','파주점','경기도 파주시 문발동 645번지','경기도','파주시','경기도 파주시 회동길 390, (문발동)','10881');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (500,'파파이스','파주문산점','경기도 파주시 문산읍 당동리 880번지','경기도','파주시','경기도 파주시 문산읍 방촌로 1759','10816');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (501,'롯데리아','당동점','경기도 파주시 문산읍 당동리 891번지','경기도','파주시','경기도 파주시 문산읍 방촌로 1719-57','10816');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (502,'맘스터치','야당역점','경기도 파주시 야당동 1070번지','경기도','파주시','경기도 파주시 경의로 1080, (야당동)','10908');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (503,'파파이스','파주운정점','경기도 파주시 와동동 1598번지','경기도','파주시','경기도 파주시 가람로21번길 7-5, (와동동)','10870');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (504,'파파이스','0','경기도 파주시 와동동 1599번지','경기도','파주시','경기도 파주시 가람로21번길 7-15, (와동동)','10870');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (505,'롯데리아','파주LCD점','경기도 파주시 월롱면 덕은리 1251번지','경기도','파주시','경기도 파주시 월롱면 엘씨디로 231','10845');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (506,'맘스터치','엘지디스플레이점','경기도 파주시 월롱면 덕은리 1253번지','경기도','파주시','경기도 파주시 월롱면 엘씨디로 201','10845');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (507,'롯데리아','파주적성점','경기도 파주시 적성면 마지리 62-9번지','경기도','파주시','경기도 파주시 적성면 청송로 1024','10803');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (508,'롯데리아','봉일천점','경기도 파주시 조리읍 봉일천리 160-36번지','경기도','파주시','경기도 파주시 조리읍 봉천로 40','10937');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (509,'롯데리아','0','경기도 평택시 비전동 1012-2번지','경기도','평택시','경기도 평택시 평남로 941, (비전동)','17852');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (510,'맘스터치','0','경기도 평택시 비전동 1012-2번지','경기도','평택시','경기도 평택시 평남로 941, (비전동)','17852');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (511,'롯데리아','0','경기도 평택시 비전동 1012-3번지','경기도','평택시','경기도 평택시 평남로 937, (비전동)','17852');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (512,'롯데리아','평택비전점','경기도 평택시 비전동 1012번지','경기도','평택시','경기도 평택시 만세로 1843, (비전동)','17852');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (513,'버거킹','평택비전점','경기도 평택시 비전동 1066번지','경기도','평택시','경기도 평택시 비전2로 195, (비전동)','17855');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (514,'버거킹','평택비전점','경기도 평택시 비전동 1067번지','경기도','평택시','경기도 평택시 평남로 874-1, (비전동)','17855');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (515,'맥도날드','소사벌점','경기도 평택시 비전동 1090-2번지','경기도','평택시','경기도 평택시 평남로 862, (비전동)','17854');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (516,'맥도날드','평택서정DT점','경기도 평택시 서정동 779-5번지','경기도','평택시','경기도 평택시 경기대로 1395, (서정동)','17773');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (517,'버거킹','평택서정점','경기도 평택시 서정동 814-1번지','경기도','평택시','경기도 평택시 경기대로 1371, (서정동)','17774');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (518,'맥도날드','평택SK점','경기도 평택시 세교동 277-10번지','경기도','평택시','경기도 평택시 경기대로 570, (세교동)','17842');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (519,'맥도날드','송탄점','경기도 평택시 신장동 303-16번지','경기도','평택시','경기도 평택시 쇼핑로 13, (신장동)','17758');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (520,'맥도날드','송탄점','경기도 평택시 신장동 303-17번지','경기도','평택시','경기도 평택시 쇼핑로 11, (신장동)','17758');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (521,'롯데리아','평택안중점','경기도 평택시 안중읍 안중리 278-15번지','경기도','평택시','경기도 평택시 안중읍 안중로 109-1','17933');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (522,'롯데리아','평택안중DI점','경기도 평택시 안중읍 현화리 172-3번지','경기도','평택시','경기도 평택시 안중읍 안현로서9길 5','17930');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (523,'롯데리아','평택휴게소점','경기도 평택시 오성면 죽리 1-2번지','경기도','평택시','경기도 평택시 오성면 서동대로 2043','17819');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (524,'파파이스','장당점','경기도 평택시 이충동 612-4번지','경기도','평택시','경기도 평택시 송탄로40번길 79-21, (이충동)','17785');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (525,'롯데리아','송탄점','경기도 평택시 장당동 390-1번지','경기도','평택시','경기도 평택시 경기대로 1103, (장당동)','17784');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (526,'롯데리아','평택지산점','경기도 평택시 지산동 1123번지','경기도','평택시','경기도 평택시 지산로 76, (지산동)','17729');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (527,'맘스터치','청북점','경기도 평택시 청북읍 옥길리 1159-1번지','경기도','평택시','경기도 평택시 청북읍 안청로2길 33-36','17808');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (528,'롯데리아','평택청북DT점','경기도 평택시 청북읍 후사리 271-5번지','경기도','평택시','경기도 평택시 청북읍 서해로 1538-1','17799');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (529,'롯데리아','평택청북DT점','경기도 평택시 청북읍 후사리 271-6번지','경기도','평택시','경기도 평택시 청북읍 서해로 1538-1','17799');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (530,'맘스터치','팽성점','경기도 평택시 팽성읍 객사리 144-5번지','경기도','평택시','경기도 평택시 팽성읍 동서촌로 54','17989');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (531,'롯데리아','0','경기도 평택시 평택동 185-579번지','경기도','평택시','경기도 평택시 평택로 51, (평택동)','17917');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (532,'롯데리아','0','경기도 평택시 평택동 291번지','경기도','평택시','경기도 평택시 중앙2로 13, (평택동)','17909');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (533,'맥도날드','평택점','경기도 평택시 평택동 45-1번지','경기도','평택시','경기도 평택시 평택1로 10, (평택동)','17910');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (534,'롯데리아','평택중앙점','경기도 평택시 평택동 48번지','경기도','평택시','경기도 평택시 평택2로10번길 10-3, (평택동)','17909');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (581,'맘스터치','0','경상남도 거제시 고현동 961-57번지','경상남도','거제시','경상남도 거제시 고현로11길 20, (고현동)','53251');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (582,'버거킹','거제고현점','경상남도 거제시 고현동 970-2번지','경상남도','거제시','경상남도 거제시 서문로5길 6, (고현동)','53252');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (583,'롯데리아','거제상문점','경상남도 거제시 상동동 590-1번지','경상남도','거제시','경상남도 거제시 거제중앙로 1726, (상동동)','53289');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (584,'롯데리아','수월점','경상남도 거제시 수월동 1120-11번지','경상남도','거제시','경상남도 거제시 수양로 454-8, (수월동)','53237');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (585,'롯데리아','거제아주점','경상남도 거제시 아주동 1688-10번지','경상남도','거제시','경상남도 거제시 아주1로 38, (아주동)','53305');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (586,'맘스터치','신거제아주점','경상남도 거제시 아주동 1699-19번지','경상남도','거제시','경상남도 거제시 아주로 36, (아주동)','53305');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (587,'버거킹','수월점','경상남도 거제시 양정동 962-1번지','경상남도','거제시','경상남도 거제시 수양로 471, (양정동)','53236');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (588,'맥도날드','옥포SKDT점','경상남도 거제시 옥포동 551-1번지','경상남도','거제시','경상남도 거제시 거제대로 3714, (옥포동)','53233');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (589,'버거킹','옥포점','경상남도 거제시 옥포동 552-22번지','경상남도','거제시','경상남도 거제시 옥포로 159, (옥포동)','53233');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (590,'맥도날드','0','경상남도 거제시 옥포동 555-1번지','경상남도','거제시','경상남도 거제시 옥포성안로 18, (옥포동)','53233');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (591,'맥도날드','거제점','경상남도 거제시 장평동 1211번지','경상남도','거제시','경상남도 거제시 장평로 12, (장평동)','53267');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (592,'맥도날드','거제점','경상남도 거제시 장평동 530번지','경상남도','거제시','경상남도 거제시 장평3로 80, (장평동)','53261');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (593,'파파이스','거창점','경상남도 거창군 거창읍 상림리 823번지','경상남도','거창군','경상남도 거창군 거창읍 거열로 84','50131');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (594,'롯데리아','거창점','경상남도 거창군 거창읍 중앙리 262-1번지','경상남도','거창군','경상남도 거창군 거창읍 아림로 16-17','50138');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (595,'롯데리아','거창점','경상남도 거창군 거창읍 중앙리 96-7번지','경상남도','거창군','경상남도 거창군 거창읍 중앙로 129-2','50133');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (596,'롯데리아','고성점','경상남도 고성군 고성읍 성내리 162-2번지','경상남도','고성군','경상남도 고성군 고성읍 중앙로 18','52943');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (597,'롯데리아','0','경상남도 고성군 회화면 당항리 112-2번지','경상남도','고성군','경상남도 고성군 회화면 당항만로 1116','52915');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (598,'롯데리아','홈플러스김해점','경상남도 김해시 내동 1131-2번지','경상남도','김해시','경상남도 김해시 김해대로 2078, (내동)','50943');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (599,'롯데리아','부원점','경상남도 김해시 부원동 1041번지','경상남도','김해시','경상남도 김해시 김해대로 2330, (부원동)','50940');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (600,'맘스터치','아이스퀘어점','경상남도 김해시 부원동 1043번지','경상남도','김해시','경상남도 김해시 김해대로 2342, (부원동)','50940');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (601,'버거킹','김해아이스퀘어몰점','경상남도 김해시 부원동 1043번지','경상남도','김해시','경상남도 김해시 김해대로 2342, (부원동)','50940');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (602,'롯데리아','0','경상남도 김해시 부원동 90번지','경상남도','김해시','경상남도 김해시 호계로422번길 42-11, (부원동)','50924');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (603,'맥도날드','김해삼계DT점','경상남도 김해시 삼계동 1460-5번지','경상남도','김해시','경상남도 김해시 가야로 167, (삼계동)','50900');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (604,'버거킹','김해삼계점','경상남도 김해시 삼계동 1479-8번지','경상남도','김해시','경상남도 김해시 가야로 178, (삼계동)','50901');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (605,'롯데리아','김해북부점','경상남도 김해시 삼계동 1486-4번지','경상남도','김해시','경상남도 김해시 가야로 183, (삼계동)','50900');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (606,'맘스터치','삼정점','경상남도 김해시 삼정동 599-1번지','경상남도','김해시','경상남도 김해시 활천로 22, (삼정동)','50934');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (607,'맥도날드','김해삼정점','경상남도 김해시 삼정동 616-3번지','경상남도','김해시','경상남도 김해시 김해대로 2471, (삼정동)','50934');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (608,'맘스터치','김해서상점','경상남도 김해시 서상동 27-23번지','경상남도','김해시','경상남도 김해시 가락로 96, (서상동)','50915');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (609,'롯데리아','롯데프리미엄아울렛김해점','경상남도 김해시 신문동 1414번지','경상남도','김해시','경상남도 김해시 장유로 469, (신문동)','51011');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (610,'롯데리아','김해내외DI점','경상남도 김해시 외동 1256-5번지','경상남도','김해시','경상남도 김해시 내외중앙로 42, (외동)','50948');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (611,'맥도날드','외동점','경상남도 김해시 외동 1257-4번지','경상남도','김해시','경상남도 김해시 내외중앙로 28, (외동)','50948');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (612,'맥도날드','김해외동DT점','경상남도 김해시 외동 238-3번지','경상남도','김해시','경상남도 김해시 분성로 144, (외동)','50961');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (613,'KFC','0','경상남도 김해시 율하동 1349-1번지','경상남도','김해시','경상남도 김해시 율하3로 38, (율하동)','51018');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (614,'롯데리아','진영점','경상남도 김해시 진영읍 여래리 700-162번지','경상남도','김해시','경상남도 김해시 진영읍 여래로 18','50865');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (615,'롯데리아','남해점','경상남도 남해군 남해읍 북변리 158-21번지','경상남도','남해군','경상남도 남해군 남해읍 화전로 79','52420');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (616,'맥도날드','0','경상남도 밀양시 삼문동 397번지','경상남도','밀양시','경상남도 밀양시 밀양대로 1872, (삼문동)','50426');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (617,'롯데리아','벌리점','경상남도 사천시 벌리동 253-10번지','경상남도','사천시','경상남도 사천시 주공로 9, (벌리동)','52559');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (618,'롯데리아','사천점','경상남도 사천시 사천읍 수석리 222-5번지','경상남도','사천시','경상남도 사천시 사천읍 읍내로 11-1','52518');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (619,'버거킹','0','경상남도 사천시 사천읍 수석리 285-7번지','경상남도','사천시','경상남도 사천시 사천읍 옥산로 30','52520');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (620,'맥도날드','사천DT점','경상남도 사천시 사천읍 수석리 320-11번지','경상남도','사천시','경상남도 사천시 사천읍 사천대로 1838','52519');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (621,'맘스터치','석산점','경상남도 양산시 동면 석산리 1457-1번지','경상남도','양산시','경상남도 양산시 동면 금오13길 4','50650');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (622,'롯데리아','양산물금점','경상남도 양산시 물금읍 가촌리 1270-14번지','경상남도','양산시','경상남도 양산시 물금읍 야리로 17','50613');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (623,'롯데리아','양산증산점','경상남도 양산시 물금읍 가촌리 1295-2번지','경상남도','양산시','경상남도 양산시 물금읍 증산역로 153','50653');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (624,'파파이스','양산부산대병원점','경상남도 양산시 물금읍 범어리 2762-1번지','경상남도','양산시','경상남도 양산시 물금읍 금오로 50','50612');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (625,'맘스터치','남부시장점','경상남도 양산시 북부동 448-15번지','경상남도','양산시','경상남도 양산시 북안남4길 7-37, (북부동)','50619');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (626,'맘스터치','양산북정점','경상남도 양산시 북정동 886-5번지','경상남도','양산시','경상남도 양산시 북정로 19, (북정동)','50572');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (627,'롯데리아','0','경상남도 양산시 산막동 314-3번지','경상남도','양산시','경상남도 양산시 산막공단북3길 9, (산막동)','50567');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (628,'맥도날드','웅상점','경상남도 양산시 삼호동 1016-9번지','경상남도','양산시','경상남도 양산시 웅상대로 1257, (삼호동)','50513');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (629,'맥도날드','양산북정DT점','경상남도 양산시 신기동 545-7번지','경상남도','양산시','경상남도 양산시 양산대로 925, (신기동)','50573');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (630,'KFC','0','경상남도 양산시 중부동 705번지','경상남도','양산시','경상남도 양산시 양산역6길 12, (중부동)','50629');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (631,'맘스터치','양산평산이마트점','경상남도 양산시 평산동 104-1번지','경상남도','양산시','경상남도 양산시 평산로 33, (평산동)','50549');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (632,'맥도날드','양산덕계DT점','경상남도 양산시 평산동 16-6번지','경상남도','양산시','경상남도 양산시 웅상대로 910, (평산동)','50537');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (633,'맘스터치','의령점','경상남도 의령군 의령읍 중동리 377-6번지','경상남도','의령군','경상남도 의령군 의령읍 의병로 227-1','52140');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (634,'롯데리아','경상대점','경상남도 진주시 가좌동 637-7번지','경상남도','진주시','경상남도 진주시 진주대로 594, (가좌동)','52820');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (635,'맥도날드','0','경상남도 진주시 가좌동 644-3번지','경상남도','진주시','경상남도 진주시 진주대로 612, (가좌동)','52820');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (636,'맘스터치','보건대점','경상남도 진주시 상봉동 1091-17번지','경상남도','진주시','경상남도 진주시 창렬로126번길 4-5, (상봉동)','52661');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (637,'맥도날드','진주점','경상남도 진주시 신안동 582-3번지','경상남도','진주시','경상남도 진주시 진양호로 280, (신안동)','52697');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (638,'맥도날드','진주칠암DT점','경상남도 진주시 주약동 94-1번지','경상남도','진주시','경상남도 진주시 진주대로 838, (주약동)','52727');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (639,'롯데리아','진주롯데시네마점','경상남도 진주시 중안동 12-13번지','경상남도','진주시','경상남도 진주시 진양호로 521, (중안동)','52684');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (640,'롯데리아','진주롯데시네마점','경상남도 진주시 중안동 12-3번지','경상남도','진주시','경상남도 진주시 진양호로527번길 3-1, (중안동)','52684');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (641,'롯데리아','진주초전디아이점','경상남도 진주시 초전동 1017번지','경상남도','진주시','경상남도 진주시 대신로 474, (초전동)','52733');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (642,'버거킹','진주혁신도시점','경상남도 진주시 충무공동 279-6번지','경상남도','진주시','경상남도 진주시 사들로 97, (충무공동)','52852');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (643,'롯데리아','진주혁신도시점','경상남도 진주시 충무공동 281-2번지','경상남도','진주시','경상남도 진주시 사들로 87, (충무공동)','52852');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (644,'맘스터치','충무공점','경상남도 진주시 충무공동 282-6번지','경상남도','진주시','경상남도 진주시 충의로 20-17, (충무공동)','52852');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (645,'롯데리아','롯데아울렛진주점','경상남도 진주시 충무공동 35번지','경상남도','진주시','경상남도 진주시 동진로 440, (충무공동)','52851');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (646,'롯데리아','산업대점','경상남도 진주시 칠암동 451-3번지','경상남도','진주시','경상남도 진주시 동진로 23, (칠암동)','52725');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (647,'맘스터치','진주평거점','경상남도 진주시 평거동 1113-6번지','경상남도','진주시','경상남도 진주시 진양호로 84, (평거동)','52650');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (648,'롯데리아','진주평거점','경상남도 진주시 평거동 205-3번지','경상남도','진주시','경상남도 진주시 순환로 530, (평거동)','52701');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (649,'KFC','진주평거점','경상남도 진주시 평거동 205-5번지','경상남도','진주시','경상남도 진주시 순환로 526, (평거동)','52701');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (650,'맘스터치','진주점','경상남도 진주시 평거동 900번지','경상남도','진주시','경상남도 진주시 진양호로 206, (평거동)','52703');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (651,'롯데리아','갤러리아점','경상남도 진주시 평안동 195번지','경상남도','진주시','경상남도 진주시 진주대로 1095, (평안동)','52683');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (652,'롯데리아','경남남지점','경상남도 창녕군 남지읍 남지리 767-12번지','경상남도','창녕군','경상남도 창녕군 남지읍 문화길 35-4','50361');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (653,'롯데리아','창녕점','경상남도 창녕군 창녕읍 교리 258-1번지','경상남도','창녕군','경상남도 창녕군 창녕읍 명덕로 70','50325');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (654,'맘스터치','북마산점','경상남도 창원시 마산합포구 상남동 1-5번지','경상남도','창원시','경상남도 창원시 마산합포구 노산서18길 1, (상남동)','51274');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (655,'맘스터치','0','경상남도 창원시 마산합포구 진동면 진동리 432-4번지','경상남도','창원시','경상남도 창원시 마산합포구 진동면 진북산업로 27','51793');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (656,'맥도날드','신마산점','경상남도 창원시 마산합포구 해운동 5-119번지','경상남도','창원시','경상남도 창원시 마산합포구 월영동4길 10, (해운동)','51750');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (657,'버거킹','경남대점','경상남도 창원시 마산합포구 해운동 5-83번지','경상남도','창원시','경상남도 창원시 마산합포구 해안대로 6, (해운동)','51751');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (658,'롯데리아','마산현동점','경상남도 창원시 마산합포구 현동 377번지','경상남도','창원시','경상남도 창원시 마산합포구 현동7길 28, (현동)','51778');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (659,'버거킹','마산내서삼계SK점','경상남도 창원시 마산회원구 내서읍 삼계리 24-8번지','경상남도','창원시','경상남도 창원시 마산회원구 내서읍 경남대로 941','51236');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (660,'KFC','0','경상남도 창원시 마산회원구 내서읍 삼계리 25-2번지','경상남도','창원시','경상남도 창원시 마산회원구 내서읍 경남대로 927','51236');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (661,'맘스터치','내서점','경상남도 창원시 마산회원구 내서읍 삼계리 27-1번지','경상남도','창원시','경상남도 창원시 마산회원구 내서읍 삼계로 6','51236');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (662,'롯데리아','마산내서점','경상남도 창원시 마산회원구 내서읍 삼계리 30-3번지','경상남도','창원시','경상남도 창원시 마산회원구 내서읍 경남대로 915','51237');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (663,'맥도날드','창원내서DT점','경상남도 창원시 마산회원구 내서읍 중리 1043-8번지','경상남도','창원시','경상남도 창원시 마산회원구 내서읍 광려천서로 77','51230');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (664,'롯데리아','마산홈플러스점','경상남도 창원시 마산회원구 양덕동 151-1번지','경상남도','창원시','경상남도 창원시 마산회원구 삼호로 56, (양덕동)','51320');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (665,'롯데리아','0','경상남도 창원시 성산구 가음동 47-1번지','경상남도','창원시','경상남도 창원시 성산구 가음로92번길 5, (가음동)','51489');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (666,'롯데리아','창원대방점','경상남도 창원시 성산구 대방동 363-1번지','경상남도','창원시','경상남도 창원시 성산구 가양로124번길 7, (대방동)','51465');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (839,'롯데리아','롯데마트광주점','광주광역시 서구 금호동 787번지','광주광역시','서구','광주광역시 서구 마재로 19, (금호동)','62015');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (840,'KFC','0','광주광역시 서구 농성동 622-28번지','광주광역시','서구','광주광역시 서구 월산로165번길 7, (농성동)','61930');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (841,'롯데리아','문흥점','광주광역시 서구 쌍촌동 951-2번지','광주광역시','서구','광주광역시 서구 월드컵4강로197번길 5-8, (쌍촌동)','61968');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (842,'맥도날드','쌍촌DT점','광주광역시 서구 쌍촌동 964-9번지','광주광역시','서구','광주광역시 서구 상무대로 921-1, (쌍촌동)','61969');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (843,'맥도날드','0','광주광역시 서구 쌍촌동 968-1번지','광주광역시','서구','광주광역시 서구 상무민주로6번길 9, (쌍촌동)','61970');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (844,'맥도날드','상무대점','광주광역시 서구 치평동 1182번지','광주광역시','서구','광주광역시 서구 치평로 72, (치평동)','61950');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (845,'KFC','0','광주광역시 서구 치평동 1185-3번지','광주광역시','서구','광주광역시 서구 상무중앙로 101, (치평동)','61950');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (846,'롯데리아','치평점','광주광역시 서구 치평동 1185-5번지','광주광역시','서구','광주광역시 서구 상무중앙로 95, (치평동)','61950');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (847,'버거킹','광주상무점','광주광역시 서구 치평동 1185번지','광주광역시','서구','광주광역시 서구 치평로 106, (치평동)','61950');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (848,'롯데리아','0','광주광역시 서구 치평동 1217-10번지','광주광역시','서구','광주광역시 서구 상무시민로 96, (치평동)','61949');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (849,'롯데리아','풍암점','광주광역시 서구 풍암동 1117-7번지','광주광역시','서구','광주광역시 서구 풍암1로21번길 9-6, (풍암동)','62058');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (850,'롯데리아','광주풍암점','광주광역시 서구 풍암동 1119-1번지','광주광역시','서구','광주광역시 서구 풍암2로 10, (풍암동)','62058');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (851,'롯데리아','롯데마트광주월드컵점','광주광역시 서구 풍암동 423-2번지','광주광역시','서구','광주광역시 서구 금화로 278, (풍암동)','62048');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (852,'롯데리아','광주농성DT점','광주광역시 서구 화정동 178-48번지','광주광역시','서구','광주광역시 서구 죽봉대로 21-1, (화정동)','61978');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (853,'맘스터치','0','광주광역시 서구 화정동 808-17번지','광주광역시','서구','광주광역시 서구 월드컵4강로 92, (화정동)','62037');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (854,'롯데리아','광주염주점','광주광역시 서구 화정동 825-6번지','광주광역시','서구','광주광역시 서구 월드컵4강로 66, (화정동)','62037');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (855,'KFC','0','대구광역시 남구 대명동 1737번지','대구광역시','남구','대구광역시 남구 현충로 170, (대명동)','42415');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (856,'맥도날드','대구교대DT점','대구광역시 남구 대명동 1793-5번지','대구광역시','남구','대구광역시 남구 중앙대로 225, (대명동)','42410');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (857,'맘스터치','대명계대점','대구광역시 남구 대명동 1890-11번지','대구광역시','남구','대구광역시 남구 현충로 266, (대명동)','42409');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (858,'KFC','이공대점','대구광역시 남구 대명동 317-1번지','대구광역시','남구','대구광역시 남구 현충로 170, (대명동)','42415');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (859,'맘스터치','봉덕점','대구광역시 남구 봉덕동 1292-120번지','대구광역시','남구','대구광역시 남구 효성로 52, (봉덕동)','42515');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (860,'맥도날드','본리점','대구광역시 달서구 감삼동 346번지','대구광역시','달서구','대구광역시 달서구 와룡로 134, (감삼동)','42658');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (861,'버거킹','죽전네거리DT점','대구광역시 달서구 감삼동 450-1번지','대구광역시','달서구','대구광역시 달서구 달구벌대로 1536, (감삼동)','42688');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (862,'맥도날드','이마트월배점','대구광역시 달서구 대천동 555번지','대구광역시','달서구','대구광역시 달서구 진천로 92, (대천동)','42778');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (863,'맥도날드','월배이마트점','대구광역시 달서구 대천동 555번지','대구광역시','달서구','대구광역시 달서구 진천로 92, (대천동)','42778');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (864,'맥도날드','두류DT점','대구광역시 달서구 두류동 495-47번지','대구광역시','달서구','대구광역시 달서구 달구벌대로 1684, (두류동)','42645');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (865,'맘스터치','상인점','대구광역시 달서구 상인동 1401-1번지','대구광역시','달서구','대구광역시 달서구 월곡로 261-1, (상인동)','42785');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (866,'롯데리아','상인점','대구광역시 달서구 상인동 1504번지','대구광역시','달서구','대구광역시 달서구 상인서로 107, (상인동)','42809');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (867,'버거킹','상인에스케이점','대구광역시 달서구 상인동 251-1번지','대구광역시','달서구','대구광역시 달서구 월배로 200, (상인동)','42785');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (868,'맥도날드','0','대구광역시 달서구 상인동 42번지','대구광역시','달서구','대구광역시 달서구 월곡로 320, (상인동)','42749');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (869,'맥도날드','0','대구광역시 달서구 상인동 54-2번지','대구광역시','달서구','대구광역시 달서구 월곡로 338, (상인동)','42749');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (870,'맥도날드','대구상인DT점','대구광역시 달서구 상인동 54번지','대구광역시','달서구','대구광역시 달서구 월곡로 330, (상인동)','42749');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (871,'롯데리아','대구성당D/T점','대구광역시 달서구 성당동 825-26번지','대구광역시','달서구','대구광역시 달서구 구마로 209, (성당동)','42681');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (872,'롯데리아','대구서부정류장점','대구광역시 달서구 송현동 1042-4번지','대구광역시','달서구','대구광역시 달서구 구마로 262, (송현동)','42737');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (873,'맘스터치','서부터미널점','대구광역시 달서구 송현동 1043-2번지','대구광역시','달서구','대구광역시 달서구 월배로 497, (송현동)','42737');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (874,'롯데리아','신당점','대구광역시 달서구 신당동 1804-5번지','대구광역시','달서구','대구광역시 달서구 계대동문로 24-1, (신당동)','42614');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (875,'맥도날드','홈플러스성서점','대구광역시 달서구 용산동 230-11번지','대구광역시','달서구','대구광역시 달서구 달구벌대로 1467, (용산동)','42637');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (876,'파파이스','0','대구광역시 달서구 용산동 230-11번지','대구광역시','달서구','대구광역시 달서구 달구벌대로 1467, (용산동)','42637');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (877,'롯데리아','0','대구광역시 달서구 용산동 930-4번지','대구광역시','달서구','대구광역시 달서구 용산로 231, (용산동)','42628');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (878,'맥도날드','용산점','대구광역시 달서구 용산동 934번지','대구광역시','달서구','대구광역시 달서구 용산로 222, (용산동)','42627');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (879,'맥도날드','대구용산점','대구광역시 달서구 용산동 934번지','대구광역시','달서구','대구광역시 달서구 용산로 222, (용산동)','42627');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (880,'맥도날드','이곡DT점','대구광역시 달서구 이곡동 1244-3번지','대구광역시','달서구','대구광역시 달서구 이곡공원로 8, (이곡동)','42620');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (881,'롯데리아','대구이곡점','대구광역시 달서구 이곡동 1246-3번지','대구광역시','달서구','대구광역시 달서구 달구벌대로259길 33, (이곡동)','42620');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (882,'KFC','0','대구광역시 달서구 이곡동 1248번지','대구광역시','달서구','대구광역시 달서구 이곡공원로 24, (이곡동)','42620');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (667,'맥도날드','창원사파점','경상남도 창원시 성산구 사파동 97-4번지','경상남도','창원시','경상남도 창원시 성산구 창이대로706번길 2, (사파동)','51448');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (668,'KFC','0','경상남도 창원시 성산구 상남동 1-6번지','경상남도','창원시','경상남도 창원시 성산구 원이대로 658, (상남동)','51495');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (669,'버거킹','창원상남에프에스점','경상남도 창원시 성산구 상남동 3-2번지','경상남도','창원시','경상남도 창원시 성산구 마디미로3번길 18, (상남동)','51495');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (670,'맥도날드','창원상남점','경상남도 창원시 성산구 상남동 35-1번지','경상남도','창원시','경상남도 창원시 성산구 단정로 22, (상남동)','51503');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (671,'맥도날드','창원점','경상남도 창원시 성산구 상남동 44-1번지','경상남도','창원시','경상남도 창원시 성산구 동산로 115, (상남동)','51498');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (672,'파파이스','창원대동백화점','경상남도 창원시 성산구 상남동 44-1번지','경상남도','창원시','경상남도 창원시 성산구 동산로 115, (상남동)','51498');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (673,'롯데리아','창원성원점','경상남도 창원시 성산구 상남동 45-1번지','경상남도','창원시','경상남도 창원시 성산구 동산로 108, (상남동)','51499');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (674,'롯데리아','롯데백창원4ST점','경상남도 창원시 성산구 상남동 79번지','경상남도','창원시','경상남도 창원시 성산구 중앙대로 124, (상남동)','51494');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (675,'맥도날드','창원이마트점','경상남도 창원시 성산구 중앙동 91번지','경상남도','창원시','경상남도 창원시 성산구 원이대로 608, (중앙동)','51515');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (676,'롯데리아','창원중앙점','경상남도 창원시 성산구 중앙동 92번지','경상남도','창원시','경상남도 창원시 성산구 중앙대로 123, (중앙동)','51515');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (677,'맘스터치','창원안민점','경상남도 창원시 성산구 천선동 1150-2번지','경상남도','창원시','경상남도 창원시 성산구 안민안길 46, (천선동)','51545');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (678,'롯데리아','롯데마트창원점','경상남도 창원시 의창구 대원동 121번지','경상남도','창원시','경상남도 창원시 의창구 원이대로 320, (대원동)','51408');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (679,'맥도날드','창원시티세븐점','경상남도 창원시 의창구 대원동 121번지','경상남도','창원시','경상남도 창원시 의창구 원이대로 320, (대원동)','51408');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (680,'롯데리아','롯데마트시티세븐점','경상남도 창원시 의창구 대원동 122번지','경상남도','창원시','경상남도 창원시 의창구 원이대로 332, (대원동)','51408');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (681,'맥도날드','창원시티세븐점','경상남도 창원시 의창구 대원동 122번지','경상남도','창원시','경상남도 창원시 의창구 원이대로 332, (대원동)','51408');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (682,'맘스터치','0','경상남도 창원시 의창구 봉림동 713-1번지','경상남도','창원시','경상남도 창원시 의창구 대봉로 24, (봉림동)','51157');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (683,'롯데리아','감계점','경상남도 창원시 의창구 북면 감계리 235-3번지','경상남도','창원시','경상남도 창원시 의창구 북면 감계로110번길 54-3','51112');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (684,'맘스터치','창원신월점','경상남도 창원시 의창구 신월동 74-16번지','경상남도','창원시','경상남도 창원시 의창구 신사로 41, (신월동)','51442');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (685,'버거킹','창원용호점','경상남도 창원시 의창구 용호동 73-52번지','경상남도','창원시','경상남도 창원시 의창구 원이대로589번길 6, (용호동)','51436');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (686,'맘스터치','팔용점','경상남도 창원시 의창구 팔용동 101번지','경상남도','창원시','경상남도 창원시 의창구 팔용로 438, (팔용동)','51373');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (687,'맥도날드','팔용점','경상남도 창원시 의창구 팔용동 149-4번지','경상남도','창원시','경상남도 창원시 의창구 의창대로 50, (팔용동)','51376');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (688,'롯데리아','홈플러스진해점','경상남도 창원시 진해구 이동 536-10번지','경상남도','창원시','경상남도 창원시 진해구 충장로 356, (이동)','51687');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (689,'맥도날드','진해자은DT점','경상남도 창원시 진해구 자은동 808-2번지','경상남도','창원시','경상남도 창원시 진해구 진해대로 950, (자은동)','51648');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (690,'롯데리아','진해장천점','경상남도 창원시 진해구 장천동 422-6번지','경상남도','창원시','경상남도 창원시 진해구 충장로657번길 28, (장천동)','51628');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (691,'롯데리아','진해중앙점','경상남도 창원시 진해구 화천동 45-1번지','경상남도','창원시','경상남도 창원시 진해구 중원로86번길 31, (화천동)','51679');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (692,'맘스터치','진해중앙점','경상남도 창원시 진해구 화천동 47-5번지','경상남도','창원시','경상남도 창원시 진해구 벚꽃로 71, (화천동)','51679');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (693,'맥도날드','통영죽림DT점','경상남도 통영시 광도면 죽림리 1569-1번지','경상남도','통영시','경상남도 통영시 광도면 죽림4로 36','53020');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (694,'맥도날드','통영SKDT점','경상남도 통영시 북신동 663-8번지','경상남도','통영시','경상남도 통영시 중앙로 275, (북신동)','53042');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (695,'롯데리아','하동점','경상남도 하동군 하동읍 읍내리 233-22번지','경상남도','하동군','경상남도 하동군 하동읍 경서대로 149','52330');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (696,'롯데리아','경남함안점','경상남도 함안군 가야읍 도항리 323-1번지','경상남도','함안군','경상남도 함안군 가야읍 성내남길 7-4','52044');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (697,'롯데리아','0','경상남도 함안군 칠원읍 오곡리 1423-92번지','경상남도','함안군','경상남도 함안군 칠원읍 오곡로 92','52029');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (698,'롯데리아','합천점','경상남도 합천군 합천읍 합천리 1364-25번지','경상남도','합천군','경상남도 합천군 합천읍 충효로 104','50232');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (699,'맘스터치','합천점','경상남도 합천군 합천읍 합천리 661-2번지','경상남도','합천군','경상남도 합천군 합천읍 동서로 83-1','50233');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (700,'롯데리아','영남대학점','경상북도 경산시 대동 170-16번지','경상북도','경산시','경상북도 경산시 대학로 285, (대동)','38533');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (701,'KFC','0','경상북도 경산시 대동 214-1번지','경상북도','경산시','경상북도 경산시 대학로 280, (대동)','38541');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (702,'맘스터치','0','경상북도 경산시 백천동 574-5번지','경상북도','경산시','경상북도 경산시 경청로 1105, (백천동)','38651');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (703,'버거킹','경산사동점','경상북도 경산시 사동 33번지','경상북도','경산시','경상북도 경산시 백자로 55, (사동)','38600');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (704,'맘스터치','사동점','경상북도 경산시 사동 34번지','경상북도','경산시','경상북도 경산시 백자로 53, (사동)','38600');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (705,'롯데리아','경산사동점','경상북도 경산시 사동 574번지','경상북도','경산시','경상북도 경산시 원효로32길 23, (사동)','38588');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (706,'맘스터치','정평점','경상북도 경산시 정평동 200-3번지','경상북도','경산시','경상북도 경산시 대학로 36, (정평동)','38657');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (707,'롯데리아','홈플러스경산점','경상북도 경산시 중방동 896번지','경상북도','경산시','경상북도 경산시 경안로 288, (중방동)','38612');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (708,'버거킹','대구대점','경상북도 경산시 진량읍 내리리 15번지','경상북도','경산시','경상북도 경산시 진량읍 대구대로 201','38453');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (709,'롯데리아','경산진량점','경상북도 경산시 진량읍 신상리 419-9번지','경상북도','경산시','경상북도 경산시 진량읍 공단로 468','38458');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (710,'롯데리아','대구가톨릭대점','경상북도 경산시 하양읍 금락리 35번지','경상북도','경산시','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (711,'버거킹','경산하양오일뱅크점','경상북도 경산시 하양읍 부호리 143-1번지','경상북도','경산시','경상북도 경산시 하양읍 대경로 559','38428');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (712,'롯데리아','0','경상북도 경주시 건천읍 화천리 1010번지','경상북도','경주시','경상북도 경주시 건천읍 신경주역로 80','38183');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (713,'맥도날드','경주황남DT점','경상북도 경주시 노서동 169-4번지','경상북도','경주시','경상북도 경주시 태종로 701, (노서동)','38157');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (714,'맘스터치','성건점','경상북도 경주시 성건동 620-496번지','경상북도','경주시','경상북도 경주시 동대로 18, (성건동)','38131');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (715,'롯데리아','지티점','경상북도 경주시 신평동 150-10번지','경상북도','경주시','경상북도 경주시 보문로 465-67, (신평동)','38116');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (716,'맥도날드','경주보문DT점','경상북도 경주시 신평동 436번지','경상북도','경주시','경상북도 경주시 보문로 441, (신평동)','38116');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (717,'롯데리아','안강점','경상북도 경주시 안강읍 양월리 1357-7번지','경상북도','경주시','경상북도 경주시 안강읍 비화원로 77','38021');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (718,'롯데리아','경주킴스점','경상북도 경주시 용강동 1276-7번지','경상북도','경주시','경상북도 경주시 광중길 6, (용강동)','38070');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (719,'롯데리아','홈플러스경주점','경상북도 경주시 용강동 800-11번지','경상북도','경주시','경상북도 경주시 공단로 97, (용강동)','38071');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (720,'맥도날드','경주용강DT점','경상북도 경주시 용강동 875번지','경상북도','경주시','경상북도 경주시 산업로 4364, (용강동)','38093');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (721,'버거킹','경주보문점','경상북도 경주시 천군동 157-3번지','경상북도','경주시','경상북도 경주시 엑스포로 80, (천군동)','38118');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (722,'롯데리아','경주월드리조트점','경상북도 경주시 천군동 191-5번지','경상북도','경주시','경상북도 경주시 보문로 544, (천군동)','38117');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (723,'맘스터치','경주충효점','경상북도 경주시 충효동 3002-8번지','경상북도','경주시','경상북도 경주시 충효녹지길 34, (충효동)','38061');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (724,'맘스터치','황성점','경상북도 경주시 황성동 472-19번지','경상북도','경주시','경상북도 경주시 황성로 22-1, (황성동)','38086');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (725,'롯데리아','고령점','경상북도 고령군 대가야읍 쾌빈리 492-2번지','경상북도','고령군','경상북도 고령군 대가야읍 왕릉로 116','40137');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (726,'롯데리아','문성점','경상북도 구미시 고아읍 문성리 1125번지','경상북도','구미시','경상북도 구미시 고아읍 들성로 211','39146');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (727,'버거킹','구미이마트점','경상북도 구미시 광평동 65-1번지','경상북도','구미시','경상북도 구미시 구미대로 256, (광평동)','39344');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (728,'롯데리아','홈플러스광평점','경상북도 구미시 광평동 792-21번지','경상북도','구미시','경상북도 구미시 구미대로 174, (광평동)','39347');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (729,'맥도날드','도량DT점','경상북도 구미시 도량동 524-3번지','경상북도','구미시','경상북도 구미시 야은로 447, (도량동)','39199');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (730,'롯데리아','구미동아점','경상북도 구미시 송정동 60번지','경상북도','구미시','경상북도 구미시 송원동로 28, (송정동)','39276');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (731,'롯데리아','롯데마트점','경상북도 구미시 신평동 465번지','경상북도','구미시','경상북도 구미시 구미대로22길 11, (신평동)','39255');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (732,'맥도날드','구미옥계DT점','경상북도 구미시 옥계동 362-1번지','경상북도','구미시','경상북도 구미시 옥계2공단로 390, (옥계동)','39181');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (733,'롯데리아','양포점','경상북도 구미시 옥계동 890-1번지','경상북도','구미시','경상북도 구미시 옥계북로 7, (옥계동)','39181');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (734,'맘스터치','구미역점','경상북도 구미시 원평동 1008-98번지','경상북도','구미시','경상북도 구미시 구미중앙로 100, (원평동)','39222');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (735,'맥도날드','구미인동디티점','경상북도 구미시 인의동 1004-1번지','경상북도','구미시','경상북도 구미시 인동북길 155, (인의동)','39440');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (736,'버거킹','인의점','경상북도 구미시 인의동 368-8번지','경상북도','구미시','경상북도 구미시 인동중앙로 16, (인의동)','39432');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (737,'맥도날드','구미형곡점','경상북도 구미시 형곡동 146-9번지','경상북도','구미시','경상북도 구미시 형곡중앙로 31, (형곡동)','39296');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (738,'롯데리아','구미형곡점','경상북도 구미시 형곡동 279-7번지','경상북도','구미시','경상북도 구미시 형곡로 171, (형곡동)','39312');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (739,'맘스터치','군위점','경상북도 군위군 군위읍 서부리 4-1번지','경상북도','군위군','경상북도 군위군 군위읍 도군로 2717','39015');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (740,'롯데리아','0','경상북도 김천시 남면 옥산리 787-1번지','경상북도','김천시','경상북도 김천시 남면 혁신1로 51','39660');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (741,'맘스터치','화평점','경상북도 김천시 신음동 996-7번지','경상북도','김천시','경상북도 김천시 시청로 61, (신음동)','39548');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (742,'롯데리아','모다아울렛김천점','경상북도 김천시 아포읍 송천리 291-9번지','경상북도','김천시','경상북도 김천시 아포읍 아포대로 1417','39676');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (743,'롯데리아','김천혁신도시점','경상북도 김천시 율곡동 365번지','경상북도','김천시','경상북도 김천시 혁신4로 7, (율곡동)','39660');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (744,'맘스터치','김천혁신도시점','경상북도 김천시 율곡동 366번지','경상북도','김천시','경상북도 김천시 혁신4로 9, (율곡동)','39660');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (745,'맥도날드','0','경상북도 김천시 평화동 2-2번지','경상북도','김천시','경상북도 김천시 자산로 199, (평화동)','39574');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (746,'롯데리아','홈플러스문경점','경상북도 문경시 모전동 616-2번지','경상북도','문경시','경상북도 문경시 점고길 33, (모전동)','36975');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (747,'롯데리아','홈플러스문경점','경상북도 문경시 모전동 859-2번지','경상북도','문경시','경상북도 문경시 모전로 65, (모전동)','36981');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (748,'롯데리아','점촌점','경상북도 문경시 점촌동 241-5번지','경상북도','문경시','경상북도 문경시 호서로 2, (점촌동)','36971');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (749,'롯데리아','경북봉화점','경상북도 봉화군 봉화읍 내성리 394-18번지','경상북도','봉화군','경상북도 봉화군 봉화읍 신시장1길 11-13','36239');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (750,'버거킹','경북상주점','경상북도 상주시 남성동 13-18번지','경상북도','상주시','경상북도 상주시 중앙로 186-1, (남성동)','37197');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (751,'롯데리아','상주점','경상북도 상주시 서문동 123-16번지','경상북도','상주시','경상북도 상주시 중앙로 185, (서문동)','37187');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (752,'롯데리아','상주특설점','경상북도 상주시 서문동 130-8번지','경상북도','상주시','경상북도 상주시 중앙로 177, (서문동)','37187');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (753,'롯데리아','성주점','경상북도 성주군 성주읍 경산리 165-5번지','경상북도','성주군','경상북도 성주군 성주읍 성주읍4길 4','40026');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (754,'버거킹','안동중앙점','경상북도 안동시 남부동 100-5번지','경상북도','안동시','경상북도 안동시 문화광장길 40-6, (남부동)','36701');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (755,'맘스터치','안동삼산점','경상북도 안동시 삼산동 125-16번지','경상북도','안동시','경상북도 안동시 서동문로 174-8, (삼산동)','36701');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (756,'롯데리아','안동터미널점','경상북도 안동시 송천동 817-5번지','경상북도','안동시','경상북도 안동시 경동로 1306, (송천동)','36728');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (757,'버거킹','안동옥동점','경상북도 안동시 옥동 787-9번지','경상북도','안동시','경상북도 안동시 경북대로 381, (옥동)','36661');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (758,'맘스터치','안동옥동점','경상북도 안동시 옥동 989-7번지','경상북도','안동시','경상북도 안동시 경북대로 423, (옥동)','36659');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (759,'롯데리아','SK안동용상DT점','경상북도 안동시 용상동 1076-3번지','경상북도','안동시','경상북도 안동시 경동로 974, (용상동)','36724');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (760,'롯데리아','0','경상북도 안동시 용상동 1076-3번지','경상북도','안동시','경상북도 안동시 경동로 974, (용상동)','36724');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (761,'롯데리아','홈플러스안동점','경상북도 안동시 운흥동 247-28번지','경상북도','안동시','경상북도 안동시 경동로 656, (운흥동)','36706');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (762,'롯데리아','0','경상북도 안동시 운흥동 300-15번지','경상북도','안동시','경상북도 안동시 육사로 239, (운흥동)','36709');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (763,'롯데리아','경북도청점','경상북도 안동시 풍천면 갈전리 1647번지','경상북도','안동시','경상북도 안동시 풍천면 천년숲서로 29','36759');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (764,'롯데리아','영주가흥점','경상북도 영주시 가흥동 1776번지','경상북도','영주시','경상북도 영주시 대동로31번길 2, (가흥동)','36136');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (765,'롯데리아','경북풍기점','경상북도 영주시 풍기읍 성내리 27-16번지','경상북도','영주시','경상북도 영주시 풍기읍 기주로 94-1','36026');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (766,'롯데리아','영주점','경상북도 영주시 하망동 344-83번지','경상북도','영주시','경상북도 영주시 번영로 156, (하망동)','36075');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (767,'롯데리아','영천DT점','경상북도 영천시 조교동 733-2번지','경상북도','영천시','경상북도 영천시 영화로 340-1, (조교동)','38865');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (768,'롯데리아','영천DT점','경상북도 영천시 조교동 733-8번지','경상북도','영천시','경상북도 영천시 영화로 338, (조교동)','38865');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (769,'롯데리아','울진점','경상북도 울진군 울진읍 읍내리 47번지','경상북도','울진군','경상북도 울진군 울진읍 현내항길 7','36325');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (770,'롯데리아','울진점','경상북도 울진군 울진읍 읍내리 525-1번지','경상북도','울진군','경상북도 울진군 울진읍 연호로 2','36325');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (771,'맘스터치','울진후포점','경상북도 울진군 후포면 삼율리 290-1번지','경상북도','울진군','경상북도 울진군 후포면 후포삼율로 98','36370');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (772,'맘스터치','청도점','경상북도 청도군 청도읍 고수리 501-2번지','경상북도','청도군','경상북도 청도군 청도읍 청화로 132','38344');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (773,'롯데리아','청도점','경상북도 청도군 청도읍 고수리 849번지','경상북도','청도군','경상북도 청도군 청도읍 청화로 207','38341');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (774,'맘스터치','석적점','경상북도 칠곡군 석적읍 중리 203-2번지','경상북도','칠곡군','경상북도 칠곡군 석적읍 유학로 42','39836');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (775,'맥도날드','0','경상북도 포항시 남구 대잠동 915번지','경상북도','포항시','경상북도 포항시 남구 새천년대로 470, (대잠동)','37759');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (776,'버거킹','포항버스터미널점','경상북도 포항시 남구 상도동 609-1번지','경상북도','포항시','경상북도 포항시 남구 중흥로 96, (상도동)','37769');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (777,'맘스터치','오천점','경상북도 포항시 남구 오천읍 세계리 857-12번지','경상북도','포항시','경상북도 포항시 남구 오천읍 세계길 41','37912');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (778,'맘스터치','문덕점','경상북도 포항시 남구 오천읍 원리 1163번지','경상북도','포항시','경상북도 포항시 남구 오천읍 원동로 102-1','37882');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (779,'맘스터치','이동점','경상북도 포항시 남구 이동 652-5번지','경상북도','포항시','경상북도 포항시 남구 대이로 169, (이동)','37675');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (780,'맥도날드','이마트포항점','경상북도 포항시 남구 인덕동 161-176번지','경상북도','포항시','경상북도 포항시 남구 냉천로 10, (인덕동)','37878');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (781,'버거킹','포항공대점','경상북도 포항시 남구 지곡동 756번지','경상북도','포항시','경상북도 포항시 남구 청암로 77, (지곡동)','37673');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (782,'롯데리아','포항효자점','경상북도 포항시 남구 효자동 253-122번지','경상북도','포항시','경상북도 포항시 남구 효자동길1번길 12, (효자동)','37664');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (783,'KFC','0','경상북도 포항시 북구 대흥동 595-7번지','경상북도','포항시','경상북도 포항시 북구 용당로 106, (대흥동)','37737');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (784,'맥도날드','포항북부DT점','경상북도 포항시 북구 두호동 724번지','경상북도','포항시','경상북도 포항시 북구 삼호로 202, (두호동)','37708');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (785,'롯데리아','포항점','경상북도 포항시 북구 상원동 449-17번지','경상북도','포항시','경상북도 포항시 북구 중앙로 282, (상원동)','37738');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (786,'버거킹','포항법원앞SK점','경상북도 포항시 북구 장성동 1370-8번지','경상북도','포항시','경상북도 포항시 북구 신덕로 257, (장성동)','37580');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (787,'맥도날드','포항장성DT점','경상북도 포항시 북구 장성동 1576-5번지','경상북도','포항시','경상북도 포항시 북구 새천년대로 1261, (장성동)','37585');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (788,'롯데리아','포항죽도점','경상북도 포항시 북구 죽도동 641-9번지','경상북도','포항시','경상북도 포항시 북구 중흥로 187, (죽도동)','37754');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (789,'롯데리아','0','경상북도 포항시 북구 학산동 127-9번지','경상북도','포항시','경상북도 포항시 북구 학산로 62, (학산동)','37718');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (790,'롯데리아','0','경상북도 포항시 북구 흥해읍 남성리 241-27번지','경상북도','포항시','경상북도 포항시 북구 흥해읍 중성로 27','37542');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (791,'롯데리아','흥해점','경상북도 포항시 북구 흥해읍 남성리 242-3번지','경상북도','포항시','경상북도 포항시 북구 흥해읍 흥해로 38','37542');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (792,'버거킹','한동대점','경상북도 포항시 북구 흥해읍 남송리 78-1번지','경상북도','포항시','경상북도 포항시 북구 흥해읍 한동로 558','37554');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (793,'맘스터치','흥해점','경상북도 포항시 북구 흥해읍 옥성리 98-8번지','경상북도','포항시','경상북도 포항시 북구 흥해읍 흥해로 29','37543');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (794,'롯데리아','롯데마트포항점','경상북도 포항시 북구 흥해읍 학천리 454번지','경상북도','포항시','경상북도 포항시 북구 흥해읍 도음로877번길 15','37562');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (795,'맥도날드','산정DT점','광주광역시 광산구 산정동 143-16번지','광주광역시','광산구','광주광역시 광산구 용아로 251, (산정동)','62338');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (796,'롯데리아','광주선운점','광주광역시 광산구 선암동 569번지','광주광역시','광산구','광주광역시 광산구 동곡로 739, (선암동)','62402');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (797,'버거킹','호남대점','광주광역시 광산구 선암동 764번지','광주광역시','광산구','광주광역시 광산구 어등대로 418-1, (선암동)','62400');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (798,'롯데리아','광주송정점','광주광역시 광산구 송정동 792-7번지','광주광역시','광산구','광주광역시 광산구 송정로1번길 88, (송정동)','62430');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (799,'KFC','광주수완점','광주광역시 광산구 수완동 1123번지','광주광역시','광산구','광주광역시 광산구 장신로 163, (수완동)','62247');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (800,'KFC','광주수완점','광주광역시 광산구 수완동 1427번지','광주광역시','광산구','광주광역시 광산구 장신로 136, (수완동)','62306');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (801,'버거킹','수완점','광주광역시 광산구 수완동 1429번지','광주광역시','광산구','광주광역시 광산구 장신로 142, (수완동)','62306');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (802,'롯데리아','광주수완하나로점','광주광역시 광산구 신가동 1052번지','광주광역시','광산구','광주광역시 광산구 임방울대로 261, (신가동)','62307');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (803,'롯데리아','엔젤리너스커피광주첨단점','광주광역시 광산구 쌍암동 656-4번지','광주광역시','광산구','광주광역시 광산구 첨단중앙로 156, (쌍암동)','62274');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (804,'롯데리아','롯데마트첨단점','광주광역시 광산구 쌍암동 694-3번지','광주광역시','광산구','광주광역시 광산구 첨단강변로99번길 22, (쌍암동)','62279');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (805,'파파이스','광산이마트점','광주광역시 광산구 우산동 1598-3번지','광주광역시','광산구','광주광역시 광산구 사암로 172, (우산동)','62364');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (806,'맘스터치','0','광주광역시 광산구 월계동 889-2번지','광주광역시','광산구','광주광역시 광산구 첨단중앙로 96, (월계동)','62276');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (807,'롯데리아','하남점','광주광역시 광산구 월곡동 538-2번지','광주광역시','광산구','광주광역시 광산구 사암로 251, (월곡동)','62346');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (808,'롯데리아','광주하남점','광주광역시 광산구 월곡동 538-2번지','광주광역시','광산구','광주광역시 광산구 사암로 251, (월곡동)','62346');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (809,'롯데리아','광주하남2지구점','광주광역시 광산구 하남동 714번지','광주광역시','광산구','광주광역시 광산구 용아로379번길 54, (하남동)','62336');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (810,'롯데리아','광주백운점','광주광역시 남구 백운동 359-8번지','광주광역시','남구','광주광역시 남구 독립로 100-1, (백운동)','61645');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (811,'롯데리아','광주봉선점','광주광역시 남구 봉선동 1039-1번지','광주광역시','남구','광주광역시 남구 봉선중앙로 82, (봉선동)','61671');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (812,'맥도날드','0','광주광역시 남구 월산동 951-3번지','광주광역시','남구','광주광역시 남구 대남대로 393, (월산동)','61611');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (813,'롯데리아','주월DT점','광주광역시 남구 주월동 398-11번지','광주광역시','남구','광주광역시 남구 서문대로 781, (주월동)','61721');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (814,'롯데리아','정상진월점','광주광역시 남구 진월동 262-3번지','광주광역시','남구','광주광역시 남구 서문대로 662, (진월동)','61710');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (815,'맥도날드','광주진월DT점','광주광역시 남구 진월동 291-7번지','광주광역시','남구','광주광역시 남구 서문대로 697, (진월동)','61727');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (816,'롯데리아','계림점','광주광역시 동구 계림동 505-900번지','광주광역시','동구','광주광역시 동구 무등로 314, (계림동)','61419');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (817,'롯데리아','광주점','광주광역시 동구 계림동 560-20번지','광주광역시','동구','광주광역시 동구 무등로307번길 2, (계림동)','61401');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (818,'맘스터치','0','광주광역시 동구 충장로2가 29-1번지','광주광역시','동구','광주광역시 동구 충장로 80-7, (충장로2가)','61483');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (819,'롯데리아','충장점','광주광역시 동구 충장로3가 30-5번지','광주광역시','동구','광주광역시 동구 충장로 64-1, (충장로3가)','61483');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (820,'버거킹','광주충장점','광주광역시 동구 황금동 71번지','광주광역시','동구','광주광역시 동구 충장로안길 38, (황금동)','61483');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (821,'맥도날드','동림DT점','광주광역시 북구 동림동 900-41번지','광주광역시','북구','광주광역시 북구 하남대로 635, (동림동)','61272');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (822,'롯데리아','홈플러스동광주점','광주광역시 북구 두암동 575-1번지','광주광역시','북구','광주광역시 북구 동문대로 200, (두암동)','61165');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (823,'파파이스','0','광주광역시 북구 두암동 575-1번지','광주광역시','북구','광주광역시 북구 동문대로 200, (두암동)','61165');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (824,'롯데리아','문흥점','광주광역시 북구 문흥동 953-9번지','광주광역시','북구','광주광역시 북구 서하로 353-1, (문흥동)','61124');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (825,'롯데리아','0','광주광역시 북구 생용동 649번지','광주광역시','북구','광주광역시 북구 우치로 677, (생용동)','61028');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (826,'버거킹','광주신용점','광주광역시 북구 신용동 731번지','광주광역시','북구','광주광역시 북구 첨단연신로91번길 10, (신용동)','61087');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (827,'롯데리아','신용점','광주광역시 북구 신용동 732번지','광주광역시','북구','광주광역시 북구 첨단연신로91번길 6, (신용동)','61087');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (828,'맥도날드','광주첨단DT점','광주광역시 북구 용두동 311-15번지','광주광역시','북구','광주광역시 북구 임방울대로 1048, (용두동)','61074');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (829,'롯데리아','용봉점','광주광역시 북구 용봉동 1037-6번지','광주광역시','북구','광주광역시 북구 비엔날레로 112, (용봉동)','61107');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (830,'맥도날드','용봉DT점','광주광역시 북구 용봉동 1130-6번지','광주광역시','북구','광주광역시 북구 설죽로 289-1, (용봉동)','61063');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (831,'맥도날드','전남대DT점','광주광역시 북구 용봉동 127-1번지','광주광역시','북구','광주광역시 북구 우치로 134, (용봉동)','61188');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (832,'KFC','0','광주광역시 북구 용봉동 1413-1번지','광주광역시','북구','광주광역시 북구 설죽로 270, (용봉동)','61177');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (833,'롯데리아','전대점','광주광역시 북구 용봉동 151-25번지','광주광역시','북구','광주광역시 북구 우치로 112, (용봉동)','61188');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (834,'맥도날드','광주운암DT점','광주광역시 북구 운암동 1078-2번지','광주광역시','북구','광주광역시 북구 북문대로187번길 2, (운암동)','61266');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (835,'버거킹','광주일곡점','광주광역시 북구 일곡동 841-6번지','광주광역시','북구','광주광역시 북구 설죽로 495, (일곡동)','61040');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (836,'KFC','0','광주광역시 서구 광천동 49-1번지','광주광역시','서구','광주광역시 서구 무진대로 904, (광천동)','61937');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (837,'롯데리아','광주터미널점','광주광역시 서구 광천동 49-1번지','광주광역시','서구','광주광역시 서구 무진대로 904, (광천동)','61937');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (838,'버거킹','광주터미널점','광주광역시 서구 광천동 49-1번지','광주광역시','서구','광주광역시 서구 무진대로 904, (광천동)','61937');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (883,'맥도날드','이마트성서점','대구광역시 달서구 이곡동 1254번지','대구광역시','달서구','대구광역시 달서구 이곡동로 24, (이곡동)','42620');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (884,'버거킹','대구성서이마트점','대구광역시 달서구 이곡동 1254번지','대구광역시','달서구','대구광역시 달서구 이곡동로 24, (이곡동)','42620');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (885,'롯데리아','진천역점','대구광역시 달서구 진천동 581-3번지','대구광역시','달서구','대구광역시 달서구 월배로 89, (진천동)','42784');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (886,'맥도날드','0','대구광역시 달서구 호림동 20-1번지','대구광역시','달서구','대구광역시 달서구 달서대로 431, (호림동)','42714');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (887,'맥도날드','SKDT점','대구광역시 달서구 호산동 720-2번지','대구광역시','달서구','대구광역시 달서구 달서대로 455, (호산동)','42713');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (888,'롯데리아','대구가창DT점','대구광역시 달성군 가창면 용계리 565-6번지','대구광역시','달성군','대구광역시 달성군 가창면 가창로 1075','42936');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (889,'롯데리아','다사점','대구광역시 달성군 다사읍 매곡리 719-1번지','대구광역시','달성군','대구광역시 달성군 다사읍 달구벌대로 770','42915');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (890,'롯데리아','세천점','대구광역시 달성군 다사읍 세천리 1581-6번지','대구광역시','달성군','대구광역시 달성군 다사읍 세천로 141','42922');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (891,'맥도날드','대구다사DT점','대구광역시 달성군 다사읍 죽곡리 5-23번지','대구광역시','달성군','대구광역시 달성군 다사읍 달구벌대로 825','42910');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (892,'버거킹','테크노폴리스점','대구광역시 달성군 현풍면 중리 491-2번지','대구광역시','달성군','대구광역시 달성군 현풍면 테크노중앙대로 243','43017');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (893,'롯데리아','현풍테크노폴리스점','대구광역시 달성군 현풍면 중리 505번지','대구광역시','달성군','대구광역시 달성군 현풍면 테크노대로 61','43017');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (894,'맘스터치','방촌점','대구광역시 동구 방촌동 1058번지','대구광역시','동구','대구광역시 동구 동촌로 196, (방촌동)','41159');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (895,'맥도날드','방촌점','대구광역시 동구 방촌동 883-9번지','대구광역시','동구','대구광역시 동구 동촌로 243, (방촌동)','41146');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (896,'롯데리아','롯데몰이시아폴리스점','대구광역시 동구 봉무동 1545번지','대구광역시','동구','대구광역시 동구 팔공로49길 16, (봉무동)','41026');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (897,'버거킹','반야월이마트점','대구광역시 동구 신서동 520-1번지','대구광역시','동구','대구광역시 동구 안심로 389-2, (신서동)','41084');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (898,'롯데리아','0','대구광역시 동구 신암동 1196-7번지','대구광역시','동구','대구광역시 동구 신성로 31-1, (신암동)','41205');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (899,'롯데리아','동대구역2호점','대구광역시 동구 신암동 294번지','대구광역시','동구','대구광역시 동구 동대구로 550, (신암동)','41229');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (900,'롯데리아','대구율하점','대구광역시 동구 율하동 1117번지','대구광역시','동구','대구광역시 동구 안심로 80, (율하동)','41097');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (901,'버거킹','대구율하점','대구광역시 동구 율하동 1225번지','대구광역시','동구','대구광역시 동구 안심로22길 10, (율하동)','41098');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (902,'맘스터치','동구율하점','대구광역시 동구 율하동 921-2번지','대구광역시','동구','대구광역시 동구 율하동로23길 23-1, (율하동)','41120');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (903,'롯데리아','효목점','대구광역시 동구 효목동 546번지','대구광역시','동구','대구광역시 동구 효목로 22, (효목동)','41239');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (904,'롯데리아','아양교점','대구광역시 동구 효목동 80-2번지','대구광역시','동구','대구광역시 동구 아양로 240, (효목동)','41169');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (905,'롯데리아','칠곡구암점','대구광역시 북구 구암동 765-2번지','대구광역시','북구','대구광역시 북구 학정로 440, (구암동)','41424');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (906,'버거킹','대구칠곡3지구점','대구광역시 북구 동천동 892-2번지','대구광역시','북구','대구광역시 북구 팔거천동로 224, (동천동)','41423');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (907,'롯데리아','홈플러스칠곡점','대구광역시 북구 동천동 968번지','대구광역시','북구','대구광역시 북구 동암로12길 8, (동천동)','41422');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (908,'맥도날드','복현DT점','대구광역시 북구 복현동 364-5번지','대구광역시','북구','대구광역시 북구 동북로 303, (복현동)','41530');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (909,'롯데리아','금호사수점','대구광역시 북구 사수동 953번지','대구광역시','북구','대구광역시 북구 한강로4길 9, (사수동)','41598');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (910,'롯데리아','0','대구광역시 북구 칠성동2가 302-155번지','대구광역시','북구','대구광역시 북구 태평로 161, (칠성동2가)','41581');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (911,'버거킹','대구삼성창조경제단지점','대구광역시 북구 침산동 105-2번지','대구광역시','북구','대구광역시 북구 호암로 51, (침산동)','41585');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (912,'맥도날드','대구침산DT점','대구광역시 북구 침산동 244-1번지','대구광역시','북구','대구광역시 북구 침산로 120, (침산동)','41584');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (913,'롯데리아','0','대구광역시 북구 태전동 1108번지','대구광역시','북구','대구광역시 북구 학정로 40, (태전동)','41471');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (914,'맥도날드','대구태전DT점','대구광역시 북구 태전동 409-12번지','대구광역시','북구','대구광역시 북구 칠곡중앙대로 303, (태전동)','41457');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (915,'KFC','0','대구광역시 서구 내당동 463-63번지','대구광역시','서구','대구광역시 서구 달구벌대로 1689, (내당동)','41856');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (916,'롯데리아','북부터미널점','대구광역시 서구 비산동 1299-6번지','대구광역시','서구','대구광역시 서구 달서천로41길 53, (비산동)','41722');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (917,'롯데리아','북비산네거리점','대구광역시 서구 비산동 537-7번지','대구광역시','서구','대구광역시 서구 달서로 182, (비산동)','41794');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (918,'롯데리아','북비산네거리점','대구광역시 서구 비산동 61-4번지','대구광역시','서구','대구광역시 서구 북비산로 354, (비산동)','41794');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (919,'맘스터치','북부정류장점','대구광역시 서구 비산동 883-1번지','대구광역시','서구','대구광역시 서구 서대구로 304, (비산동)','41724');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (920,'버거킹','대구평리DT점','대구광역시 서구 평리동 1099-3번지','대구광역시','서구','대구광역시 서구 국채보상로 298, (평리동)','41813');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (921,'롯데리아','대구평리점','대구광역시 서구 평리동 1334-12번지','대구광역시','서구','대구광역시 서구 국채보상로 246, (평리동)','41824');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (922,'롯데리아','대구스타디움점','대구광역시 수성구 대흥동 504번지','대구광역시','수성구','대구광역시 수성구 유니버시아드로 140, (대흥동)','42250');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (923,'롯데리아','동양터미널점','대구광역시 수성구 두산동 105번지','대구광역시','수성구','대구광역시 수성구 동대구로 59, (두산동)','42171');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (924,'롯데리아','두산D/I점','대구광역시 수성구 두산동 205-5번지','대구광역시','수성구','대구광역시 수성구 무학로 121, (두산동)','42175');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (925,'롯데리아','만촌점','대구광역시 수성구 만촌동 1040-63번지','대구광역시','수성구','대구광역시 수성구 달구벌대로 2594, (만촌동)','42067');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (926,'맥도날드','만촌이마트점','대구광역시 수성구 만촌동 1356-5번지','대구광역시','수성구','대구광역시 수성구 동원로 136, (만촌동)','42037');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (927,'버거킹','대구만촌점','대구광역시 수성구 만촌동 849-29번지','대구광역시','수성구','대구광역시 수성구 달구벌대로 2622, (만촌동)','42068');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (928,'맥도날드','대구만촌DT점','대구광역시 수성구 만촌동 853-1번지','대구광역시','수성구','대구광역시 수성구 달구벌대로 2634, (만촌동)','42068');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (929,'맥도날드','대구시지DT점','대구광역시 수성구 매호동 1087-1번지','대구광역시','수성구','대구광역시 수성구 달구벌대로 3199, (매호동)','42271');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (930,'KFC','0','대구광역시 수성구 범물동 1334-2번지','대구광역시','수성구','대구광역시 수성구 지범로 192, (범물동)','42209');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (931,'롯데리아','청구네거리점','대구광역시 수성구 범어동 1109번지','대구광역시','수성구','대구광역시 수성구 국채보상로 804, (범어동)','42009');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (932,'롯데리아','0','대구광역시 수성구 범어동 371번지','대구광역시','수성구','대구광역시 수성구 동대구로 274, (범어동)','42099');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (933,'버거킹','대구범어점','대구광역시 수성구 범어동 774-25번지','대구광역시','수성구','대구광역시 수성구 동대구로 251, (범어동)','42140');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (934,'맥도날드','대구수성DT점','대구광역시 수성구 수성동4가 1020-25번지','대구광역시','수성구','대구광역시 수성구 달구벌대로 2347, (수성동4가)','42016');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (935,'맥도날드','대구수성DT점','대구광역시 수성구 수성동4가 1020-2번지','대구광역시','수성구','대구광역시 수성구 달구벌대로 2345, (수성동4가)','42016');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (936,'롯데리아','사월점','대구광역시 수성구 신매동 30-5번지','대구광역시','수성구','대구광역시 수성구 달구벌대로 3280, (신매동)','42278');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (937,'버거킹','대구시지점','대구광역시 수성구 신매동 567-58번지','대구광역시','수성구','대구광역시 수성구 신매로19길 46, (신매동)','42274');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (938,'버거킹','삼성라이온즈파크점','대구광역시 수성구 연호동 648번지','대구광역시','수성구','대구광역시 수성구 야구전설로 1, (연호동)','42250');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (939,'롯데리아','대구월드컵대로점','대구광역시 수성구 욱수동 121번지','대구광역시','수성구','대구광역시 수성구 유니버시아드로 338, (욱수동)','42288');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (940,'맘스터치','중동점','대구광역시 수성구 중동 100-2번지','대구광역시','수성구','대구광역시 수성구 수성로 214, (중동)','42151');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (941,'맥도날드','0','대구광역시 수성구 중동 70-10번지','대구광역시','수성구','대구광역시 수성구 수성로 238, (중동)','42151');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (942,'맥도날드','희망DT점','대구광역시 수성구 중동 70-1번지','대구광역시','수성구','대구광역시 수성구 수성로 238, (중동)','42151');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (943,'롯데리아','오산점','대구광역시 수성구 지산동 1276-6번지','대구광역시','수성구','대구광역시 수성구 지범로 163, (지산동)','42196');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (944,'버거킹','지산점','대구광역시 수성구 지산동 1276-7번지','대구광역시','수성구','대구광역시 수성구 지범로 159, (지산동)','42196');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (945,'맘스터치','0','대구광역시 수성구 황금동 428-9번지','대구광역시','수성구','대구광역시 수성구 청수로35길 99, (황금동)','42112');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (946,'맥도날드','대구황금점','대구광역시 수성구 황금동 567-11번지','대구광역시','수성구','대구광역시 수성구 청수로 157, (황금동)','42110');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (947,'KFC','0','대구광역시 수성구 황금동 782번지','대구광역시','수성구','대구광역시 수성구 동대구로 155, (황금동)','42146');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (948,'롯데리아','동성로2호점','대구광역시 중구 공평동 51-3번지','대구광역시','중구','대구광역시 중구 동성로6길 26, (공평동)','41941');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (949,'롯데리아','명덕네거리점','대구광역시 중구 남산동 2110-8번지','대구광역시','중구','대구광역시 중구 명덕로 181, (남산동)','41968');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (950,'롯데리아','남일점','대구광역시 중구 남일동 121-1번지','대구광역시','중구','대구광역시 중구 중앙대로 404, (남일동)','41937');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (951,'버거킹','0','대구광역시 중구 대봉동 21-7번지','대구광역시','중구','대구광역시 중구 달구벌대로 2194, (대봉동)','41951');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (952,'롯데리아','서문시장점','대구광역시 중구 동산동 576번지','대구광역시','중구','대구광역시 중구 달성로 22, (동산동)','41931');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (953,'버거킹','대구문화점','대구광역시 중구 동성로2가 66-1번지','대구광역시','중구','대구광역시 중구 동성로2길 95, (동성로2가)','41938');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (954,'롯데리아','대구동성로점','대구광역시 중구 동성로2가 88-22번지','대구광역시','중구','대구광역시 중구 동성로 39, (동성로2가)','41937');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (955,'맥도날드','동성로교보점','대구광역시 중구 동성로2가 88-25번지','대구광역시','중구','대구광역시 중구 국채보상로 586, (동성로2가)','41937');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (956,'맥도날드','동성로2호점','대구광역시 중구 사일동 77번지','대구광역시','중구','대구광역시 중구 동성로 23-2, (사일동)','41937');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (957,'맥도날드','동성로2호점','대구광역시 중구 사일동 77번지','대구광역시','중구','대구광역시 중구 동성로 23-2, (사일동)','41937');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (958,'롯데리아','경대병원점','대구광역시 중구 삼덕동2가 101-1번지','대구광역시','중구','대구광역시 중구 동덕로 125, (삼덕동2가)','41940');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (959,'롯데리아','법동점','대전광역시 대덕구 법동 192-1번지','대전광역시','대덕구','대전광역시 대덕구 동춘당로 187, (법동)','34406');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (960,'롯데리아','비래점','대전광역시 대덕구 비래동 126-22번지','대전광역시','대덕구','대전광역시 대덕구 비래동로 13, (비래동)','34417');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (961,'롯데리아','가양DT점','대전광역시 대덕구 비래동 555-12번지','대전광역시','대덕구','대전광역시 대덕구 비래서로10번길 40, (비래동)','34419');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (962,'맥도날드','대전신탄진디티점','대전광역시 대덕구 상서동 834-4번지','대전광역시','대덕구','대전광역시 대덕구 신탄진로 605, (상서동)','34332');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (963,'롯데리아','송촌점','대전광역시 대덕구 송촌동 460-5번지','대전광역시','대덕구','대전광역시 대덕구 동춘당로94번길 11-7, (송촌동)','34401');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (964,'롯데리아','신탄진점','대전광역시 대덕구 신탄진동 144-30번지','대전광역시','대덕구','대전광역시 대덕구 신탄진로 818-1, (신탄진동)','34311');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (965,'맘스터치','신탄진점','대전광역시 대덕구 신탄진동 145-10번지','대전광역시','대덕구','대전광역시 대덕구 신탄진로 809-1, (신탄진동)','34311');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (966,'롯데리아','0','대전광역시 대덕구 와동 375번지','대전광역시','대덕구','대전광역시 대덕구 신탄진로 222, (와동)','34346');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (967,'맥도날드','대전한남대디티점','대전광역시 대덕구 중리동 230-15번지','대전광역시','대덕구','대전광역시 대덕구 한밭대로 1102, (중리동)','34426');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (968,'롯데리아','중리점','대전광역시 대덕구 중리동 368-1번지','대전광역시','대덕구','대전광역시 대덕구 중리로 74-1, (중리동)','34389');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (969,'맘스터치','대전보건대점','대전광역시 동구 가양동 162-3번지','대전광역시','동구','대전광역시 동구 우암로 324, (가양동)','34507');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (970,'롯데리아','패션아일랜드점','대전광역시 동구 가오동 557번지','대전광역시','동구','대전광역시 동구 은어송로 72, (가오동)','34681');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (971,'롯데리아','대전대동점','대전광역시 동구 대동 180-27번지','대전광역시','동구','대전광역시 동구 계족로 174, (대동)','34648');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (972,'롯데리아','대동점','대전광역시 동구 대동 180-28번지','대전광역시','동구','대전광역시 동구 동대전로 80-4, (대동)','34648');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (973,'맘스터치','대전복합터미널점','대전광역시 동구 성남동 494-26번지','대전광역시','동구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (974,'버거킹','대전터미널SK점','대전광역시 동구 성남동 502-1번지','대전광역시','동구','대전광역시 동구 동서대로 1654, (성남동)','34572');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (975,'버거킹','대전터미널SK점','대전광역시 동구 성남동 502-7번지','대전광역시','동구','대전광역시 동구 동서대로 1664, (성남동)','34572');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (976,'롯데리아','대전용운점','대전광역시 동구 용운동 307-11번지','대전광역시','동구','대전광역시 동구 용운로 148, (용운동)','34661');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (977,'맥도날드','대전터미널점','대전광역시 동구 용전동 63-3번지','대전광역시','동구','대전광역시 동구 동서대로 1689, (용전동)','34551');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (978,'롯데리아','홈플러스동대전점','대전광역시 동구 용전동 65-1번지','대전광역시','동구','대전광역시 동구 한밭대로 1282, (용전동)','34549');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (979,'맥도날드','대전터미널점','대전광역시 동구 용전동 68-2번지','대전광역시','동구','대전광역시 동구 동서대로1695번길 30, (용전동)','34551');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (980,'롯데리아','대전역사점','대전광역시 동구 정동 1-1번지','대전광역시','동구','대전광역시 동구 중앙로 215, (정동)','34626');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (981,'롯데리아','대전중동점','대전광역시 동구 중동 26-18번지','대전광역시','동구','대전광역시 동구 중앙로 189-2, (중동)','34627');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (982,'롯데리아','대전중동점','대전광역시 동구 중동 26-5번지','대전광역시','동구','대전광역시 동구 중앙로 189-1, (중동)','34627');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (983,'롯데리아','가수원점','대전광역시 서구 가수원동 1058번지','대전광역시','서구','대전광역시 서구 계백로 1161, (가수원동)','35368');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (984,'맥도날드','대전가수원DT점','대전광역시 서구 가수원동 655-4번지','대전광역시','서구','대전광역시 서구 계백로 1124, (가수원동)','35385');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (985,'맥도날드','가장DT점','대전광역시 서구 가장동 54-1번지','대전광역시','서구','대전광역시 서구 도산로 324, (가장동)','35312');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (986,'맥도날드','가장DT점','대전광역시 서구 가장동 54-25번지','대전광역시','서구','대전광역시 서구 도산로 324, (가장동)','35312');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (987,'롯데리아','갈마점','대전광역시 서구 갈마동 378-15번지','대전광역시','서구','대전광역시 서구 갈마로 64, (갈마동)','35277');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (988,'롯데리아','0','대전광역시 서구 관저동 1008번지','대전광역시','서구','대전광역시 서구 관저중로 98, (관저동)','35378');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (989,'KFC','0','대전광역시 서구 관저동 1341번지','대전광역시','서구','대전광역시 서구 구봉로147번길 68-12, (관저동)','35378');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (990,'KFC','대전롯데점','대전광역시 서구 괴정동 423-1번지','대전광역시','서구','대전광역시 서구 계룡로 598, (괴정동)','35299');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (991,'버거킹','대전롯데점','대전광역시 서구 괴정동 423-1번지','대전광역시','서구','대전광역시 서구 계룡로 598, (괴정동)','35299');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (992,'롯데리아','괴정점','대전광역시 서구 괴정동 423-5번지','대전광역시','서구','대전광역시 서구 계룡로 618, (괴정동)','35299');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (993,'맘스터치','0','대전광역시 서구 도마동 110-10번지','대전광역시','서구','대전광역시 서구 도솔4길 16, (도마동)','35338');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (994,'롯데리아','대전도안점','대전광역시 서구 도안동 1258번지','대전광역시','서구','대전광역시 서구 원도안로179번길 76-9, (도안동)','35357');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (995,'버거킹','대전도안점','대전광역시 서구 도안동 847번지','대전광역시','서구','대전광역시 서구 도안북로93번길 25, (도안동)','35350');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (996,'버거킹','대전도안점','대전광역시 서구 도안동 849번지','대전광역시','서구','대전광역시 서구 동서대로 682, (도안동)','35350');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (997,'맥도날드','타임월드점','대전광역시 서구 둔산동 1011번지','대전광역시','서구','대전광역시 서구 둔산로31번길 16, (둔산동)','35229');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (998,'롯데리아','0','대전광역시 서구 둔산동 1036번지','대전광역시','서구','대전광역시 서구 대덕대로 211, (둔산동)','35229');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (999,'맥도날드','대전타임월드점','대전광역시 서구 둔산동 1036번지','대전광역시','서구','대전광역시 서구 대덕대로 211, (둔산동)','35229');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1000,'버거킹','갤러리아점','대전광역시 서구 둔산동 1036번지','대전광역시','서구','대전광역시 서구 대덕대로 211, (둔산동)','35229');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1001,'버거킹','대전둔산점','대전광역시 서구 둔산동 1072번지','대전광역시','서구','대전광역시 서구 둔산로 20, (둔산동)','35230');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1002,'맘스터치','둔산교보문고점','대전광역시 서구 둔산동 1362번지','대전광역시','서구','대전광역시 서구 대덕대로 226, (둔산동)','35233');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1003,'KFC','0','대전광역시 서구 둔산동 1411번지','대전광역시','서구','대전광역시 서구 둔산로 121, (둔산동)','35240');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1004,'롯데리아','0','대전광역시 서구 둔산동 1416번지','대전광역시','서구','대전광역시 서구 둔산중로 46, (둔산동)','35241');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1005,'버거킹','대전시청점','대전광역시 서구 둔산동 1487번지','대전광역시','서구','대전광역시 서구 둔산로 142, (둔산동)','35241');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1006,'맘스터치','둔산점','대전광역시 서구 둔산동 1498번지','대전광역시','서구','대전광역시 서구 문예로 37, (둔산동)','35241');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1007,'맥도날드','세이브존대전점','대전광역시 서구 둔산동 1809번지','대전광역시','서구','대전광역시 서구 둔산로 201, (둔산동)','35245');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1008,'파파이스','대전세이브존','대전광역시 서구 둔산동 1809번지','대전광역시','서구','대전광역시 서구 둔산로 201, (둔산동)','35245');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1009,'롯데리아','노은점','대전광역시 서구 둔산동 2132번지','대전광역시','서구','대전광역시 서구 둔산남로 181, (둔산동)','35250');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1010,'KFC','0','대전광역시 서구 둔산동 959-2번지','대전광역시','서구','대전광역시 서구 둔산북로 41, (둔산동)','35229');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1011,'맥도날드','둔산이마트점','대전광역시 서구 둔산동 959-2번지','대전광역시','서구','대전광역시 서구 둔산북로 41, (둔산동)','35229');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1012,'파파이스','세이브존점','대전광역시 서구 둔산동 991번지','대전광역시','서구','대전광역시 서구 둔산로31번길 35, (둔산동)','35229');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1234,'롯데리아','역삼점','서울특별시 강남구 역삼동 824-19번지','서울특별시','강남구','서울특별시 강남구 테헤란로 116, (역삼동)','6233');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1235,'버거킹','강남진솔점','서울특별시 강남구 역삼동 826-22번지','서울특별시','강남구','서울특별시 강남구 강남대로 368, (역삼동)','6241');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1236,'롯데리아','강남우성사거리점','서울특별시 강남구 역삼동 832번지','서울특별시','강남구','서울특별시 강남구 강남대로 334, (역삼동)','6252');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1237,'KFC','일원동점','서울특별시 강남구 일원동 615-1번지','서울특별시','강남구','서울특별시 강남구 개포로110길 43, (일원동)','6337');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1238,'파파이스','0','서울특별시 강남구 자곡동 596번지','서울특별시','강남구','서울특별시 강남구 자곡로 201, (자곡동)','6372');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1239,'버거킹','청담주성GS점','서울특별시 강남구 청담동 132-9번지','서울특별시','강남구','서울특별시 강남구 영동대로 716, (청담동)','6075');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1240,'버거킹','청담점','서울특별시 강남구 청담동 85-5번지','서울특별시','강남구','서울특별시 강남구 선릉로 812, (청담동)','6014');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1241,'맥도날드','청담DT점','서울특별시 강남구 청담동 87-3번지','서울특별시','강남구','서울특별시 강남구 도산대로 407, (청담동)','6014');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1242,'맥도날드','길동SK점','서울특별시 강동구 길동 252-4번지','서울특별시','강동구','서울특별시 강동구 천호대로 1207, (길동)','5350');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1243,'롯데리아','0','서울특별시 강동구 길동 350-1번지','서울특별시','강동구','서울특별시 강동구 천중로 206, (길동)','5343');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1244,'버거킹','길동사거리점','서울특별시 강동구 길동 429번지','서울특별시','강동구','서울특별시 강동구 양재대로 1440, (길동)','5356');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1245,'KFC','0','서울특별시 강동구 길동 453번지','서울특별시','강동구','서울특별시 강동구 천호대로 1113, (길동)','5355');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1246,'맥도날드','서울둔촌DT점','서울특별시 강동구 둔촌동 517-2번지','서울특별시','강동구','서울특별시 강동구 양재대로 1382, (둔촌동)','5372');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1247,'버거킹','명일SK점','서울특별시 강동구 명일동 305-51번지','서울특별시','강동구','서울특별시 강동구 고덕로 168, (명일동)','5257');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1248,'롯데리아','명일DT점','서울특별시 강동구 명일동 306-2번지','서울특별시','강동구','서울특별시 강동구 양재대로 1651, (명일동)','5257');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1249,'맘스터치','명일점','서울특별시 강동구 명일동 327-1번지','서울특별시','강동구','서울특별시 강동구 구천면로 428, (명일동)','5292');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1250,'KFC','0','서울특별시 강동구 명일동 46-4번지','서울특별시','강동구','서울특별시 강동구 고덕로 276, (명일동)','5269');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1251,'롯데리아','고덕역점','서울특별시 강동구 명일동 47-12번지','서울특별시','강동구','서울특별시 강동구 동남로73길 26, (명일동)','5269');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1252,'롯데리아','0','서울특별시 강동구 상일동 259번지','서울특별시','강동구','서울특별시 강동구 상일로 33, (상일동)','5282');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1253,'맥도날드','상일동점','서울특별시 강동구 상일동 377번지','서울특별시','강동구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1254,'맥도날드','상일동점','서울특별시 강동구 상일동 502번지','서울특별시','강동구','서울특별시 강동구 상일로6길 39, (상일동)','5288');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1255,'롯데리아','길동점','서울특별시 강동구 성내동 244-3번지','서울특별시','강동구','서울특별시 강동구 천호대로 1124, (성내동)','5373');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1256,'롯데리아','0','서울특별시 강동구 성내동 319-1번지','서울특별시','강동구','서울특별시 강동구 올림픽로 556, (성내동)','5391');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1257,'맥도날드','강동구청점','서울특별시 강동구 성내동 539-2번지','서울특별시','강동구','서울특별시 강동구 성내로 15, (성내동)','5392');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1258,'버거킹','천호역점','서울특별시 강동구 성내동 62-4번지','서울특별시','강동구','서울특별시 강동구 천호대로 1012, (성내동)','5378');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1259,'맥도날드','암사역점','서울특별시 강동구 암사동 501-2번지','서울특별시','강동구','서울특별시 강동구 올림픽로 778, (암사동)','5264');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1260,'버거킹','암사점','서울특별시 강동구 암사동 501-2번지','서울특별시','강동구','서울특별시 강동구 올림픽로 778, (암사동)','5264');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1261,'맥도날드','굽은다리역DT점','서울특별시 강동구 천호동 31-10번지','서울특별시','강동구','서울특별시 강동구 양재대로 1587, (천호동)','5307');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1262,'롯데리아','천호역점','서울특별시 강동구 천호동 429-2번지','서울특별시','강동구','서울특별시 강동구 올림픽로 654, (천호동)','5328');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1263,'롯데리아','홈플러스강동점','서울특별시 강동구 천호동 42번지','서울특별시','강동구','서울특별시 강동구 양재대로 1571, (천호동)','5314');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1264,'맥도날드','천호이마트점','서울특별시 강동구 천호동 454-1번지','서울특별시','강동구','서울특별시 강동구 천호대로 1017, (천호동)','5328');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1265,'맥도날드','미아역점','서울특별시 강북구 미아동 197-5번지','서울특별시','강북구','서울특별시 강북구 도봉로 204, (미아동)','1133');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1266,'KFC','0','서울특별시 강북구 미아동 60-5번지','서울특별시','강북구','서울특별시 강북구 도봉로 41-1, (미아동)','1211');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1267,'맥도날드','미아DT점','서울특별시 강북구 미아동 682-12번지','서울특별시','강북구','서울특별시 강북구 삼양로 158, (미아동)','1201');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1268,'롯데리아','삼양사거리점','서울특별시 강북구 미아동 701-5번지','서울특별시','강북구','서울특별시 강북구 솔샘로 237, (미아동)','1189');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1269,'맥도날드','미아점','서울특별시 강북구 미아동 71-5번지','서울특별시','강북구','서울특별시 강북구 도봉로 48, (미아동)','1215');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1270,'맥도날드','서울번동DT점','서울특별시 강북구 번동 106번지','서울특별시','강북구','서울특별시 강북구 월계로 191, (번동)','1231');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1271,'롯데리아','번동디티점','서울특별시 강북구 번동 410-82번지','서울특별시','강북구','서울특별시 강북구 덕릉로 171, (번동)','1067');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1272,'롯데리아','번동D/T점','서울특별시 강북구 번동 410-94번지','서울특별시','강북구','서울특별시 강북구 한천로 963, (번동)','1067');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1273,'맥도날드','수유점','서울특별시 강북구 번동 418-17번지','서울특별시','강북구','서울특별시 강북구 도봉로 342, (번동)','1063');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1274,'롯데리아','덕성여대점','서울특별시 강북구 수유동 279-84번지','서울특별시','강북구','서울특별시 강북구 삼양로 507, (수유동)','1011');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1275,'버거킹','가양이마트점','서울특별시 강서구 가양동 449-19번지','서울특별시','강서구','서울특별시 강서구 양천로 559, (가양동)','7532');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1276,'롯데리아','신김포공항2호점','서울특별시 강서구 공항동 1373번지','서울특별시','강서구','서울특별시 강서구 하늘길 213, (공항동)','7505');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1277,'맥도날드','송정역점','서울특별시 강서구 공항동 45-38번지','서울특별시','강서구','서울특별시 강서구 공항대로 21, (공항동)','7619');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1013,'롯데리아','복수점','대전광역시 서구 복수동 270-1번지','대전광역시','서구','대전광역시 서구 복수중로 30, (복수동)','35404');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1014,'롯데리아','둔산점','대전광역시 서구 월평동 246번지','대전광역시','서구','대전광역시 서구 월평북로 90, (월평동)','35214');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1015,'롯데리아','월평점','대전광역시 서구 월평동 912번지','대전광역시','서구','대전광역시 서구 월평로 54, (월평동)','35225');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1016,'롯데리아','대전정림점','대전광역시 서구 정림동 552번지','대전광역시','서구','대전광역시 서구 정림로 71, (정림동)','35393');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1017,'맥도날드','카이스트점','대전광역시 유성구 가정동 2-23번지','대전광역시','유성구','대전광역시 유성구 대덕대로 535, (가정동)','34131');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1018,'롯데리아','롯데마대덕테크노밸리점','대전광역시 유성구 관평동 887번지','대전광역시','유성구','대전광역시 유성구 테크노중앙로 14, (관평동)','34017');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1019,'롯데리아','대전한밭대점','대전광역시 유성구 덕명동 592-1번지','대전광역시','유성구','대전광역시 유성구 학하중앙로 6, (덕명동)','34159');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1020,'롯데리아','대전도룡점','대전광역시 유성구 도룡동 385-16번지','대전광역시','유성구','대전광역시 유성구 대덕대로 594, (도룡동)','34121');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1021,'롯데리아','도안신도시점','대전광역시 유성구 봉명동 1035-1번지','대전광역시','유성구','대전광역시 유성구 도안대로 512-11, (봉명동)','34190');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1022,'맥도날드','유성점','대전광역시 유성구 봉명동 446-5번지','대전광역시','유성구','대전광역시 유성구 계룡로87번길 3, (봉명동)','34168');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1023,'롯데리아','유성점','대전광역시 유성구 봉명동 466-4번지','대전광역시','유성구','대전광역시 유성구 계룡로 58, (봉명동)','34178');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1024,'맘스터치','0','대전광역시 유성구 송강동 49-5번지','대전광역시','유성구','대전광역시 유성구 봉산로 15, (송강동)','34009');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1025,'롯데리아','자운대점','대전광역시 유성구 신봉동 230-14번지','대전광역시','유성구','대전광역시 유성구 자운로97번길 410, (신봉동)','34059');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1026,'맥도날드','0','대전광역시 유성구 용계동 664-8번지','대전광역시','유성구','대전광역시 유성구 도안북로 81, (용계동)','34218');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1027,'롯데리아','롯데마트서대전점','대전광역시 유성구 원내동 33-2번지','대전광역시','유성구','대전광역시 유성구 유성대로 26-37, (원내동)','34223');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1028,'롯데리아','죽동점','대전광역시 유성구 죽동 717-3번지','대전광역시','유성구','대전광역시 유성구 죽동로279번길 16, (죽동)','34127');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1029,'버거킹','대전세종SK점','대전광역시 유성구 하기동 511-1번지','대전광역시','유성구','대전광역시 유성구 북유성대로 288, (하기동)','34063');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1030,'맘스터치','대전아쿠아리움점','대전광역시 중구 대사동 198-14번지','대전광역시','중구','대전광역시 중구 보문산공원로 469, (대사동)','35052');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1031,'롯데리아','0','대전광역시 중구 대사동 248-339번지','대전광역시','중구','대전광역시 중구 계룡로 938, (대사동)','34964');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1032,'맥도날드','대전센트럴SKDT점','대전광역시 중구 대흥동 522-1번지','대전광역시','중구','대전광역시 중구 중앙로 64, (대흥동)','34940');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1033,'버거킹','대전세이점','대전광역시 중구 문화동 1-16번지','대전광역시','중구','대전광역시 중구 계백로 1700, (문화동)','34956');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1034,'맥도날드','대전문화DT점','대전광역시 중구 문화동 284-31번지','대전광역시','중구','대전광역시 중구 문화로 210, (문화동)','35017');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1035,'롯데리아','대전은행점','대전광역시 중구 문화동 466-6번지','대전광역시','중구','대전광역시 중구 천근로 23, (문화동)','35002');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1036,'맥도날드','대전부사DT점','대전광역시 중구 부사동 87-14번지','대전광역시','중구','대전광역시 중구 충무로 139, (부사동)','34931');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1037,'롯데리아','대전산성점','대전광역시 중구 산성동 117-6번지','대전광역시','중구','대전광역시 중구 보문산로 45-1, (산성동)','34989');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1038,'맘스터치','대전산성동점','대전광역시 중구 산성동 121-8번지','대전광역시','중구','대전광역시 중구 대둔산로 391, (산성동)','35079');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1039,'롯데리아','대전중앙점','대전광역시 중구 선화동 3-3번지','대전광역시','중구','대전광역시 중구 중앙로 139, (선화동)','34838');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1040,'버거킹','대전용두디티점','대전광역시 중구 용두동 29-5번지','대전광역시','중구','대전광역시 중구 계룡로 853, (용두동)','34857');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1041,'롯데리아','대전버드내점','대전광역시 중구 유천동 324-22번지','대전광역시','중구','대전광역시 중구 태평로 30, (유천동)','34887');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1042,'맥도날드','대전유천디티점','대전광역시 중구 유천동 327-4번지','대전광역시','중구','대전광역시 중구 계백로 1549, (유천동)','34891');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1043,'롯데리아','0','대전광역시 중구 은행동 55-5번지','대전광역시','중구','대전광역시 중구 중앙로 172-1, (은행동)','34922');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1044,'KFC','은행동1점','대전광역시 중구 은행동 65-1번지','대전광역시','중구','대전광역시 중구 대종로488번길 54, (은행동)','34922');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1045,'맘스터치','대전태평점','대전광역시 중구 태평동 395-1번지','대전광역시','중구','대전광역시 중구 태평로 71, (태평동)','34885');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1046,'롯데리아','김해국제공항점','부산광역시 강서구 대저2동 2350-1번지','부산광역시','강서구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1047,'롯데리아','부산명지국제신도시점','부산광역시 강서구 명지동 3357-2번지','부산광역시','강서구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1048,'맘스터치','명지국제신도시점','부산광역시 강서구 명지동 3358-2번지','부산광역시','강서구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1049,'롯데리아','부산신호점','부산광역시 강서구 신호동 218-1번지','부산광역시','강서구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1050,'맘스터치','지사점','부산광역시 강서구 지사동 1186번지','부산광역시','강서구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1051,'롯데리아','지사점','부산광역시 강서구 지사동 1196-4번지','부산광역시','강서구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1052,'맥도날드','0','부산광역시 금정구 구서동 163-2번지','부산광역시','금정구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1053,'롯데리아','범어사역점','부산광역시 금정구 남산동 21-11번지','부산광역시','금정구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1054,'맘스터치','부산외대점','부산광역시 금정구 남산동 857-1번지','부산광역시','금정구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1055,'롯데리아','부산터미널1호점','부산광역시 금정구 노포동 133번지','부산광역시','금정구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1056,'롯데리아','금정롯데마트점','부산광역시 금정구 부곡동 223-1번지','부산광역시','금정구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1057,'맥도날드','부곡점','부산광역시 금정구 부곡동 63-11번지','부산광역시','금정구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1058,'롯데리아','부산서동점','부산광역시 금정구 서동 199-32번지','부산광역시','금정구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1059,'맘스터치','0','부산광역시 금정구 장전동 106-9번지','부산광역시','금정구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1060,'맘스터치','부산대북문점','부산광역시 금정구 장전동 157-13번지','부산광역시','금정구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1061,'맥도날드','부산대학2호점','부산광역시 금정구 장전동 302-9번지','부산광역시','금정구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1062,'롯데리아','부산대점','부산광역시 금정구 장전동 421-2번지','부산광역시','금정구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1063,'롯데리아','롯데아울렛동부산1층점','부산광역시 기장군 기장읍 당사리 64번지','부산광역시','기장군','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1064,'롯데리아','0','부산광역시 기장군 기장읍 시랑리 380-3번지','부산광역시','기장군','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1065,'맥도날드','부산기장DT점','부산광역시 기장군 기장읍 청강리 112-1번지','부산광역시','기장군','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1066,'롯데리아','메가마트기장점','부산광역시 기장군 일광면 삼성리 547-6번지','부산광역시','기장군','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1067,'롯데리아','부산정관모전점','부산광역시 기장군 정관읍 모전리 735번지','부산광역시','기장군','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1068,'맘스터치','정관1호점','부산광역시 기장군 정관읍 용수리 1328-2번지','부산광역시','기장군','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1069,'롯데리아','대연점','부산광역시 남구 대연동 1752-9번지','부산광역시','남구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1070,'맥도날드','경성대점','부산광역시 남구 대연동 72-23번지','부산광역시','남구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1071,'버거킹','부산대연GS점','부산광역시 남구 대연동 74-17번지','부산광역시','남구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1072,'롯데리아','문현점','부산광역시 남구 문현동 405-6번지','부산광역시','남구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1073,'맘스터치','0','부산광역시 남구 용당동 485번지','부산광역시','남구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1074,'맥도날드','0','부산광역시 남구 용당동 524번지','부산광역시','남구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1075,'맘스터치','동명대점','부산광역시 남구 용당동 535번지','부산광역시','남구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1076,'버거킹','부산용호분포SK점','부산광역시 남구 용호동 369-25번지','부산광역시','남구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1077,'롯데리아','부산용호점','부산광역시 남구 용호동 370-11번지','부산광역시','남구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1078,'맥도날드','범일SKDT점','부산광역시 동구 범일동 828-8번지','부산광역시','동구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1079,'롯데리아','에이지선수촌점','부산광역시 동구 수정동 1-136번지','부산광역시','동구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1080,'맥도날드','0','부산광역시 동구 초량동 1198-7번지','부산광역시','동구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1081,'롯데리아','부산역점','부산광역시 동구 초량동 1208-17번지','부산광역시','동구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1082,'맘스터치','명륜점','부산광역시 동래구 명륜동 100번지','부산광역시','동래구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1083,'맥도날드','메가마켓점','부산광역시 동래구 명륜동 506-3번지','부산광역시','동래구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1084,'맥도날드','부산사직DT점','부산광역시 동래구 사직동 105-10번지','부산광역시','동래구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1085,'맥도날드','0','부산광역시 동래구 사직동 105-4번지','부산광역시','동래구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1086,'맥도날드','사직점','부산광역시 동래구 사직동 92-7번지','부산광역시','동래구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1087,'롯데리아','사직야구장점','부산광역시 동래구 사직동 930번지','부산광역시','동래구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1088,'맥도날드','안락점','부산광역시 동래구 안락동 1044-2번지','부산광역시','동래구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1089,'맥도날드','원동점','부산광역시 동래구 안락동 65-2번지','부산광역시','동래구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1090,'롯데리아','부산미남역점','부산광역시 동래구 온천동 1250-21번지','부산광역시','동래구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1091,'맥도날드','0','부산광역시 동래구 온천동 1431-4번지','부산광역시','동래구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1092,'맘스터치','동래역점','부산광역시 동래구 온천동 1439-3번지','부산광역시','동래구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1093,'맘스터치','온천장점','부산광역시 동래구 온천동 153-12번지','부산광역시','동래구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1094,'롯데리아','0','부산광역시 동래구 온천동 153-8번지','부산광역시','동래구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1095,'파파이스','금정이마트점','부산광역시 동래구 온천동 172-35번지','부산광역시','동래구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1096,'롯데리아','0','부산광역시 동래구 온천동 502-3번지','부산광역시','동래구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1097,'맘스터치','동의대지천관점','부산광역시 부산진구 가야동 465-2번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1098,'맥도날드','가야점','부산광역시 부산진구 가야동 50-4번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1099,'맘스터치','신개금점','부산광역시 부산진구 개금동 21-2번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1100,'맥도날드','개금점','부산광역시 부산진구 개금동 618-2번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1101,'맥도날드','당감점','부산광역시 부산진구 당감동 282-30번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1102,'맥도날드','부산범전DT점','부산광역시 부산진구 범전동 383-25번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1103,'롯데리아','홈서비스부암점','부산광역시 부산진구 부암동 722-3번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1104,'롯데리아','부산부암HS점','부산광역시 부산진구 부암동 722번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1105,'맥도날드','서면3호점','부산광역시 부산진구 부전동 172-6번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1106,'맘스터치','서면점','부산광역시 부산진구 부전동 187-13번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1107,'맥도날드','서면서점','부산광역시 부산진구 부전동 241-16번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1108,'KFC','서면점','부산광역시 부산진구 부전동 241-17번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1109,'롯데리아','롯데부산본점시네마점','부산광역시 부산진구 부전동 503-15번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1110,'맘스터치','연지점','부산광역시 부산진구 연지동 353-1번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1111,'롯데리아','부산전포점','부산광역시 부산진구 전포동 339-31번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1112,'맘스터치','NC백화점서면점','부산광역시 부산진구 전포동 668-1번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1113,'KFC','0','부산광역시 부산진구 전포동 892-20번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1114,'맥도날드','초읍DT점','부산광역시 부산진구 초읍동 171-6번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1115,'롯데리아','더파크동물원점','부산광역시 부산진구 초읍동 43-13번지','부산광역시','부산진구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1116,'맥도날드','구남DT점','부산광역시 북구 구포동 920-16번지','부산광역시','북구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1117,'롯데리아','하나로부산점','부산광역시 북구 금곡동 1874-3번지','부산광역시','북구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1118,'롯데리아','덕천역점','부산광역시 북구 덕천동 348-7번지','부산광역시','북구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1119,'KFC','0','부산광역시 북구 덕천동 402-41번지','부산광역시','북구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1120,'롯데리아','덕천점','부산광역시 북구 덕천동 403-10번지','부산광역시','북구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1121,'맥도날드','부산덕천점','부산광역시 북구 덕천동 554-1번지','부산광역시','북구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1122,'롯데리아','0','부산광역시 북구 만덕동 757-47번지','부산광역시','북구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1123,'맥도날드','만덕점','부산광역시 북구 만덕동 759-3번지','부산광역시','북구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1124,'맥도날드','만덕점','부산광역시 북구 만덕동 761-13번지','부산광역시','북구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1125,'맥도날드','화명동점','부산광역시 북구 화명동 193-1번지','부산광역시','북구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1126,'롯데리아','부산화명점','부산광역시 북구 화명동 2271-6번지','부산광역시','북구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1127,'맥도날드','사상터미널점','부산광역시 사상구 괘법동 533-1번지','부산광역시','사상구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1128,'롯데리아','덕포점','부산광역시 사상구 덕포동 422-2번지','부산광역시','사상구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1129,'맥도날드','부산엄궁DT점','부산광역시 사상구 엄궁동 367-3번지','부산광역시','사상구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1130,'롯데리아','부산주례역점','부산광역시 사상구 주례동 198-3번지','부산광역시','사상구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1131,'맥도날드','주례점','부산광역시 사상구 주례동 60-10번지','부산광역시','사상구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1132,'맘스터치','백양점','부산광역시 사상구 주례동 965-10번지','부산광역시','사상구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1133,'롯데리아','부산학장점','부산광역시 사상구 학장동 574-100번지','부산광역시','사상구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1134,'맘스터치','감천점','부산광역시 사하구 감천동 662-11번지','부산광역시','사하구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1135,'맘스터치','동주대점','부산광역시 사하구 괴정동 310-4번지','부산광역시','사하구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1136,'버거킹','괴정점','부산광역시 사하구 괴정동 966-1번지','부산광역시','사하구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1137,'롯데리아','롯데마트부산사하점','부산광역시 사하구 장림동 1033-2번지','부산광역시','사하구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1138,'롯데리아','장림점','부산광역시 사하구 장림동 349-7번지','부산광역시','사하구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1139,'맘스터치','하단가락점','부산광역시 사하구 하단동 1180-10번지','부산광역시','사하구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1140,'맥도날드','0','부산광역시 사하구 하단동 492-1번지','부산광역시','사하구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1141,'롯데리아','하단점','부산광역시 사하구 하단동 618-27번지','부산광역시','사하구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1142,'맥도날드','부산하단DT','부산광역시 사하구 하단동 619-20번지','부산광역시','사하구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1143,'맥도날드','동아대점','부산광역시 사하구 하단동 810-4번지','부산광역시','사하구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1144,'맘스터치','동아대병원점','부산광역시 서구 동대신동3가 13-67번지','부산광역시','서구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1145,'롯데리아','부산대학병원','부산광역시 서구 아미동1가 10-1번지','부산광역시','서구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1146,'맥도날드','메가마트남천점','부산광역시 수영구 남천동 545-2번지','부산광역시','수영구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1147,'맘스터치','부산망미점','부산광역시 수영구 망미동 433-42번지','부산광역시','수영구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1148,'롯데리아','부산민락점','부산광역시 수영구 민락동 181-1번지','부산광역시','수영구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1149,'맥도날드','SKDT점','부산광역시 수영구 수영동 450-9번지','부산광역시','수영구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1150,'롯데리아','부산지점','부산광역시 연제구 거제동 1497-1번지','부산광역시','연제구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1151,'롯데리아','국제점','부산광역시 연제구 거제동 76-2번지','부산광역시','연제구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1152,'롯데리아','홈플러스부산연산점','부산광역시 연제구 연산동 105-1번지','부산광역시','연제구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1153,'버거킹','연산RFS점','부산광역시 연제구 연산동 1287-4번지','부산광역시','연제구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1154,'롯데리아','부산시청D/T점','부산광역시 연제구 연산동 1328-6번지','부산광역시','연제구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1155,'맥도날드','시청점','부산광역시 연제구 연산동 1364-2번지','부산광역시','연제구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1156,'맥도날드','토곡점','부산광역시 연제구 연산동 399-10번지','부산광역시','연제구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1157,'맥도날드','연산SKDT점','부산광역시 연제구 연산동 489-14번지','부산광역시','연제구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1158,'롯데리아','부산물만골역점','부산광역시 연제구 연산동 683-8번지','부산광역시','연제구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1159,'맥도날드','이마트연제점','부산광역시 연제구 연산동 822-7번지','부산광역시','연제구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1160,'롯데리아','영도동삼점','부산광역시 영도구 동삼동 361-11번지','부산광역시','영도구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1161,'맥도날드','부산영도DT점','부산광역시 영도구 봉래동3가 82-2번지','부산광역시','영도구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1162,'맘스터치','영선점','부산광역시 영도구 영선동1가 35-3번지','부산광역시','영도구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1163,'롯데리아','부산중구점','부산광역시 중구 남포동5가 11-3번지','부산광역시','중구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1164,'KFC','0','부산광역시 중구 남포동5가 24-1번지','부산광역시','중구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1165,'맥도날드','비프광장점','부산광역시 중구 남포동5가 33번지','부산광역시','중구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1166,'맘스터치','대청점','부산광역시 중구 대청동2가 22-6번지','부산광역시','중구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1167,'롯데리아','남포점','부산광역시 중구 부평동1가 48-1번지','부산광역시','중구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1168,'롯데리아','부산남포점','부산광역시 중구 부평동1가 48-6번지','부산광역시','중구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1169,'롯데리아','T.G.I.F롯데광복점','부산광역시 중구 중앙동7가 20-1번지','부산광역시','중구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1170,'맘스터치','롯데마트부산광복점','부산광역시 중구 중앙동7가 20-1번지','부산광역시','중구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1171,'버거킹','부산광복롯데점','부산광역시 중구 중앙동7가 20-1번지','부산광역시','중구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1172,'롯데리아','반여점','부산광역시 해운대구 반여동 1291-818번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1173,'맥도날드','0','부산광역시 해운대구 송정동 130-6번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1174,'맥도날드','송정DT점','부산광역시 해운대구 송정동 135-2번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1175,'맥도날드','송정DT점','부산광역시 해운대구 송정동 135-6번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1176,'맘스터치','송정점','부산광역시 해운대구 송정동 312-9번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1177,'버거킹','우동점','부산광역시 해운대구 우동 1005-17번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1178,'맘스터치','동부올림픽점','부산광역시 해운대구 우동 1008-5번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1179,'롯데리아','센텀프라자빌딩점','부산광역시 해운대구 우동 1078-1번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1180,'버거킹','센텀KNN점','부산광역시 해운대구 우동 1468번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1181,'롯데리아','센텀점','부산광역시 해운대구 우동 1496번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1182,'롯데리아','홈플러스센텀시티점','부산광역시 해운대구 우동 1499번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1183,'롯데리아','0','부산광역시 해운대구 우동 1500번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1184,'버거킹','해운대스펀지점','부산광역시 해운대구 우동 587-1번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1185,'맥도날드','해운대DT점','부산광역시 해운대구 우동 626-13번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1186,'롯데리아','부산재송점','부산광역시 해운대구 재송동 1124-4번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1187,'버거킹','부산센텀오일뱅크점','부산광역시 해운대구 재송동 367-1번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1188,'롯데리아','부산해운대좌동점','부산광역시 해운대구 좌동 1270-4번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1189,'맥도날드','좌동2호점','부산광역시 해운대구 좌동 1327-6번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1190,'버거킹','해운대신도시1호점','부산광역시 해운대구 좌동 1327-6번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1191,'맥도날드','좌동점','부산광역시 해운대구 좌동 1407-5번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1192,'롯데리아','해운대백병원점','부산광역시 해운대구 좌동 1435번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1193,'롯데리아','0','부산광역시 해운대구 좌동 1459-6번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1194,'KFC','부산장산역점','부산광역시 해운대구 좌동 387번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1195,'롯데리아','해운대세이브존점','부산광역시 해운대구 중동 1380-14번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1196,'버거킹','해운대비치점','부산광역시 해운대구 중동 1383-14번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1197,'맘스터치','해운대중동점','부산광역시 해운대구 중동 1394-72번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1198,'버거킹','해운대비치점','부산광역시 해운대구 중동 1417-2번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1199,'맥도날드','달맞이점','부산광역시 해운대구 중동 1777-5번지','부산광역시','해운대구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1200,'롯데리아','개포점','서울특별시 강남구 개포동 158-12번지','서울특별시','강남구','서울특별시 강남구 선릉로 26, (개포동)','6325');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1201,'맥도날드','학동역점','서울특별시 강남구 논현동 129-1번지','서울특별시','강남구','서울특별시 강남구 논현로 667, (논현동)','6112');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1202,'맘스터치','논현점','서울특별시 강남구 논현동 170-28번지','서울특별시','강남구','서울특별시 강남구 강남대로120길 47, (논현동)','6118');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1203,'버거킹','차병원사거리점','서울특별시 강남구 논현동 192-19번지','서울특별시','강남구','서울특별시 강남구 봉은사로 179, (논현동)','6122');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1204,'맥도날드','강남구청점','서울특별시 강남구 논현동 242-29번지','서울특별시','강남구','서울특별시 강남구 선릉로 667, (논현동)','6099');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1205,'버거킹','강남구청점','서울특별시 강남구 논현동 267-2번지','서울특별시','강남구','서울특별시 강남구 선릉로 639, (논현동)','6100');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1206,'버거킹','논현역점','서울특별시 강남구 논현동 52-3번지','서울특별시','강남구','서울특별시 강남구 학동로 109, (논현동)','6044');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1207,'맥도날드','대치점','서울특별시 강남구 대치동 506번지','서울특별시','강남구','서울특별시 강남구 삼성로 151, (대치동)','6291');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1208,'버거킹','대치역점','서울특별시 강남구 대치동 507번지','서울특별시','강남구','서울특별시 강남구 남부순환로 2936, (대치동)','6291');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1209,'버거킹','포스코점','서울특별시 강남구 대치동 892번지','서울특별시','강남구','서울특별시 강남구 테헤란로 440, (대치동)','6194');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1210,'버거킹','한티역점','서울특별시 강남구 대치동 936-6번지','서울특별시','강남구','서울특별시 강남구 선릉로64길 8, (대치동)','6206');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1211,'롯데리아','0','서울특별시 강남구 대치동 937번지','서울특별시','강남구','서울특별시 강남구 도곡로 401, (대치동)','6206');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1212,'맥도날드','한티역점','서울특별시 강남구 대치동 938-22번지','서울특별시','강남구','서울특별시 강남구 도곡로 409, (대치동)','6207');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1213,'버거킹','대치점','서울특별시 강남구 대치동 941-24번지','서울특별시','강남구','서울특별시 강남구 도곡로 447, (대치동)','6209');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1214,'맥도날드','삼성역점','서울특별시 강남구 삼성동 158-15번지','서울특별시','강남구','서울특별시 강남구 삼성로92길 29, (삼성동)','6169');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1215,'롯데리아','코엑스몰점','서울특별시 강남구 삼성동 159번지','서울특별시','강남구','서울특별시 강남구 봉은사로 524, (삼성동)','6164');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1216,'맥도날드','아셈점','서울특별시 강남구 삼성동 159번지','서울특별시','강남구','서울특별시 강남구 봉은사로 524, (삼성동)','6164');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1217,'롯데리아','더푸드하우스환승통로점','서울특별시 강남구 수서동 214-2번지','서울특별시','강남구','서울특별시 강남구 밤고개로 99, (수서동)','6369');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1218,'버거킹','0','서울특별시 강남구 수서동 713번지','서울특별시','강남구','서울특별시 강남구 밤고개로1길 10, (수서동)','6349');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1219,'버거킹','수서점','서울특별시 강남구 수서동 724번지','서울특별시','강남구','서울특별시 강남구 광평로 280, (수서동)','6367');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1220,'맥도날드','신사역점','서울특별시 강남구 신사동 514-15번지','서울특별시','강남구','서울특별시 강남구 도산대로 123, (신사동)','6035');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1221,'KFC','0','서울특별시 강남구 신사동 581번지','서울특별시','강남구','서울특별시 강남구 논현로175길 7, (신사동)','6030');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1222,'버거킹','압구정로데오점','서울특별시 강남구 신사동 639-5번지','서울특별시','강남구','서울특별시 강남구 압구정로46길 4, (신사동)','6017');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1223,'버거킹','테헤란로점','서울특별시 강남구 역삼동 647-9번지','서울특별시','강남구','서울특별시 강남구 테헤란로 131, (역삼동)','6133');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1224,'KFC','0','서울특별시 강남구 역삼동 683-26번지','서울특별시','강남구','서울특별시 강남구 선릉로 555, (역삼동)','6145');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1225,'KFC','선릉점','서울특별시 강남구 역삼동 702-28번지','서울특별시','강남구','서울특별시 강남구 테헤란로 325, (역삼동)','6151');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1226,'맥도날드','선릉점','서울특별시 강남구 역삼동 707-27번지','서울특별시','강남구','서울특별시 강남구 테헤란로 326, (역삼동)','6211');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1227,'롯데리아','선릉점','서울특별시 강남구 역삼동 707-5번지','서울특별시','강남구','서울특별시 강남구 테헤란로 316, (역삼동)','6211');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1228,'버거킹','선릉역점','서울특별시 강남구 역삼동 708-36번지','서울특별시','강남구','서울특별시 강남구 선릉로 429, (역삼동)','6212');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1229,'파파이스','역삼역점','서울특별시 강남구 역삼동 734-3번지','서울특별시','강남구','서울특별시 강남구 논현로 406, (역삼동)','6224');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1230,'버거킹','강남파이낸스점','서울특별시 강남구 역삼동 737번지','서울특별시','강남구','서울특별시 강남구 테헤란로 152, (역삼동)','6236');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1231,'맥도날드','역삼점','서울특별시 강남구 역삼동 746번지','서울특별시','강남구','서울특별시 강남구 논현로 419, (역삼동)','6246');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1232,'버거킹','강남대로점','서울특별시 강남구 역삼동 820-9번지','서울특별시','강남구','서울특별시 강남구 강남대로 406, (역삼동)','6134');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1233,'맥도날드','강남2호점','서울특별시 강남구 역삼동 822-2번지','서울특별시','강남구','서울특별시 강남구 테헤란로 107, (역삼동)','6134');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1278,'버거킹','우장산점','서울특별시 강서구 내발산동 701-9번지','서울특별시','강서구','서울특별시 강서구 강서로 289, (내발산동)','7639');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1279,'맘스터치','우장산역점','서울특별시 강서구 내발산동 719-5번지','서울특별시','강서구','서울특별시 강서구 강서로 271, (내발산동)','7639');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1280,'맥도날드','0','서울특별시 강서구 등촌동 630번지','서울특별시','강서구','서울특별시 강서구 양천로 546, (등촌동)','7550');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1281,'롯데리아','홈플러스강서점','서울특별시 강서구 등촌동 639-11번지','서울특별시','강서구','서울특별시 강서구 화곡로 398, (등촌동)','7567');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1282,'롯데리아','0','서울특별시 강서구 등촌동 73-1번지','서울특별시','강서구','서울특별시 강서구 양천로 476, (등촌동)','7575');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1283,'롯데리아','신방화역점','서울특별시 강서구 마곡동 739-3번지','서울특별시','강서구','서울특별시 강서구 마곡중앙5로 81, (마곡동)','7599');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1284,'롯데리아','마곡나루역점','서울특별시 강서구 마곡동 759-3번지','서울특별시','강서구','서울특별시 강서구 마곡중앙로 161-17, (마곡동)','7788');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1285,'롯데리아','롯데몰김포공항점','서울특별시 강서구 방화동 886번지','서울특별시','강서구','서울특별시 강서구 하늘길 77, (방화동)','7505');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1286,'맥도날드','염창디티점','서울특별시 강서구 염창동 280-11번지','서울특별시','강서구','서울특별시 강서구 공항대로71길 3, (염창동)','7559');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1287,'맥도날드','우장산DT점','서울특별시 강서구 화곡동 1026번지','서울특별시','강서구','서울특별시 강서구 강서로 216, (화곡동)','7698');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1288,'KFC','0','서울특별시 강서구 화곡동 1165-1번지','서울특별시','강서구','서울특별시 강서구 강서로 242, (화곡동)','7694');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1289,'롯데리아','까치산점','서울특별시 강서구 화곡동 343-59번지','서울특별시','강서구','서울특별시 강서구 강서로 35, (화곡동)','7774');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1290,'버거킹','까치산역점','서울특별시 강서구 화곡동 343-64번지','서울특별시','강서구','서울특별시 강서구 강서로 43-17, (화곡동)','7774');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1291,'맘스터치','강서구청점','서울특별시 강서구 화곡동 980-21번지','서울특별시','강서구','서울특별시 강서구 화곡로 296, (화곡동)','7663');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1292,'맥도날드','사당역점','서울특별시 관악구 남현동 1061-22번지','서울특별시','관악구','서울특별시 관악구 과천대로 945, (남현동)','8807');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1293,'버거킹','낙성대2점','서울특별시 관악구 봉천동 1658-2번지','서울특별시','관악구','서울특별시 관악구 남부순환로 1934, (봉천동)','8793');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1294,'버거킹','낙성대역점','서울특별시 관악구 봉천동 1685-15번지','서울특별시','관악구','서울특별시 관악구 남부순환로 1909, (봉천동)','8742');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1295,'맥도날드','서울대역점','서울특별시 관악구 봉천동 862-3번지','서울특별시','관악구','서울특별시 관악구 관악로 173, (봉천동)','8787');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1296,'맥도날드','서울대역점','서울특별시 관악구 봉천동 862-5번지','서울특별시','관악구','서울특별시 관악구 관악로 171, (봉천동)','8787');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1297,'롯데리아','서울대입구역점','서울특별시 관악구 봉천동 863-1번지','서울특별시','관악구','서울특별시 관악구 관악로 165, (봉천동)','8787');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1298,'KFC','봉천역','서울특별시 관악구 봉천동 926-31번지','서울특별시','관악구','서울특별시 관악구 남부순환로 1735, (봉천동)','8757');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1299,'롯데리아','봉천역점','서울특별시 관악구 봉천동 930-45번지','서울특별시','관악구','서울특별시 관악구 남부순환로 1724, (봉천동)','8784');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1300,'롯데리아','0','서울특별시 관악구 신림동 1640-8번지','서울특별시','관악구','서울특별시 관악구 남부순환로 1608, (신림동)','8776');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1301,'롯데리아','신림역점','서울특별시 관악구 신림동 1640-9번지','서울특별시','관악구','서울특별시 관악구 남부순환로 1610, (신림동)','8776');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1302,'맥도날드','신림점','서울특별시 관악구 신림동 1641-22번지','서울특별시','관악구','서울특별시 관악구 신림로 310, (신림동)','8778');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1303,'롯데리아','구로공단점','서울특별시 관악구 신림동 1643번지','서울특별시','관악구','서울특별시 관악구 시흥대로 578, (신림동)','8700');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1304,'파파이스','신림점','서울특별시 관악구 신림동 1680-56번지','서울특별시','관악구','서울특별시 관악구 난곡로 260-1, (신림동)','8849');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1305,'맘스터치','대학동점','서울특별시 관악구 신림동 238-10번지','서울특별시','관악구','서울특별시 관악구 신림로 89, (신림동)','8814');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1306,'맘스터치','신대방점','서울특별시 관악구 신림동 518-5번지','서울특별시','관악구','서울특별시 관악구 신사로 90, (신림동)','8701');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1307,'롯데리아','서울대점','서울특별시 관악구 신림동 56-1번지','서울특별시','관악구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1308,'버거킹','신림역점','서울특별시 관악구 신림동 86-3번지','서울특별시','관악구','서울특별시 관악구 신림로 318, (신림동)','8777');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1309,'버거킹','광장점','서울특별시 광진구 광장동 470-3번지','서울특별시','광진구','서울특별시 광진구 아차산로 502, (광장동)','4974');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1310,'롯데리아','구의점','서울특별시 광진구 구의동 546-1번지','서울특별시','광진구','서울특별시 광진구 강변역로 50, (구의동)','5116');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1311,'롯데리아','군자점','서울특별시 광진구 군자동 478-5번지','서울특별시','광진구','서울특별시 광진구 천호대로 548, (군자동)','4997');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1312,'파파이스','어린이대공원점','서울특별시 광진구 능동 18번지','서울특별시','광진구','서울특별시 광진구 능동로 216, (능동)','4991');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1313,'맥도날드','구의역점','서울특별시 광진구 자양동 216-11번지','서울특별시','광진구','서울특별시 광진구 아차산로 376, (자양동)','5051');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1314,'롯데리아','건대스타시티점','서울특별시 광진구 자양동 227-1번지','서울특별시','광진구','서울특별시 광진구 아차산로 306, (자양동)','5066');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1315,'KFC','0','서울특별시 광진구 자양동 227-33번지','서울특별시','광진구','서울특별시 광진구 아차산로38길 7, (자양동)','5066');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1316,'롯데리아','건대스타시티점','서울특별시 광진구 자양동 227-7번지','서울특별시','광진구','서울특별시 광진구 아차산로 262, (자양동)','5065');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1317,'버거킹','건대역점','서울특별시 광진구 자양동 227-7번지','서울특별시','광진구','서울특별시 광진구 아차산로 262, (자양동)','5065');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1318,'롯데리아','중곡점','서울특별시 광진구 중곡동 193-49번지','서울특별시','광진구','서울특별시 광진구 면목로 136, (중곡동)','4908');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1319,'맥도날드','어린이대공원점','서울특별시 광진구 화양동 212번지','서울특별시','광진구','서울특별시 광진구 광나루로 392, (화양동)','5009');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1320,'롯데리아','건대역점','서울특별시 광진구 화양동 4-20번지','서울특별시','광진구','서울특별시 광진구 능동로 110, (화양동)','5030');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1321,'버거킹','건대화양점','서울특별시 광진구 화양동 7-44번지','서울특별시','광진구','서울특별시 광진구 아차산로 225, (화양동)','5018');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1322,'롯데리아','개봉역점','서울특별시 구로구 개봉동 415번지','서울특별시','구로구','서울특별시 구로구 경인로40길 47, (개봉동)','8276');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1323,'맥도날드','고척DT점','서울특별시 구로구 고척동 73-20번지','서울특별시','구로구','서울특별시 구로구 경인로 393, (고척동)','8227');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1324,'버거킹','구로점','서울특별시 구로구 구로동 1126-1번지','서울특별시','구로구','서울특별시 구로구 시흥대로 551, (구로동)','8392');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1325,'롯데리아','구로시장점','서울특별시 구로구 구로동 141-5번지','서울특별시','구로구','서울특별시 구로구 도림로 73, (구로동)','8312');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1326,'맥도날드','구로디지털점','서울특별시 구로구 구로동 197-21번지','서울특별시','구로구','서울특별시 구로구 디지털로31길 12, (구로동)','8380');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1327,'버거킹','구로디지털점','서울특별시 구로구 구로동 212-8번지','서울특별시','구로구','서울특별시 구로구 디지털로 288, (구로동)','8390');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1328,'맥도날드','신도림테크노마트점','서울특별시 구로구 구로동 3-25번지','서울특별시','구로구','서울특별시 구로구 새말로 97, (구로동)','8288');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1329,'맥도날드','구로애경점','서울특별시 구로구 구로동 573번지','서울특별시','구로구','서울특별시 구로구 구로중앙로 152, (구로동)','8292');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1330,'롯데리아','0','서울특별시 구로구 구로동 636-89번지','서울특별시','구로구','서울특별시 구로구 경인로 482, (구로동)','8278');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1331,'버거킹','구로구청점','서울특별시 구로구 구로동 83-4번지','서울특별시','구로구','서울특별시 구로구 가마산로 250, (구로동)','8306');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1332,'맥도날드','신도림디큐브점','서울특별시 구로구 신도림동 692번지','서울특별시','구로구','서울특별시 구로구 경인로 662, (신도림동)','8209');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1333,'롯데리아','천왕역점','서울특별시 구로구 오류동 306-4번지','서울특별시','구로구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1334,'맥도날드','가산비지니스센터점','서울특별시 금천구 가산동 371-6번지','서울특별시','금천구','서울특별시 금천구 가산디지털1로 165, (가산동)','8503');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1335,'맥도날드','가산디지털점','서울특별시 금천구 가산동 50-3번지','서울특별시','금천구','서울특별시 금천구 벚꽃로 298, (가산동)','8510');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1336,'맥도날드','마리오아울렛점','서울특별시 금천구 가산동 60-22번지','서울특별시','금천구','서울특별시 금천구 디지털로 185, (가산동)','8511');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1337,'롯데리아','구로가산점','서울특별시 금천구 가산동 60-27번지','서울특별시','금천구','서울특별시 금천구 디지털로 188, (가산동)','8513');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1338,'버거킹','가산이앤씨7점','서울특별시 금천구 가산동 60-44번지','서울특별시','금천구','서울특별시 금천구 디지털로9길 46, (가산동)','8512');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1339,'롯데리아','금천빅마켓점','서울특별시 금천구 독산동 295-10번지','서울특별시','금천구','서울특별시 금천구 두산로 71, (독산동)','8524');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1340,'맘스터치','금천은행나무점','서울특별시 금천구 시흥동 272-20번지','서울특별시','금천구','서울특별시 금천구 금하로 726, (시흥동)','8644');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1341,'맥도날드','서울시흥DT점','서울특별시 금천구 시흥동 903-4번지','서울특별시','금천구','서울특별시 금천구 시흥대로 184, (시흥동)','8630');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1342,'롯데리아','0','서울특별시 금천구 시흥동 911-2번지','서울특별시','금천구','서울특별시 금천구 금하로 712, (시흥동)','8644');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1343,'버거킹','공릉역점','서울특별시 노원구 공릉동 379-20번지','서울특별시','노원구','서울특별시 노원구 동일로 1085, (공릉동)','1852');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1344,'맥도날드','과학기술대점','서울특별시 노원구 공릉동 435-2번지','서울특별시','노원구','서울특별시 노원구 공릉로 231, (공릉동)','1833');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1345,'맘스터치','과기대점','서울특별시 노원구 공릉동 440-16번지','서울특별시','노원구','서울특별시 노원구 공릉로 223, (공릉동)','1833');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1346,'맥도날드','상계DT점','서울특별시 노원구 상계동 1022번지','서울특별시','노원구','서울특별시 노원구 동일로 1612, (상계동)','1631');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1347,'롯데리아','수락산역점','서울특별시 노원구 상계동 1132-1번지','서울특별시','노원구','서울특별시 노원구 동일로 1673, (상계동)','1607');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1348,'롯데리아','노원역점','서울특별시 노원구 상계동 617번지','서울특별시','노원구','서울특별시 노원구 노해로79길 6-19, (상계동)','1695');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1349,'롯데리아','마들역점','서울특별시 노원구 상계동 649-6번지','서울특별시','노원구','서울특별시 노원구 동일로 1532, (상계동)','1674');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1350,'롯데리아','0','서울특별시 노원구 상계동 713번지','서울특별시','노원구','서울특별시 노원구 동일로 1414, (상계동)','1695');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1351,'롯데리아','0','서울특별시 노원구 상계동 731-3번지','서울특별시','노원구','서울특별시 노원구 동일로 1401, (상계동)','1762');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1352,'맥도날드','중계역점','서울특별시 노원구 상계동 763-2번지','서울특별시','노원구','서울특별시 노원구 동일로 1341, (상계동)','1767');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1353,'KFC','0','서울특별시 노원구 월계동 333-1번지','서울특별시','노원구','서울특별시 노원구 마들로3길 15, (월계동)','1906');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1354,'맥도날드','중계점','서울특별시 노원구 중계동 359-14번지','서울특별시','노원구','서울특별시 노원구 중계로 218, (중계동)','1714');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1355,'KFC','0','서울특별시 노원구 중계동 360-14번지','서울특별시','노원구','서울특별시 노원구 한글비석로 227, (중계동)','1743');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1356,'롯데리아','롯데마트중계점','서울특별시 노원구 중계동 361번지','서울특별시','노원구','서울특별시 노원구 노원로 330, (중계동)','1746');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1357,'KFC','0','서울특별시 노원구 중계동 503번지','서울특별시','노원구','서울특별시 노원구 동일로 1279, (중계동)','1778');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1358,'롯데리아','건영옴니중계점','서울특별시 노원구 중계동 506-1번지','서울특별시','노원구','서울특별시 노원구 섬밭로 258, (중계동)','1779');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1359,'맥도날드','노원한신점','서울특별시 노원구 하계동 284번지','서울특별시','노원구','서울특별시 노원구 공릉로 351, (하계동)','1784');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1360,'맥도날드','방학역DT점','서울특별시 도봉구 도봉동 620-25번지','서울특별시','도봉구','서울특별시 도봉구 도봉로 735, (도봉동)','1349');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1361,'파파이스','방학역점','서울특별시 도봉구 방학동 706-7번지','서울특별시','도봉구','서울특별시 도봉구 도봉로 696, (방학동)','1333');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1362,'버거킹','쌍문SK점','서울특별시 도봉구 쌍문동 103-7번지','서울특별시','도봉구','서울특별시 도봉구 도봉로 437, (쌍문동)','1448');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1363,'버거킹','쌍문점','서울특별시 도봉구 쌍문동 20-4번지','서울특별시','도봉구','서울특별시 도봉구 도당로 6, (쌍문동)','1394');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1532,'맥도날드','SKDT점','서울특별시 양천구 신월동 525-1번지','서울특별시','양천구','서울특별시 양천구 남부순환로 553, (신월동)','8032');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1533,'맥도날드','신월SKDT점','서울특별시 양천구 신월동 525-1번지','서울특별시','양천구','서울특별시 양천구 남부순환로 553, (신월동)','8032');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1534,'맘스터치','신월점','서울특별시 양천구 신월동 81-26번지','서울특별시','양천구','서울특별시 양천구 가로공원로 123, (신월동)','7905');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1535,'롯데리아','신정네거리점','서울특별시 양천구 신정동 1190-3번지','서울특별시','양천구','서울특별시 양천구 중앙로 277, (신정동)','8058');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1536,'맘스터치','신정점','서울특별시 양천구 신정동 1190-6번지','서울특별시','양천구','서울특별시 양천구 중앙로 269, (신정동)','8058');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1537,'롯데리아','시흥중앙점','서울특별시 양천구 신정동 1279번지','서울특별시','양천구','서울특별시 양천구 목동동로12길 60, (신정동)','8008');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1538,'맥도날드','양천구청점','서울특별시 양천구 신정동 323-20번지','서울특별시','양천구','서울특별시 양천구 목동동로 71, (신정동)','8093');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1539,'맥도날드','목동점','서울특별시 양천구 신정동 899-6번지','서울특별시','양천구','서울특별시 양천구 목동로 221, (신정동)','7937');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1540,'버거킹','목동역점','서울특별시 양천구 신정동 994-2번지','서울특별시','양천구','서울특별시 양천구 오목로 238, (신정동)','8022');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1541,'맥도날드','당산역점','서울특별시 영등포구 당산동6가 331-6번지','서울특별시','영등포구','서울특별시 영등포구 양평로 46, (당산동6가)','7222');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1542,'버거킹','당산역점','서울특별시 영등포구 당산동6가 337-23번지','서울특별시','영등포구','서울특별시 영등포구 양평로 58, (당산동6가)','7222');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1543,'롯데리아','홈플러스영등포점','서울특별시 영등포구 문래동3가 55-3번지','서울특별시','영등포구','서울특별시 영등포구 당산로 42, (문래동3가)','7297');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1544,'파파이스','0','서울특별시 영등포구 문래동3가 82-8번지','서울특별시','영등포구','서울특별시 영등포구 문래로 79-4, (문래동3가)','7294');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1545,'롯데리아','대신시장점','서울특별시 영등포구 신길동 110-5번지','서울특별시','영등포구','서울특별시 영등포구 도신로 235, (신길동)','7316');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1546,'롯데리아','롯데마트서울양평점','서울특별시 영등포구 양평동3가 45번지','서울특별시','영등포구','서울특별시 영등포구 선유로 138, (양평동3가)','7255');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1547,'맥도날드','양평SKDT점','서울특별시 영등포구 양평동3가 80-2번지','서울특별시','영등포구','서울특별시 영등포구 선유로 195, (양평동3가)','7211');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1548,'롯데리아','0','서울특별시 영등포구 양평동5가 21번지','서울특별시','영등포구','서울특별시 영등포구 양평로21길 10, (양평동5가)','7207');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1549,'버거킹','서여의도점','서울특별시 영등포구 여의도동 14-14번지','서울특별시','영등포구','서울특별시 영등포구 국회대로70길 23, (여의도동)','7238');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1550,'맥도날드','여의도점','서울특별시 영등포구 여의도동 23번지','서울특별시','영등포구','서울특별시 영등포구 국제금융로 10, (여의도동)','7326');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1551,'버거킹','여의도점','서울특별시 영등포구 여의도동 37번지','서울특별시','영등포구','서울특별시 영등포구 의사당대로 108, (여의도동)','7322');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1552,'롯데리아','동여의도점','서울특별시 영등포구 여의도동 43-4번지','서울특별시','영등포구','서울특별시 영등포구 국제금융로 86, (여의도동)','7333');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1553,'버거킹','여의도점','서울특별시 영등포구 여의도동 45-3번지','서울특별시','영등포구','서울특별시 영등포구 국제금융로8길 27-8, (여의도동)','7332');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1554,'KFC','영등포역점','서울특별시 영등포구 영등포동 618-496번지','서울특별시','영등포구','서울특별시 영등포구 경인로 843, (영등포동)','7305');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1555,'롯데리아','영등포역사점','서울특별시 영등포구 영등포동 618-496번지','서울특별시','영등포구','서울특별시 영등포구 경인로 843, (영등포동)','7305');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1556,'맥도날드','영등포점','서울특별시 영등포구 영등포동3가 10-4번지','서울특별시','영등포구','서울특별시 영등포구 경인로 855, (영등포동3가)','7304');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1557,'롯데리아','영등포타임스퀘어B2점','서울특별시 영등포구 영등포동4가 442번지','서울특별시','영등포구','서울특별시 영등포구 영중로 15, (영등포동4가)','7305');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1558,'버거킹','영등포KT점','서울특별시 영등포구 영등포동8가 35-1번지','서울특별시','영등포구','서울특별시 영등포구 영중로 119, (영등포동8가)','7228');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1559,'롯데리아','영등포점','서울특별시 영등포구 영등포동8가 62-1번지','서울특별시','영등포구','서울특별시 영등포구 영중로 125, (영등포동8가)','7228');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1560,'롯데리아','숙대입구역점','서울특별시 용산구 갈월동 89-9번지','서울특별시','용산구','서울특별시 용산구 한강대로 283, (갈월동)','4321');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1561,'롯데리아','0','서울특별시 용산구 갈월동 98-6번지','서울특별시','용산구','서울특별시 용산구 한강대로71길 47, (갈월동)','4322');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1562,'KFC','서울역점','서울특별시 용산구 동자동 43-205번지','서울특별시','용산구','서울특별시 용산구 청파로 378, (동자동)','4301');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1563,'롯데리아','서울역광장점','서울특별시 용산구 동자동 43-205번지','서울특별시','용산구','서울특별시 용산구 청파로 378, (동자동)','4301');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1564,'맥도날드','서울역점','서울특별시 용산구 동자동 43-205번지','서울특별시','용산구','서울특별시 용산구 청파로 378, (동자동)','4301');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1565,'버거킹','서울역점','서울특별시 용산구 동자동 43-205번지','서울특별시','용산구','서울특별시 용산구 청파로 378, (동자동)','4301');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1566,'롯데리아','보광점','서울특별시 용산구 보광동 223-6번지','서울특별시','용산구','서울특별시 용산구 보광로 24, (보광동)','4415');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1567,'롯데리아','만리점','서울특별시 용산구 서계동 243-2번지','서울특별시','용산구','서울특별시 용산구 만리재로28길 2, (서계동)','4302');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1568,'KFC','이태원1점','서울특별시 용산구 이태원동 108-9번지','서울특별시','용산구','서울특별시 용산구 이태원로 179, (이태원동)','4350');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1569,'버거킹','이태원점','서울특별시 용산구 이태원동 127-12번지','서울특별시','용산구','서울특별시 용산구 이태원로 180, (이태원동)','4406');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1570,'버거킹','이태원점','서울특별시 용산구 이태원동 172-2번지','서울특별시','용산구','서울특별시 용산구 이태원로 153, (이태원동)','4351');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1571,'맥도날드','이태원점','서울특별시 용산구 이태원동 56-21번지','서울특별시','용산구','서울특별시 용산구 이태원로 142-1, (이태원동)','4390');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1572,'버거킹','국제점','서울특별시 용산구 한강로2가 191번지','서울특별시','용산구','서울특별시 용산구 한강대로 92, (한강로2가)','4386');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1364,'KFC','우이동점','서울특별시 도봉구 쌍문동 423-17번지','서울특별시','도봉구','서울특별시 도봉구 삼양로 544, (쌍문동)','1368');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1365,'맥도날드','쌍문DT점','서울특별시 도봉구 쌍문동 700번지','서울특별시','도봉구','서울특별시 도봉구 도봉로 541, (쌍문동)','1437');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1366,'롯데리아','창동역점','서울특별시 도봉구 창동 74-5번지','서울특별시','도봉구','서울특별시 도봉구 노해로63길 78, (창동)','1405');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1367,'롯데리아','0','서울특별시 동대문구 용두동 104-3번지','서울특별시','동대문구','서울특별시 동대문구 왕산로 86, (용두동)','2585');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1368,'롯데리아','외대역점','서울특별시 동대문구 이문동 288-26번지','서울특별시','동대문구','서울특별시 동대문구 휘경로 5-1, (이문동)','2419');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1369,'맘스터치','외대점','서울특별시 동대문구 이문동 288-65번지','서울특별시','동대문구','서울특별시 동대문구 이문로 108, (이문동)','2440');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1370,'맥도날드','외대점','서울특별시 동대문구 이문동 305-151번지','서울특별시','동대문구','서울특별시 동대문구 휘경로 15, (이문동)','2419');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1371,'버거킹','장안SK점','서울특별시 동대문구 장안동 164-2번지','서울특별시','동대문구','서울특별시 동대문구 한천로 100, (장안동)','2626');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1372,'롯데리아','장안사거리점','서울특별시 동대문구 장안동 308-2번지','서울특별시','동대문구','서울특별시 동대문구 답십리로 287, (장안동)','2523');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1373,'맥도날드','장안사거리점','서울특별시 동대문구 장안동 308-4번지','서울특별시','동대문구','서울특별시 동대문구 답십리로 291-1, (장안동)','2523');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1374,'맘스터치','장안점','서울특별시 동대문구 장안동 335-5번지','서울특별시','동대문구','서울특별시 동대문구 답십리로 302, (장안동)','2637');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1375,'파파이스','장안점','서울특별시 동대문구 장안동 368-1번지','서울특별시','동대문구','서울특별시 동대문구 답십리로 288, (장안동)','2637');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1376,'롯데리아','장한평역점','서울특별시 동대문구 장안동 416-8번지','서울특별시','동대문구','서울특별시 동대문구 천호대로 401, (장안동)','2633');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1377,'롯데리아','전농점','서울특별시 동대문구 전농동 10번지','서울특별시','동대문구','서울특별시 동대문구 사가정로 148, (전농동)','2532');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1378,'맥도날드','전농점','서울특별시 동대문구 전농동 295-96번지','서울특별시','동대문구','서울특별시 동대문구 전농로 146, (전농동)','2506');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1379,'KFC','청량리역사점','서울특별시 동대문구 전농동 591-53번지','서울특별시','동대문구','서울특별시 동대문구 왕산로 214, (전농동)','2555');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1380,'롯데리아','청량리역사점','서울특별시 동대문구 전농동 591-53번지','서울특별시','동대문구','서울특별시 동대문구 왕산로 214, (전농동)','2555');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1381,'맥도날드','청량리점','서울특별시 동대문구 청량리동 268번지','서울특별시','동대문구','서울특별시 동대문구 왕산로 205, (청량리동)','2490');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1382,'맘스터치','경희대점','서울특별시 동대문구 회기동 1-5번지','서울특별시','동대문구','서울특별시 동대문구 경희대로3길 62, (회기동)','2454');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1383,'맥도날드','경희대점','서울특별시 동대문구 회기동 16-49번지','서울특별시','동대문구','서울특별시 동대문구 경희대로 10, (회기동)','2453');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1384,'버거킹','회기점','서울특별시 동대문구 회기동 16-61번지','서울특별시','동대문구','서울특별시 동대문구 경희대로 1, (회기동)','2454');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1385,'맥도날드','노량진점','서울특별시 동작구 노량진동 100-1번지','서울특별시','동작구','서울특별시 동작구 노량진로 158, (노량진동)','6922');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1386,'버거킹','노량진점','서울특별시 동작구 노량진동 151-11번지','서울특별시','동작구','서울특별시 동작구 노량진로 169, (노량진동)','6902');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1387,'버거킹','노량진점','서울특별시 동작구 노량진동 151-11번지','서울특별시','동작구','서울특별시 동작구 노량진로 169, (노량진동)','6902');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1388,'롯데리아','노량진점','서울특별시 동작구 노량진동 45-3번지','서울특별시','동작구','서울특별시 동작구 장승배기로 171, (노량진동)','6928');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1389,'버거킹','사당역점','서울특별시 동작구 사당동 1031-27번지','서울특별시','동작구','서울특별시 동작구 동작대로 21, (사당동)','7015');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1390,'롯데리아','이수역점','서울특별시 동작구 사당동 134-3번지','서울특별시','동작구','서울특별시 동작구 동작대로 123, (사당동)','7008');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1391,'맥도날드','이수점','서울특별시 동작구 사당동 147-29번지','서울특별시','동작구','서울특별시 동작구 사당로 300, (사당동)','7013');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1392,'KFC','남성역','서울특별시 동작구 사당동 252-15번지','서울특별시','동작구','서울특별시 동작구 사당로 219, (사당동)','7004');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1393,'롯데리아','이수역점','서울특별시 동작구 사당동 86-9번지','서울특별시','동작구','서울특별시 동작구 동작대로 129, (사당동)','6997');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1394,'롯데리아','성대시장점','서울특별시 동작구 상도동 324-1번지','서울특별시','동작구','서울특별시 동작구 상도로 102, (상도동)','7041');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1395,'파파이스','장승배기점','서울특별시 동작구 상도동 373-55번지','서울특별시','동작구','서울특별시 동작구 상도로 195, (상도동)','6925');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1396,'맥도날드','숭실대점','서울특별시 동작구 상도동 505-5번지','서울특별시','동작구','서울특별시 동작구 사당로 22, (상도동)','7027');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1397,'롯데리아','고척점','서울특별시 동작구 신대방동 395-67번지','서울특별시','동작구','서울특별시 동작구 보라매로5길 51, (신대방동)','7071');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1398,'KFC','보라매매장','서울특별시 동작구 신대방동 395-73번지','서울특별시','동작구','서울특별시 동작구 보라매로5가길 7, (신대방동)','7071');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1399,'롯데리아','중앙대점','서울특별시 동작구 흑석동 182-7번지','서울특별시','동작구','서울특별시 동작구 흑석로 110-1, (흑석동)','6972');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1400,'맥도날드','중앙대점','서울특별시 동작구 흑석동 221번지','서울특별시','동작구','서울특별시 동작구 흑석로6길 61, (흑석동)','6974');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1401,'버거킹','공덕역점','서울특별시 마포구 공덕동 252-5번지','서울특별시','마포구','서울특별시 마포구 마포대로 144, (공덕동)','4212');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1402,'롯데리아','신촌로터리점','서울특별시 마포구 노고산동 57-26번지','서울특별시','마포구','서울특별시 마포구 서강로 137, (노고산동)','4058');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1403,'롯데리아','대흥역점','서울특별시 마포구 대흥동 803번지','서울특별시','마포구','서울특별시 마포구 대흥로 79, (대흥동)','4110');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1404,'맥도날드','공덕점','서울특별시 마포구 도화동 559번지','서울특별시','마포구','서울특별시 마포구 마포대로 53, (도화동)','4158');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1405,'맥도날드','홍익대점','서울특별시 마포구 동교동 162-4번지','서울특별시','마포구','서울특별시 마포구 양화로 140, (동교동)','4050');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1406,'버거킹','홍대역점','서울특별시 마포구 동교동 164-31번지','서울특별시','마포구','서울특별시 마포구 홍익로6길 34, (동교동)','4050');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1407,'롯데리아','0','서울특별시 마포구 망원동 377-2번지','서울특별시','마포구','서울특별시 마포구 월드컵로 85, (망원동)','4012');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1408,'맘스터치','망원역점','서울특별시 마포구 망원동 379-3번지','서울특별시','마포구','서울특별시 마포구 월드컵로13길 13, (망원동)','4013');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1409,'맥도날드','서울상암DMC점','서울특별시 마포구 상암동 1602번지','서울특별시','마포구','서울특별시 마포구 월드컵북로 400, (상암동)','3925');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1410,'버거킹','상암MBC점','서울특별시 마포구 상암동 1603번지','서울특별시','마포구','서울특별시 마포구 성암로 267, (상암동)','3925');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1411,'버거킹','0','서울특별시 마포구 상암동 1604번지','서울특별시','마포구','서울특별시 마포구 성암로 255, (상암동)','3925');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1412,'맘스터치','홍대점','서울특별시 마포구 서교동 338-18번지','서울특별시','마포구','서울특별시 마포구 와우산로 100, (서교동)','4059');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1413,'롯데리아','홍대점','서울특별시 마포구 서교동 358-25번지','서울특별시','마포구','서울특별시 마포구 홍익로 3, (서교동)','4040');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1414,'버거킹','서교동사거리점','서울특별시 마포구 서교동 372-1번지','서울특별시','마포구','서울특별시 마포구 양화로 100, (서교동)','4038');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1415,'롯데리아','합정점','서울특별시 마포구 서교동 490번지','서울특별시','마포구','서울특별시 마포구 양화로 45, (서교동)','4036');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1416,'맥도날드','0','서울특별시 마포구 서교동 490번지','서울특별시','마포구','서울특별시 마포구 양화로 45, (서교동)','4036');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1417,'맥도날드','합정메세나폴리스점','서울특별시 마포구 서교동 490번지','서울특별시','마포구','서울특별시 마포구 양화로 45, (서교동)','4036');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1418,'KFC','0','서울특별시 마포구 성산동 515번지','서울특별시','마포구','서울특별시 마포구 월드컵로 240, (성산동)','3932');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1419,'롯데리아','0','서울특별시 마포구 성산동 515번지','서울특별시','마포구','서울특별시 마포구 월드컵로 240, (성산동)','3932');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1420,'롯데리아','명지대학점','서울특별시 서대문구 남가좌동 324-31번지','서울특별시','서대문구','서울특별시 서대문구 거북골로 31, (남가좌동)','3665');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1421,'맥도날드','명지대점','서울특별시 서대문구 남가좌동 324-3번지','서울특별시','서대문구','서울특별시 서대문구 거북골로 25, (남가좌동)','3665');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1422,'맘스터치','명지대점','서울특별시 서대문구 남가좌동 50-3번지','서울특별시','서대문구','서울특별시 서대문구 거북골로 34, (남가좌동)','3674');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1423,'롯데리아','신촌기차역점','서울특별시 서대문구 대현동 110-4번지','서울특별시','서대문구','서울특별시 서대문구 신촌역로 25, (대현동)','3777');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1424,'파파이스','이대점','서울특별시 서대문구 대현동 54-13번지','서울특별시','서대문구','서울특별시 서대문구 이화여대길 20, (대현동)','3767');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1425,'버거킹','가재울뉴타운점','서울특별시 서대문구 북가좌동 487번지','서울특별시','서대문구','서울특별시 서대문구 수색로 56, (북가좌동)','3709');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1426,'롯데리아','아현점','서울특별시 서대문구 북아현동 126-21번지','서울특별시','서대문구','서울특별시 서대문구 신촌로 277, (북아현동)','3758');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1427,'파파이스','연세점','서울특별시 서대문구 신촌동 9-82번지','서울특별시','서대문구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1428,'버거킹','연희점','서울특별시 서대문구 연희동 188-2번지','서울특별시','서대문구','서울특별시 서대문구 연희로 97, (연희동)','3708');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1429,'맘스터치','신촌점','서울특별시 서대문구 창천동 13-28번지','서울특별시','서대문구','서울특별시 서대문구 명물길 16, (창천동)','3777');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1430,'버거킹','신촌점','서울특별시 서대문구 창천동 18-53번지','서울특별시','서대문구','서울특별시 서대문구 신촌로 101, (창천동)','3779');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1431,'맥도날드','연세대점','서울특별시 서대문구 창천동 33-12번지','서울특별시','서대문구','서울특별시 서대문구 연세로 33, (창천동)','3788');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1432,'버거킹','연세로점','서울특별시 서대문구 창천동 33-38번지','서울특별시','서대문구','서울특별시 서대문구 연세로 25, (창천동)','3788');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1433,'파파이스','동교점','서울특별시 서대문구 창천동 510-4번지','서울특별시','서대문구','서울특별시 서대문구 신촌로 3, (창천동)','3785');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1434,'롯데리아','서대문역점','서울특별시 서대문구 충정로2가 8-2번지','서울특별시','서대문구','서울특별시 서대문구 통일로 127, (충정로2가)','3735');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1435,'롯데리아','홍제역점','서울특별시 서대문구 홍제동 173-16번지','서울특별시','서대문구','서울특별시 서대문구 통일로 433, (홍제동)','3646');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1436,'맥도날드','홍제역점','서울특별시 서대문구 홍제동 253-11번지','서울특별시','서대문구','서울특별시 서대문구 통일로 442-1, (홍제동)','3629');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1437,'롯데리아','홍제역점','서울특별시 서대문구 홍제동 253-8번지','서울특별시','서대문구','서울특별시 서대문구 통일로 446, (홍제동)','3629');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1438,'버거킹','홍제역점','서울특별시 서대문구 홍제동 301-2번지','서울특별시','서대문구','서울특별시 서대문구 통일로 464, (홍제동)','3629');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1439,'파파이스','0','서울특별시 서초구 반포동 118-3번지','서울특별시','서초구','서울특별시 서초구 사평대로 205, (반포동)','6545');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1440,'KFC','0','서울특별시 서초구 반포동 19-3번지','서울특별시','서초구','서울특별시 서초구 신반포로 176, (반포동)','6546');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1441,'버거킹','반포고속터미널점','서울특별시 서초구 반포동 19-4번지','서울특별시','서초구','서울특별시 서초구 신반포로 194, (반포동)','6545');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1442,'파파이스','신논현역점','서울특별시 서초구 반포동 736-15번지','서울특별시','서초구','서울특별시 서초구 사평대로57길 54, (반포동)','6536');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1443,'버거킹','강남교보점','서울특별시 서초구 반포동 748-8번지','서울특별시','서초구','서울특별시 서초구 사평대로 371, (반포동)','6541');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1444,'롯데리아','사당점','서울특별시 서초구 방배동 443-3번지','서울특별시','서초구','서울특별시 서초구 동작대로 24, (방배동)','6692');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1445,'버거킹','방배점','서울특별시 서초구 방배동 908-3번지','서울특별시','서초구','서울특별시 서초구 방배로 96, (방배동)','6665');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1446,'맥도날드','방배점','서울특별시 서초구 방배동 909-9번지','서울특별시','서초구','서울특별시 서초구 방배로 81, (방배동)','6686');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1447,'맥도날드','서초뱅뱅점','서울특별시 서초구 서초동 1338-20번지','서울특별시','서초구','서울특별시 서초구 강남대로 305, (서초동)','6628');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1448,'버거킹','남부터미널점','서울특별시 서초구 서초동 1446-1번지','서울특별시','서초구','서울특별시 서초구 효령로 292, (서초동)','6718');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1449,'맥도날드','서초GS점','서울특별시 서초구 서초동 1536-15번지','서울특별시','서초구','서울특별시 서초구 반포대로 69, (서초동)','6670');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1450,'맥도날드','서초GS점','서울특별시 서초구 서초동 1536-1번지','서울특별시','서초구','서울특별시 서초구 효령로49길 52, (서초동)','6670');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1451,'버거킹','서초역점','서울특별시 서초구 서초동 1540-8번지','서울특별시','서초구','서울특별시 서초구 반포대로 105, (서초동)','6656');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1452,'롯데리아','남부터미널점','서울특별시 서초구 서초동 1602-10번지','서울특별시','서초구','서울특별시 서초구 효령로 289, (서초동)','6654');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1453,'맥도날드','서울교대점','서울특별시 서초구 서초동 1674-5번지','서울특별시','서초구','서울특별시 서초구 서초대로 316, (서초동)','6633');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1454,'버거킹','교대역점','서울특별시 서초구 서초동 1715-10번지','서울특별시','서초구','서울특별시 서초구 서초대로 283, (서초동)','6596');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1455,'버거킹','양재점','서울특별시 서초구 양재동 23번지','서울특별시','서초구','서울특별시 서초구 강남대로 221, (양재동)','6749');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1456,'롯데리아','양재동점','서울특별시 서초구 양재동 333-2번지','서울특별시','서초구','서울특별시 서초구 동산로 22, (양재동)','6785');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1457,'맥도날드','양재SKDT','서울특별시 서초구 양재동 81번지','서울특별시','서초구','서울특별시 서초구 바우뫼로 178, (양재동)','6748');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1458,'롯데리아','우장산역점','서울특별시 서초구 잠원동 53번지','서울특별시','서초구','서울특별시 서초구 잠원로12길 4, (잠원동)','6517');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1459,'버거킹','강남NC점','서울특별시 서초구 잠원동 70-1번지','서울특별시','서초구','서울특별시 서초구 잠원로 69, (잠원동)','6511');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1460,'맥도날드','강남뉴코아점','서울특별시 서초구 잠원동 70-2번지','서울특별시','서초구','서울특별시 서초구 잠원로 51, (잠원동)','6511');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1461,'롯데리아','금호점','서울특별시 성동구 금호동3가 1300번지','서울특별시','성동구','서울특별시 성동구 장터길 23, (금호동3가)','4724');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1462,'맘스터치','금호점','서울특별시 성동구 금호동4가 561-2번지','서울특별시','성동구','서울특별시 성동구 독서당로 296-1, (금호동4가)','4737');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1463,'맘스터치','마장점','서울특별시 성동구 마장동 772-4번지','서울특별시','성동구','서울특별시 성동구 마장로 301, (마장동)','4756');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1464,'파파이스','한양대점','서울특별시 성동구 사근동 110번지','서울특별시','성동구','서울특별시 성동구 사근동길 20-11, (사근동)','4762');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1465,'롯데리아','성수역점','서울특별시 성동구 성수동2가 289-4번지','서울특별시','성동구','서울특별시 성동구 아차산로7길 28, (성수동2가)','4795');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1466,'맥도날드','이마트성수점','서울특별시 성동구 성수동2가 333-16번지','서울특별시','성동구','서울특별시 성동구 뚝섬로 377, (성수동2가)','4781');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1467,'롯데리아','답십리점','서울특별시 성동구 용답동 62-2번지','서울특별시','성동구','서울특별시 성동구 천호대로 308, (용답동)','4804');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1468,'맘스터치','왕십리뉴타운점','서울특별시 성동구 하왕십리동 700번지','서울특별시','성동구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1469,'롯데리아','한양대점','서울특별시 성동구 행당동 15-1번지','서울특별시','성동구','서울특별시 성동구 마조로 22-2, (행당동)','4763');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1470,'KFC','왕십리점','서울특별시 성동구 행당동 168-151번지','서울특별시','성동구','서울특별시 성동구 왕십리광장로 17, (행당동)','4750');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1471,'파파이스','한양대복지관점','서울특별시 성동구 행당동 17번지','서울특별시','성동구','서울특별시 성동구 마조로 22-2, (행당동)','4763');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1472,'맥도날드','왕십리점','서울특별시 성동구 행당동 286-3번지','서울특별시','성동구','서울특별시 성동구 왕십리로 321, (행당동)','4715');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1473,'맥도날드','한양대점','서울특별시 성동구 행당동 31-7번지','서울특별시','성동구','서울특별시 성동구 왕십리로 227, (행당동)','4764');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1474,'맘스터치','한양대점','서울특별시 성동구 행당동 3-29번지','서울특별시','성동구','서울특별시 성동구 마조로 31, (행당동)','4760');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1475,'롯데리아','롯데마트행당역점','서울특별시 성동구 행당동 346번지','서울특별시','성동구','서울특별시 성동구 행당로 76, (행당동)','4717');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1476,'롯데리아','길음뉴타운점','서울특별시 성북구 길음동 1286-10번지','서울특별시','성북구','서울특별시 성북구 길음로7길 6, (길음동)','2721');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1477,'롯데리아','길음뉴타운점','서울특별시 성북구 길음동 1286번지','서울특별시','성북구','서울특별시 성북구 길음로9길 50, (길음동)','2721');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1478,'버거킹','미아현대점','서울특별시 성북구 길음동 20-1번지','서울특별시','성북구','서울특별시 성북구 동소문로 315, (길음동)','2730');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1479,'롯데리아','미아삼거리점','서울특별시 성북구 길음동 31-2번지','서울특별시','성북구','서울특별시 성북구 도봉로 29, (길음동)','2728');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1480,'맥도날드','성신여대점','서울특별시 성북구 동선동1가 2-1번지','서울특별시','성북구','서울특별시 성북구 동소문로22길 12, (동선동1가)','2845');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1481,'KFC','0','서울특별시 성북구 동선동1가 3-1번지','서울특별시','성북구','서울특별시 성북구 동소문로20나길 18, (동선동1가)','2845');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1482,'롯데리아','성신여대점','서울특별시 성북구 동선동4가 104번지','서울특별시','성북구','서울특별시 성북구 동소문로 117, (동선동4가)','2829');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1483,'파파이스','성신여대역점','서울특별시 성북구 동선동4가 98-2번지','서울특별시','성북구','서울특별시 성북구 동소문로 113, (동선동4가)','2829');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1484,'맥도날드','삼선점','서울특별시 성북구 동소문동1가 32-3번지','서울특별시','성북구','서울특별시 성북구 동소문로 13, (동소문동1가)','2833');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1485,'롯데리아','보문역점','서울특별시 성북구 보문동5가 3-1번지','서울특별시','성북구','서울특별시 성북구 보문로 99, (보문동5가)','2872');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1486,'롯데리아','석관점','서울특별시 성북구 석관동 255-2번지','서울특별시','성북구','서울특별시 성북구 돌곶이로 75, (석관동)','2787');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1487,'버거킹','석관점','서울특별시 성북구 석관동 301-1번지','서울특별시','성북구','서울특별시 성북구 돌곶이로 50, (석관동)','2784');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1488,'맥도날드','안암점','서울특별시 성북구 안암동5가 102-33번지','서울특별시','성북구','서울특별시 성북구 인촌로24길 42, (안암동5가)','2855');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1489,'버거킹','안암오거리점','서울특별시 성북구 안암동5가 104-291번지','서울특별시','성북구','서울특별시 성북구 안암로 73, (안암동5가)','2855');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1490,'롯데리아','고대하나스퀘어점','서울특별시 성북구 안암동5가 126-16번지','서울특별시','성북구','서울특별시 성북구 안암로 73-15, (안암동5가)','2855');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1491,'맘스터치','고대타이거프라자점','서울특별시 성북구 안암동5가 1-2번지','서울특별시','성북구','서울특별시 성북구 안암로 145, (안암동5가)','2841');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1492,'버거킹','고대중앙광장점','서울특별시 성북구 안암동5가 1-2번지','서울특별시','성북구','서울특별시 성북구 안암로 145, (안암동5가)','2841');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1493,'파파이스','0','서울특별시 성북구 안암동5가 1-2번지','서울특별시','성북구','서울특별시 성북구 안암로 145, (안암동5가)','2841');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1494,'롯데리아','정릉점','서울특별시 성북구 정릉동 411-33번지','서울특별시','성북구','서울특별시 성북구 보국문로8길 4, (정릉동)','2718');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1495,'맘스터치','국민대점','서울특별시 성북구 정릉동 861-1번지','서울특별시','성북구','서울특별시 성북구 정릉로 119-39, (정릉동)','2707');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1496,'맥도날드','종암SK점','서울특별시 성북구 종암동 10-15번지','서울특별시','성북구','서울특별시 성북구 종암로 58, (종암동)','2800');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1497,'롯데리아','종암점','서울특별시 성북구 종암동 68-10번지','서울특별시','성북구','서울특별시 성북구 종암로 87-6, (종암동)','2810');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1498,'맥도날드','가락DT점','서울특별시 송파구 가락동 193-7번지','서울특별시','송파구','서울특별시 송파구 동남로 196, (가락동)','5784');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1499,'롯데리아','마천점','서울특별시 송파구 마천동 181번지','서울특별시','송파구','서울특별시 송파구 마천로 315, (마천동)','5758');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1500,'버거킹','문정점','서울특별시 송파구 문정동 116-4번지','서울특별시','송파구','서울특별시 송파구 송이로 239, (문정동)','5798');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1501,'롯데리아','문정로데오점','서울특별시 송파구 문정동 4-7번지','서울특별시','송파구','서울특별시 송파구 동남로 134, (문정동)','5796');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1502,'롯데리아','송파하비오점','서울특별시 송파구 문정동 618번지','서울특별시','송파구','서울특별시 송파구 송파대로 111, (문정동)','5837');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1503,'롯데리아','가든파이브점','서울특별시 송파구 문정동 634번지','서울특별시','송파구','서울특별시 송파구 충민로 66, (문정동)','5838');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1504,'버거킹','몽촌토성점','서울특별시 송파구 방이동 44-1번지','서울특별시','송파구','서울특별시 송파구 백제고분로51길 30, (방이동)','5544');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1505,'버거킹','송파구청점','서울특별시 송파구 방이동 65-2번지','서울특별시','송파구','서울특별시 송파구 오금로 99, (방이동)','5548');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1506,'롯데리아','올림픽공원점','서울특별시 송파구 방이동 88번지','서울특별시','송파구','서울특별시 송파구 올림픽로 424, (방이동)','5540');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1507,'버거킹','올림픽상가점','서울특별시 송파구 방이동 89-11번지','서울특별시','송파구','서울특별시 송파구 양재대로 1222, (방이동)','5648');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1508,'버거킹','석촌점','서울특별시 송파구 송파동 15-8번지','서울특별시','송파구','서울특별시 송파구 송파대로 448, (송파동)','5625');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1509,'맥도날드','석촌역점','서울특별시 송파구 송파동 84번지','서울특별시','송파구','서울특별시 송파구 백제고분로 390, (송파동)','5667');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1510,'롯데리아','롯데월드몰지하1층점','서울특별시 송파구 신천동 29번지','서울특별시','송파구','서울특별시 송파구 올림픽로 300, (신천동)','5551');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1511,'맥도날드','0','서울특별시 송파구 신천동 29번지','서울특별시','송파구','서울특별시 송파구 올림픽로 300, (신천동)','5551');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1512,'롯데리아','HP잠실점','서울특별시 송파구 신천동 7-12번지','서울특별시','송파구','서울특별시 송파구 올림픽로35가길 16, (신천동)','5510');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1513,'롯데리아','0','서울특별시 송파구 신천동 7-18번지','서울특별시','송파구','서울특별시 송파구 올림픽로 269, (신천동)','5510');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1514,'맥도날드','잠실역점','서울특별시 송파구 신천동 7-25번지','서울특별시','송파구','서울특별시 송파구 송파대로 558, (신천동)','5510');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1515,'롯데리아','오금동사거리점','서울특별시 송파구 오금동 126-4번지','서울특별시','송파구','서울특별시 송파구 동남로 313, (오금동)','5729');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1516,'KFC','0','서울특별시 송파구 잠실동 10번지','서울특별시','송파구','서울특별시 송파구 올림픽로 25, (잠실동)','5500');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1517,'롯데리아','잠실야구장1호점','서울특별시 송파구 잠실동 10번지','서울특별시','송파구','서울특별시 송파구 올림픽로 25, (잠실동)','5500');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1518,'버거킹','잠실야구장점','서울특별시 송파구 잠실동 10번지','서울특별시','송파구','서울특별시 송파구 올림픽로 25, (잠실동)','5500');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1519,'맥도날드','신천점','서울특별시 송파구 잠실동 181-9번지','서울특별시','송파구','서울특별시 송파구 올림픽로 108, (잠실동)','5557');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1520,'롯데리아','신천점','서울특별시 송파구 잠실동 184번지','서울특별시','송파구','서울특별시 송파구 올림픽로 114, (잠실동)','5558');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1521,'맥도날드','송파잠실DT점','서울특별시 송파구 잠실동 305-15번지','서울특별시','송파구','서울특별시 송파구 도곡로 434, (잠실동)','5573');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1522,'롯데리아','잠실롯데점','서울특별시 송파구 잠실동 40-1번지','서울특별시','송파구','서울특별시 송파구 올림픽로 240, (잠실동)','5554');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1523,'맥도날드','위례신도시점','서울특별시 송파구 장지동 896번지','서울특별시','송파구','서울특별시 송파구 위례광장로 290, (장지동)','5852');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1524,'맥도날드','파리공원점','서울특별시 양천구 목동 908-25번지','서울특별시','양천구','서울특별시 양천구 목동서로 45, (목동)','7984');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1525,'롯데리아','목동파리공원','서울특별시 양천구 목동 908-34번지','서울특별시','양천구','서울특별시 양천구 목동동로 411, (목동)','7984');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1526,'KFC','0','서울특별시 양천구 목동 916번지','서울특별시','양천구','서울특별시 양천구 목동동로 257, (목동)','7998');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1527,'버거킹','목동현대점','서울특별시 양천구 목동 916번지','서울특별시','양천구','서울특별시 양천구 목동동로 257, (목동)','7998');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1528,'롯데리아','목동행복한백화점점','서울특별시 양천구 목동 917-6번지','서울특별시','양천구','서울특별시 양천구 목동동로 309, (목동)','7997');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1529,'버거킹','목동이마트점','서울특별시 양천구 목동 962번지','서울특별시','양천구','서울특별시 양천구 오목로 299, (목동)','8001');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1530,'맥도날드','신월DT점','서울특별시 양천구 신월동 199-3번지','서울특별시','양천구','서울특별시 양천구 남부순환로 404, (신월동)','7915');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1531,'맥도날드','신월이마트점','서울특별시 양천구 신월동 26번지','서울특별시','양천구','서울특별시 양천구 화곡로 59, (신월동)','7902');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1573,'롯데리아','용산전자랜드점','서울특별시 용산구 한강로3가 16-9번지','서울특별시','용산구','서울특별시 용산구 청파로 74, (한강로3가)','4372');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1574,'KFC','0','서울특별시 용산구 한강로3가 40-999번지','서울특별시','용산구','서울특별시 용산구 한강대로21나길 17, (한강로3가)','4377');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1575,'롯데리아','0','서울특별시 용산구 한강로3가 40-999번지','서울특별시','용산구','서울특별시 용산구 한강대로21나길 17, (한강로3가)','4377');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1576,'버거킹','0','서울특별시 용산구 한강로3가 40-999번지','서울특별시','용산구','서울특별시 용산구 한강대로21나길 17, (한강로3가)','4377');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1577,'KFC','0','서울특별시 용산구 한남동 76-21번지','서울특별시','용산구','서울특별시 용산구 한남대로 57, (한남동)','4401');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1578,'롯데리아','후암점','서울특별시 용산구 후암동 27-13번지','서울특별시','용산구','서울특별시 용산구 후암로 54, (후암동)','4327');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1579,'맥도날드','은평SK점','서울특별시 은평구 갈현동 1-6번지','서울특별시','은평구','서울특별시 은평구 통일로 945, (갈현동)','3314');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1580,'맥도날드','연신내점','서울특별시 은평구 갈현동 456-28번지','서울특별시','은평구','서울특별시 은평구 연서로 213, (갈현동)','3331');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1581,'맥도날드','구산점','서울특별시 은평구 구산동 1-14번지','서울특별시','은평구','서울특별시 은평구 연서로 131, (구산동)','3412');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1582,'파파이스','연신내점','서울특별시 은평구 대조동 198-10번지','서울특별시','은평구','서울특별시 은평구 연서로 216, (대조동)','3385');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1583,'롯데리아','불광점','서울특별시 은평구 대조동 6-5번지','서울특별시','은평구','서울특별시 은평구 통일로 741, (대조동)','3396');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1584,'버거킹','불광점','서울특별시 은평구 불광동 267번지','서울특별시','은평구','서울특별시 은평구 통일로 746, (불광동)','3358');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1585,'버거킹','연신내역점','서울특별시 은평구 불광동 305-3번지','서울특별시','은평구','서울특별시 은평구 통일로 834, (불광동)','3350');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1586,'롯데리아','구산역점','서울특별시 은평구 역촌동 1-2번지','서울특별시','은평구','서울특별시 은평구 서오릉로 137, (역촌동)','3398');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1587,'롯데리아','녹번점','서울특별시 은평구 응암동 74-3번지','서울특별시','은평구','서울특별시 은평구 은평로 206, (응암동)','3472');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1588,'맥도날드','은평이마트점','서울특별시 은평구 응암동 90-1번지','서울특별시','은평구','서울특별시 은평구 은평로 111, (응암동)','3461');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1589,'롯데리아','응암점','서울특별시 은평구 응암동 98-65번지','서울특별시','은평구','서울특별시 은평구 은평로 136, (응암동)','3462');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1590,'롯데리아','0','서울특별시 은평구 진관동 63번지','서울특별시','은평구','서울특별시 은평구 통일로 1050, (진관동)','3306');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1591,'파파이스','구파발역점','서울특별시 은평구 진관동 74번지','서울특별시','은평구','서울특별시 은평구 진관2로 19, (진관동)','3306');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1592,'맥도날드','성균관대점','서울특별시 종로구 명륜2가 197-1번지','서울특별시','종로구','서울특별시 종로구 창경궁로 241-1, (명륜2가)','3074');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1593,'맘스터치','성균관대점','서울특별시 종로구 명륜3가 53-21번지','서울특별시','종로구','서울특별시 종로구 명륜3길 35-22, (명륜3가)','3064');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1594,'맘스터치','성균관대점','서울특별시 종로구 명륜3가 53번지','서울특별시','종로구','서울특별시 종로구 성균관로 41, (명륜3가)','3063');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1595,'맘스터치','종로대학로점','서울특별시 종로구 명륜4가 12-3번지','서울특별시','종로구','서울특별시 종로구 대명길 17, (명륜4가)','3078');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1596,'롯데리아','0','서울특별시 종로구 세종로 80-1번지','서울특별시','종로구','서울특별시 종로구 세종대로 189, (세종로)','3172');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1597,'버거킹','종로구청점','서울특별시 종로구 수송동 68-1번지','서울특별시','종로구','서울특별시 종로구 삼봉로 57, (수송동)','3151');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1598,'맥도날드','정동점','서울특별시 종로구 신문로2가 89-27번지','서울특별시','종로구','서울특별시 종로구 새문안로 42, (신문로2가)','3184');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1599,'맥도날드','안국역점','서울특별시 종로구 안국동 164번지','서울특별시','종로구','서울특별시 종로구 율곡로 45, (안국동)','3060');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1600,'맥도날드','0','서울특별시 종로구 종로1가 1번지','서울특별시','종로구','서울특별시 종로구 종로 1, (종로1가)','3154');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1601,'버거킹','종로점','서울특별시 종로구 종로2가 56-23번지','서울특별시','종로구','서울특별시 종로구 종로 94, (종로2가)','3191');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1602,'롯데리아','종각역점','서울특별시 종로구 종로2가 84-8번지','서울특별시','종로구','서울특별시 종로구 종로 68, (종로2가)','3189');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1603,'맥도날드','종로3가점','서울특별시 종로구 종로3가 10번지','서울특별시','종로구','서울특별시 종로구 종로 115, (종로3가)','3139');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1604,'맥도날드','서울동묘역점','서울특별시 종로구 창신동 290번지','서울특별시','종로구','서울특별시 종로구 종로 339, (창신동)','3104');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1605,'롯데리아','동묘역점','서울특별시 종로구 창신동 326-6번지','서울특별시','종로구','서울특별시 종로구 종로 336, (창신동)','3121');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1606,'파파이스','0','서울특별시 종로구 체부동 48번지','서울특별시','종로구','서울특별시 종로구 자하문로 9, (체부동)','3041');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1607,'롯데리아','혜화점','서울특별시 종로구 혜화동 111-7번지','서울특별시','종로구','서울특별시 종로구 창경궁로 273, (혜화동)','3075');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1608,'버거킹','숭례문점','서울특별시 중구 남대문로5가 1-1번지','서울특별시','중구','서울특별시 중구 세종대로 23, (남대문로5가)','4512');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1609,'파파이스','0','서울특별시 중구 남대문로5가 541번지','서울특별시','중구','서울특별시 중구 한강대로 416, (남대문로5가)','4637');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1610,'버거킹','서울역점','서울특별시 중구 남대문로5가 73-6번지','서울특별시','중구','서울특별시 중구 세종대로 2, (남대문로5가)','4527');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1611,'롯데리아','남대문점','서울특별시 중구 남창동 1-1번지','서울특별시','중구','서울특별시 중구 남대문로 30, (남창동)','4529');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1612,'KFC','0','서울특별시 중구 명동1가 45-3번지','서울특별시','중구','서울특별시 중구 명동7길 16, (명동1가)','4534');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1613,'맥도날드','명동점','서울특별시 중구 명동1가 48-2번지','서울특별시','중구','서울특별시 중구 명동7길 8, (명동1가)','4534');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1614,'버거킹','무교점','서울특별시 중구 무교동 33-1번지','서울특별시','중구','서울특별시 중구 무교로 17, (무교동)','4520');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1615,'맥도날드','서울역점','서울특별시 중구 봉래동2가 122-11번지','서울특별시','중구','서울특별시 중구 한강대로 405, (봉래동2가)','4509');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1616,'버거킹','서울역점','서울특별시 중구 봉래동2가 122-11번지','서울특별시','중구','서울특별시 중구 한강대로 405, (봉래동2가)','4509');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1617,'버거킹','약수역점','서울특별시 중구 신당동 370-64번지','서울특별시','중구','서울특별시 중구 다산로 142, (신당동)','4590');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1618,'맥도날드','서울시청점','서울특별시 중구 을지로1가 32번지','서울특별시','중구','서울특별시 중구 남대문로9길 51, (을지로1가)','4523');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1619,'롯데리아','동대문역사문화공원역점','서울특별시 중구 을지로6가 18-130번지','서울특별시','중구','서울특별시 중구 을지로 255, (을지로6가)','4564');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1620,'롯데리아','동대문APM점','서울특별시 중구 을지로6가 18-35번지','서울특별시','중구','서울특별시 중구 장충단로 253, (을지로6가)','4564');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1621,'버거킹','동국대점','서울특별시 중구 장충동2가 192-5번지','서울특별시','중구','서울특별시 중구 서애로 15-20, (장충동2가)','4620');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1622,'KFC','0','서울특별시 중구 초동 18-5번지','서울특별시','중구','서울특별시 중구 마른내로 47, (초동)','4549');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1623,'버거킹','충무로역점','서울특별시 중구 충무로4가 125-11번지','서울특별시','중구','서울특별시 중구 퇴계로 216, (충무로4가)','4625');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1624,'버거킹','시청역점','서울특별시 중구 태평로2가 330-2번지','서울특별시','중구','서울특별시 중구 서소문로 134-5, (태평로2가)','4514');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1625,'KFC','0','서울특별시 중구 태평로2가 361-1번지','서울특별시','중구','서울특별시 중구 세종대로 91, (태평로2가)','4515');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1626,'파파이스','충무로점','서울특별시 중구 필동2가 15-7번지','서울특별시','중구','서울특별시 중구 퇴계로 206, (필동2가)','4625');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1627,'버거킹','황학이마트점','서울특별시 중구 황학동 2545번지','서울특별시','중구','서울특별시 중구 청계천로 400, (황학동)','4572');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1628,'맥도날드','명동2호점','서울특별시 중구 회현동3가 1-5번지','서울특별시','중구','서울특별시 중구 퇴계로 116-1, (회현동3가)','4631');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1629,'버거킹','신당역점','서울특별시 중구 흥인동 86번지','서울특별시','중구','서울특별시 중구 다산로 258, (흥인동)','4570');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1630,'롯데리아','망우점','서울특별시 중랑구 망우동 461-1번지','서울특별시','중랑구','서울특별시 중랑구 봉우재로 239, (망우동)','2172');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1631,'롯데리아','면목중앙점','서울특별시 중랑구 면목동 126-39번지','서울특별시','중랑구','서울특별시 중랑구 면목로 415, (면목동)','2146');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1632,'롯데리아','먹골역점','서울특별시 중랑구 묵동 176-23번지','서울특별시','중랑구','서울특별시 중랑구 공릉로 12, (묵동)','2037');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1633,'맥도날드','중랑점','서울특별시 중랑구 상봉동 130-166번지','서울특별시','중랑구','서울특별시 중랑구 망우로 202, (상봉동)','2120');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1634,'롯데리아','중랑역점','서울특별시 중랑구 상봉동 136-1번지','서울특별시','중랑구','서울특별시 중랑구 망우로 192, (상봉동)','2119');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1635,'맥도날드','신내점','서울특별시 중랑구 신내동 666번지','서울특별시','중랑구','서울특별시 중랑구 봉화산로 194, (신내동)','2076');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1636,'버거킹','중랑역점','서울특별시 중랑구 중화동 208-33번지','서울특별시','중랑구','서울특별시 중랑구 망우로 203, (중화동)','2116');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1637,'롯데리아','중화역점','서울특별시 중랑구 중화동 286-25번지','서울특별시','중랑구','서울특별시 중랑구 동일로 802, (중화동)','2051');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1638,'맥도날드','중화점','서울특별시 중랑구 중화동 305-42번지','서울특별시','중랑구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1639,'맥도날드','0','울산광역시 남구 달동 1253-1번지','울산광역시','남구','울산광역시 남구 삼산로 230, (달동)','44718');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1640,'맘스터치','0','울산광역시 남구 달동 1366-6번지','울산광역시','남구','울산광역시 남구 삼산로253번길 7, (달동)','44707');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1641,'KFC','0','울산광역시 남구 달동 1367-3번지','울산광역시','남구','울산광역시 남구 삼산중로 71, (달동)','44707');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1642,'맥도날드','달동점','울산광역시 남구 달동 707-1번지','울산광역시','남구','울산광역시 남구 신정로 37, (달동)','44722');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1643,'맥도날드','울산SK점','울산광역시 남구 달동 819번지','울산광역시','남구','울산광역시 남구 중앙로 126, (달동)','44722');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1644,'맥도날드','옥현점','울산광역시 남구 무거동 487-1번지','울산광역시','남구','울산광역시 남구 옥현로58번길 4, (무거동)','44614');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1645,'롯데리아','울산대학점','울산광역시 남구 무거동 629-10번지','울산광역시','남구','울산광역시 남구 대학로84번길 7-1, (무거동)','44611');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1646,'버거킹','울산무거점','울산광역시 남구 무거동 859-6번지','울산광역시','남구','울산광역시 남구 대학로 157, (무거동)','44602');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1647,'롯데리아','롯데울산점','울산광역시 남구 삼산동 1480-1번지','울산광역시','남구','울산광역시 남구 삼산로 282, (삼산동)','44719');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1648,'롯데리아','울산터미널점','울산광역시 남구 삼산동 1481-1번지','울산광역시','남구','울산광역시 남구 화합로 133, (삼산동)','44720');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1649,'버거킹','삼산현대점','울산광역시 남구 삼산동 1521-1번지','울산광역시','남구','울산광역시 남구 삼산로 261, (삼산동)','44705');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1650,'맘스터치','0','울산광역시 남구 삼산동 1540-16번지','울산광역시','남구','울산광역시 남구 돋질로 305, (삼산동)','44698');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1651,'맥도날드','울산삼산점','울산광역시 남구 삼산동 1550-7번지','울산광역시','남구','울산광역시 남구 화합로 201, (삼산동)','44705');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1652,'롯데리아','0','울산광역시 남구 삼산동 1569-1번지','울산광역시','남구','울산광역시 남구 화합로 185, (삼산동)','44705');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1653,'맘스터치','에코아파트점','울산광역시 남구 선암동 156-8번지','울산광역시','남구','울산광역시 남구 산업로339번길 38-28, (선암동)','44771');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1654,'맘스터치','선암점','울산광역시 남구 선암동 665-3번지','울산광역시','남구','울산광역시 남구 두왕로190번길 55, (선암동)','44773');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1655,'맥도날드','울산옥동점','울산광역시 남구 신정동 1639-36번지','울산광역시','남구','울산광역시 남구 문수로423번길 2, (신정동)','44655');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1656,'맘스터치','0','울산광역시 남구 신정동 1902번지','울산광역시','남구','울산광역시 남구 봉월로67번길 3, (신정동)','44651');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1657,'롯데리아','홈플러스남구점','울산광역시 남구 야음동 789-91번지','울산광역시','남구','울산광역시 남구 수암로 148, (야음동)','44750');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1658,'파파이스','울산대공원점','울산광역시 남구 옥동 146-1번지','울산광역시','남구','울산광역시 남구 대공원로 94, (옥동)','44660');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1659,'롯데리아','울산옥동타워점','울산광역시 남구 옥동 589-2번지','울산광역시','남구','울산광역시 남구 문수로 339, (옥동)','44646');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1660,'맥도날드','동울산점','울산광역시 동구 서부동 113-49번지','울산광역시','동구','울산광역시 동구 방어진순환도로 909, (서부동)','44031');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1661,'맘스터치','서부점','울산광역시 동구 서부동 257-44번지','울산광역시','동구','울산광역시 동구 방어진순환도로 995-2, (서부동)','44025');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1662,'버거킹','울산동구오일뱅크점','울산광역시 동구 서부동 279-18번지','울산광역시','동구','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1663,'롯데리아','홈플러스울산동구점','울산광역시 동구 일산동 577-1번지','울산광역시','동구','울산광역시 동구 방어진순환도로 637, (일산동)','44068');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1664,'맥도날드','울산일산DT점','울산광역시 동구 일산동 951-5번지','울산광역시','동구','울산광역시 동구 방어진순환도로 634, (일산동)','44056');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1665,'롯데리아','전하점','울산광역시 동구 전하동 661-1번지','울산광역시','동구','울산광역시 동구 진성14길 77, (전하동)','44046');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1666,'맘스터치','대송점','울산광역시 동구 화정동 139-7번지','울산광역시','동구','울산광역시 동구 학문로 71, (화정동)','44063');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1667,'롯데리아','울산화정점','울산광역시 동구 화정동 844-14번지','울산광역시','동구','울산광역시 동구 대학길 65, (화정동)','44070');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1668,'맘스터치','명촌점','울산광역시 북구 명촌동 853-2번지','울산광역시','북구','울산광역시 북구 명촌11길 6-8, (명촌동)','44254');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1669,'롯데리아','정자해변점','울산광역시 북구 산하동 286-4번지','울산광역시','북구','울산광역시 북구 동해안로 1656, (산하동)','44264');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1670,'롯데리아','홈플러스울산북구점','울산광역시 북구 상안동 322-9번지','울산광역시','북구','울산광역시 북구 신답로 26, (상안동)','44209');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1671,'맘스터치','천곡점','울산광역시 북구 상안동 367-10번지','울산광역시','북구','울산광역시 북구 아진로 80, (상안동)','44208');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1672,'맥도날드','울산호계SK점','울산광역시 북구 신천동 426번지','울산광역시','북구','울산광역시 북구 산업로 1448-1, (신천동)','44221');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1673,'롯데리아','울산메가마트점','울산광역시 북구 진장동 705번지','울산광역시','북구','울산광역시 북구 진장17길 10, (진장동)','44250');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1674,'맥도날드','울산메가마켓점','울산광역시 북구 진장동 705번지','울산광역시','북구','울산광역시 북구 진장17길 10, (진장동)','44250');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1675,'롯데리아','호계점','울산광역시 북구 호계동 257-1번지','울산광역시','북구','울산광역시 북구 호계로 302, (호계동)','44227');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1676,'맘스터치','호계점','울산광역시 북구 호계동 260-12번지','울산광역시','북구','울산광역시 북구 동대중앙로 15, (호계동)','44227');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1677,'롯데리아','울산구영점','울산광역시 울주군 범서읍 구영리 850-1번지','울산광역시','울주군','울산광역시 울주군 범서읍 점촌3길 10-10','44924');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1678,'맘스터치','구영리점','울산광역시 울주군 범서읍 구영리 853-1번지','울산광역시','울주군','울산광역시 울주군 범서읍 점촌3길 8-2','44924');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1679,'맘스터치','굴화장검점','울산광역시 울주군 범서읍 굴화리 223-5번지','울산광역시','울주군','울산광역시 울주군 범서읍 장검길 75','44932');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1680,'맘스터치','굴화장검점','울산광역시 울주군 범서읍 굴화리 237번지','울산광역시','울주군','울산광역시 울주군 범서읍 장검1길 40','44932');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1681,'맥도날드','울산굴화DT점','울산광역시 울주군 범서읍 굴화리 28-8번지','울산광역시','울주군','울산광역시 울주군 범서읍 울밀로 2877','44934');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1682,'롯데리아','하나로마트점','울산광역시 울주군 범서읍 굴화리 295-1번지','울산광역시','울주군','울산광역시 울주군 범서읍 장검길 10','44933');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1683,'롯데리아','울산범서점','울산광역시 울주군 범서읍 천상리 324-1번지','울산광역시','울주군','울산광역시 울주군 범서읍 천상중앙길 87','44930');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1684,'맘스터치','천상점','울산광역시 울주군 범서읍 천상리 650-5번지','울산광역시','울주군','울산광역시 울주군 범서읍 천상중앙길 100-1','44928');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1685,'롯데리아','0','울산광역시 울주군 삼남면 신화리 88번지','울산광역시','울주군','울산광역시 울주군 삼남면 울산역로 177','44951');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1686,'맘스터치','덕신점','울산광역시 울주군 온산읍 덕신리 1356-13번지','울산광역시','울주군','울산광역시 울주군 온산읍 영남5길 5','45002');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1687,'롯데리아','울산온산점','울산광역시 울주군 온산읍 덕신리 270-7번지','울산광역시','울주군','울산광역시 울주군 온산읍 덕남로 5','45006');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1688,'맘스터치','남창점','울산광역시 울주군 온양읍 대안리 411-3번지','울산광역시','울주군','울산광역시 울주군 온양읍 연안8길 28','44979');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1689,'롯데리아','울산반구점','울산광역시 중구 남외동 1031-7번지','울산광역시','중구','울산광역시 중구 염포로 21, (남외동)','44516');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1690,'맥도날드','울산병영점','울산광역시 중구 남외동 441-2번지','울산광역시','중구','울산광역시 중구 번영로 576, (남외동)','44495');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1691,'맘스터치','다운점','울산광역시 중구 다운동 779-4번지','울산광역시','중구','울산광역시 중구 다운로 113, (다운동)','44409');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1692,'롯데리아','홈플러스울산중구','울산광역시 중구 복산동 100번지','울산광역시','중구','울산광역시 중구 번영로 475, (복산동)','44478');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1693,'롯데리아','0','울산광역시 중구 북정동 52번지','울산광역시','중구','울산광역시 중구 글든1길 27, (북정동)','44468');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1694,'롯데리아','울산성남점','울산광역시 중구 성남동 219-77번지','울산광역시','중구','울산광역시 중구 젊음의거리 49, (성남동)','44532');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1695,'맥도날드','성남점','울산광역시 중구 성남동 249-29번지','울산광역시','중구','울산광역시 중구 젊음의거리 72, (성남동)','44532');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1696,'맘스터치','성남점','울산광역시 중구 성남동 256-9번지','울산광역시','중구','울산광역시 중구 만남의거리 32, (성남동)','44532');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1697,'롯데리아','울산성안점','울산광역시 중구 성안동 385-10번지','울산광역시','중구','울산광역시 중구 성안로 191, (성안동)','44416');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1698,'롯데리아','울산성안점','울산광역시 중구 성안동 385-12번지','울산광역시','중구','울산광역시 중구 성안로 195, (성안동)','44416');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1699,'롯데리아','우정점','울산광역시 중구 우정동 725-16번지','울산광역시','중구','울산광역시 중구 유곡로 20, (우정동)','44465');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1700,'버거킹','0','울산광역시 중구 유곡동 480-8번지','울산광역시','중구','울산광역시 중구 북부순환도로 323, (유곡동)','44539');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1701,'맘스터치','유곡점','울산광역시 중구 유곡동 89-26번지','울산광역시','중구','울산광역시 중구 평동1길 42, (유곡동)','44466');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1702,'롯데리아','0','울산광역시 중구 학산동 47-10번지','울산광역시','중구','울산광역시 중구 구교로 35, (학산동)','44520');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1703,'롯데리아','0','인천광역시 강화군 강화읍 신문리 2-8번지','인천광역시','강화군','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1704,'버거킹','인천계양구청점','인천광역시 계양구 계산동 1063-12번지','인천광역시','계양구','인천광역시 계양구 장제로 804, (계산동)','21060');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1705,'맥도날드','0','인천광역시 계양구 계산동 1083-3번지','인천광역시','계양구','인천광역시 계양구 오조산로 39, (계산동)','21069');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1880,'롯데리아','여수여서점','전라남도 여수시 여서동 491-3번지','전라남도','여수시','전라남도 여수시 여서로 164-1, (여서동)','59721');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1881,'맥도날드','이마트여수점','전라남도 여수시 오림동 405-1번지','전라남도','여수시','전라남도 여수시 좌수영로 277, (오림동)','59714');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1882,'버거킹','여수점','전라남도 여수시 웅천동 1696-2번지','전라남도','여수시','전라남도 여수시 예울마루로 37-15, (웅천동)','59691');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1883,'맥도날드','여수학동DT점','전라남도 여수시 학동 82-3번지','전라남도','여수시','전라남도 여수시 망마로 9, (학동)','59676');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1884,'맘스터치','기찬랜드점','전라남도 영암군 영암읍 회문리 24-7번지','전라남도','영암군','전라남도 영암군 영암읍 기찬랜드로 41-7','58420');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1885,'맘스터치','완도점','전라남도 완도군 완도읍 가용리 1070-1번지','전라남도','완도군','전라남도 완도군 완도읍 개포로145번길 7-4','59115');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1886,'롯데리아','전남장성점','전라남도 장성군 장성읍 영천리 1022-5번지','전라남도','장성군','전라남도 장성군 장성읍 영천로 166','57219');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1887,'롯데리아','전남함평','전라남도 함평군 함평읍 내교리 179-10번지','전라남도','함평군','전라남도 함평군 함평읍 중앙길 21','57153');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1888,'맘스터치','해남점','전라남도 해남군 해남읍 구교리 93번지','전라남도','해남군','전라남도 해남군 해남읍 구교2길 26','59023');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1889,'맘스터치','고창읍점','전라북도 고창군 고창읍 읍내리 205-1번지','전라북도','고창군','전라북도 고창군 고창읍 중앙로 230','56432');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1890,'맥도날드','군산이마트점','전라북도 군산시 경암동 590-296번지','전라북도','군산시','전라북도 군산시 구암3.1로 137, (경암동)','54032');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1891,'롯데리아','수송점','전라북도 군산시 나운동 1536-12번지','전라북도','군산시','전라북도 군산시 서수송1길 2, (나운동)','54137');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1892,'맥도날드','군산나운DT점','전라북도 군산시 나운동 844-6번지','전라북도','군산시','전라북도 군산시 나운로 132, (나운동)','54142');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1893,'맘스터치','군산수송점','전라북도 군산시 수송동 827-16번지','전라북도','군산시','전라북도 군산시 수송6길 3, (수송동)','54088');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1894,'롯데리아','롯데마트군산점','전라북도 군산시 수송동 833번지','전라북도','군산시','전라북도 군산시 수송로 185, (수송동)','54091');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1895,'롯데리아','0','전라북도 군산시 중앙로1가 15-15번지','전라북도','군산시','전라북도 군산시 중앙로 160, (중앙로1가)','54026');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1896,'롯데리아','김제점','전라북도 김제시 요촌동 162-3번지','전라북도','김제시','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1897,'롯데리아','김제점','전라북도 김제시 요촌동 162-4번지','전라북도','김제시','전라북도 김제시 화동길 6, (요촌동)','54408');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1898,'맘스터치','김제점','전라북도 김제시 요촌동 182-11번지','전라북도','김제시','전라북도 김제시 화동길 17, (요촌동)','54408');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1899,'맘스터치','남원도통점','전라북도 남원시 도통동 111-13번지','전라북도','남원시','전라북도 남원시 용성로 215, (도통동)','55753');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1900,'롯데리아','남원도통점','전라북도 남원시 도통동 602-1번지','전라북도','남원시','전라북도 남원시 큰들2길 25, (도통동)','55758');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1901,'롯데리아','남원점','전라북도 남원시 쌍교동 236-1번지','전라북도','남원시','전라북도 남원시 정문길 13, (쌍교동)','55775');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1902,'롯데리아','0','전라북도 무주군 무주읍 읍내리 299번지','전라북도','무주군','전라북도 무주군 무주읍 단천로 99','55518');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1903,'파파이스','0','전라북도 무주군 설천면 심곡리 1287-2번지','전라북도','무주군','전라북도 무주군 설천면 만선로 185','55556');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1904,'맘스터치','부안점','전라북도 부안군 부안읍 봉덕리 790-6번지','전라북도','부안군','전라북도 부안군 부안읍 석정로 227','56315');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1905,'롯데리아','순창DT점','전라북도 순창군 순창읍 교성리 394-6번지','전라북도','순창군','전라북도 순창군 순창읍 순창로 164','56049');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1906,'롯데리아','완주봉동점','전라북도 완주군 봉동읍 둔산리 899-2번지','전라북도','완주군','전라북도 완주군 봉동읍 완주산단9로 15','55319');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1907,'롯데리아','완주삼례점','전라북도 완주군 삼례읍 삼례리 1405-31번지','전라북도','완주군','전라북도 완주군 삼례읍 삼례로 376','55340');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1908,'맘스터치','삼례우석대점','전라북도 완주군 삼례읍 후정리 18-1번지','전라북도','완주군','전라북도 완주군 삼례읍 삼례로 422','55339');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1909,'롯데리아','익산배산점','전라북도 익산시 모현동1가 871번지','전라북도','익산시','전라북도 익산시 선화로3길 10, (모현동1가)','54654');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1910,'롯데리아','익산부송점','전라북도 익산시 부송동 1039-11번지','전라북도','익산시','전라북도 익산시 부송로 66, (부송동)','54560');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1911,'맥도날드','원광대점','전라북도 익산시 신동 762-17번지','전라북도','익산시','전라북도 익산시 무왕로 888, (신동)','54645');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1912,'맥도날드','익산영등DT점','전라북도 익산시 영등동 747-8번지','전라북도','익산시','전라북도 익산시 무왕로 1046, (영등동)','54636');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1913,'롯데리아','0','전라북도 익산시 영등동 770-2번지','전라북도','익산시','전라북도 익산시 무왕로 1060, (영등동)','54637');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1914,'버거킹','익산영등점','전라북도 익산시 영등동 770-6번지','전라북도','익산시','전라북도 익산시 무왕로 1068, (영등동)','54637');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1915,'롯데리아','익산역점','전라북도 익산시 중앙동1가 16-4번지','전라북도','익산시','전라북도 익산시 익산대로 158-1, (중앙동1가)','54593');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1916,'롯데리아','전주터미널점','전라북도 전주시 덕진구 금암동 459-4번지','전라북도','전주시','전라북도 전주시 덕진구 가리내로 21, (금암동)','54934');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1917,'롯데리아','전주터미널점','전라북도 전주시 덕진구 금암동 459-6번지','전라북도','전주시','전라북도 전주시 덕진구 가리내로 21, (금암동)','54934');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1918,'롯데리아','0','전라북도 전주시 덕진구 금암동 767-2번지','전라북도','전주시','전라북도 전주시 덕진구 가리내로 70, (금암동)','54933');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1919,'맘스터치','0','전라북도 전주시 덕진구 덕진동1가 1263-10번지','전라북도','전주시','전라북도 전주시 덕진구 명륜3길 11, (덕진동1가)','54898');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1920,'롯데리아','전북대학점','전라북도 전주시 덕진구 덕진동1가 1263-3번지','전라북도','전주시','전라북도 전주시 덕진구 명륜4길 12, (덕진동1가)','54898');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1921,'맥도날드','전주덕진DT점','전라북도 전주시 덕진구 덕진동1가 1401-18번지','전라북도','전주시','전라북도 전주시 덕진구 기린대로 503, (덕진동1가)','54888');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1922,'롯데리아','하가점','전라북도 전주시 덕진구 덕진동2가 392-7번지','전라북도','전주시','전라북도 전주시 덕진구 가련산로 30, (덕진동2가)','54889');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1706,'롯데리아','계양점','인천광역시 계양구 계산동 1086-2번지','인천광역시','계양구','인천광역시 계양구 용종로 2, (계산동)','21071');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1707,'롯데리아','계산점','인천광역시 계양구 계산동 923-68번지','인천광역시','계양구','인천광역시 계양구 하느재로6번길 33, (계산동)','21040');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1708,'맘스터치','경인교대점','인천광역시 계양구 계산동 968-12번지','인천광역시','계양구','인천광역시 계양구 계양대로 166, (계산동)','21055');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1709,'롯데리아','인천동양점','인천광역시 계양구 동양동 640번지','인천광역시','계양구','인천광역시 계양구 동양로 111, (동양동)','21012');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1710,'맘스터치','동양점','인천광역시 계양구 동양동 641-1번지','인천광역시','계양구','인천광역시 계양구 당미1길 26, (동양동)','21012');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1711,'맘스터치','0','인천광역시 계양구 임학동 6-23번지','인천광역시','계양구','인천광역시 계양구 장제로 887, (임학동)','21034');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1712,'버거킹','인천작전점','인천광역시 계양구 작전동 442-1번지','인천광역시','계양구','인천광역시 계양구 계양대로 37, (작전동)','21111');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1713,'KFC','0','인천광역시 계양구 작전동 899-1번지','인천광역시','계양구','인천광역시 계양구 장제로 738, (작전동)','21079');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1714,'KFC','0','인천광역시 계양구 작전동 907-1번지','인천광역시','계양구','인천광역시 계양구 도두리로 10, (작전동)','21079');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1715,'버거킹','인천신세계점','인천광역시 남구 관교동 15번지','인천광역시','남구','인천광역시 남구 연남로 35, (관교동)','22242');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1716,'롯데리아','0','인천광역시 남구 도화동 534-8번지','인천광역시','남구','인천광역시 남구 경인로 258, (도화동)','22165');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1717,'맘스터치','제물포점','인천광역시 남구 도화동 649-13번지','인천광역시','남구','인천광역시 남구 경인로 131, (도화동)','22106');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1718,'맥도날드','문학DT점','인천광역시 남구 문학동 381-5번지','인천광역시','남구','인천광역시 남구 매소홀로 600, (문학동)','22235');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1719,'버거킹','문학야구장점','인천광역시 남구 문학동 482번지','인천광역시','남구','인천광역시 남구 매소홀로 618, (문학동)','22234');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1720,'파파이스','0','인천광역시 남구 문학동 482번지','인천광역시','남구','인천광역시 남구 매소홀로 618, (문학동)','22234');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1721,'롯데리아','인천숭의점','인천광역시 남구 숭의동 180-6번지','인천광역시','남구','인천광역시 남구 석정로 51, (숭의동)','22160');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1722,'롯데리아','제물포점','인천광역시 남구 숭의동 59-14번지','인천광역시','남구','인천광역시 남구 수봉로 1, (숭의동)','22164');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1723,'맘스터치','0','인천광역시 남구 용현동 182-6번지','인천광역시','남구','인천광역시 남구 경인남길30번길 53, (용현동)','22207');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1724,'롯데리아','0','인천광역시 남구 용현동 617-28번지','인천광역시','남구','인천광역시 남구 낙섬중로 42, (용현동)','22187');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1725,'롯데리아','신기점','인천광역시 남구 주안동 1464-22번지','인천광역시','남구','인천광역시 남구 인하로 287, (주안동)','22227');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1726,'롯데리아','주안점','인천광역시 남구 주안동 235번지','인천광역시','남구','인천광역시 남구 주안로 86, (주안동)','22136');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1727,'롯데리아','학산점','인천광역시 남구 학익동 259-11번지','인천광역시','남구','인천광역시 남구 한나루로 389, (학익동)','22202');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1728,'롯데리아','학익점','인천광역시 남구 학익동 661-1번지','인천광역시','남구','인천광역시 남구 매소홀로 466, (학익동)','22223');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1729,'롯데리아','인천올리브점','인천광역시 남동구 간석동 1-4번지','인천광역시','남동구','인천광역시 남동구 평온로 6, (간석동)','21514');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1730,'롯데리아','인천올리브점','인천광역시 남동구 간석동 205-1번지','인천광역시','남동구','인천광역시 남동구 남동대로 880, (간석동)','21545');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1731,'롯데리아','인천올리브점','인천광역시 남동구 간석동 209-1번지','인천광역시','남동구','인천광역시 남동구 남동대로 906, (간석동)','21545');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1732,'롯데리아','홈플러스간석점','인천광역시 남동구 간석동 616-3번지','인천광역시','남동구','인천광역시 남동구 경원대로 971, (간석동)','21500');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1733,'맥도날드','구월DT점','인천광역시 남동구 구월동 1120-16번지','인천광역시','남동구','인천광역시 남동구 인주대로 514, (구월동)','21566');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1734,'맥도날드','인천씨앤씨점','인천광역시 남동구 구월동 1130번지','인천광역시','남동구','인천광역시 남동구 예술로 198, (구월동)','21558');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1735,'맥도날드','인천구월아시아드점','인천광역시 남동구 구월동 1185번지','인천광역시','남동구','인천광역시 남동구 남동대로 724, (구월동)','21577');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1736,'맘스터치','인천길병원점','인천광역시 남동구 구월동 1199-2번지','인천광역시','남동구','인천광역시 남동구 구월남로 174, (구월동)','21565');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1737,'KFC','0','인천광역시 남동구 구월동 1199-9번지','인천광역시','남동구','인천광역시 남동구 남동대로 784, (구월동)','21565');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1738,'롯데리아','인천구월점','인천광역시 남동구 구월동 1255-3번지','인천광역시','남동구','인천광역시 남동구 구월로 284, (구월동)','21534');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1739,'KFC','0','인천광역시 남동구 구월동 1455번지','인천광역시','남동구','인천광역시 남동구 예술로 148, (구월동)','21573');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1740,'버거킹','인천구월점','인천광역시 남동구 구월동 1456번지','인천광역시','남동구','인천광역시 남동구 예술로 138, (구월동)','21573');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1741,'롯데리아','인천로데오','인천광역시 남동구 구월동 1463번지','인천광역시','남동구','인천광역시 남동구 성말로 10, (구월동)','21574');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1742,'맥도날드','구월킴스점','인천광역시 남동구 구월동 1465-1번지','인천광역시','남동구','인천광역시 남동구 인하로 485, (구월동)','21574');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1743,'롯데리아','인천아시아드점','인천광역시 남동구 구월동 1500-1번지','인천광역시','남동구','인천광역시 남동구 인하로 563, (구월동)','21581');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1744,'맘스터치','구월아시아드점','인천광역시 남동구 구월동 1517-1번지','인천광역시','남동구','인천광역시 남동구 인하로 627, (구월동)','21585');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1745,'버거킹','인천구월아시아드SK점','인천광역시 남동구 구월동 579-2번지','인천광역시','남동구','인천광역시 남동구 호구포로 725, (구월동)','21584');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1746,'롯데리아','인천논현점','인천광역시 남동구 논현동 579-12번지','인천광역시','남동구','인천광역시 남동구 은봉로165번길 82, (논현동)','21640');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1747,'롯데리아','소래포구역점','인천광역시 남동구 논현동 671-2번지','인천광역시','남동구','인천광역시 남동구 소래역로 50, (논현동)','21673');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1748,'KFC','인천논현점','인천광역시 남동구 논현동 746-6번지','인천광역시','남동구','인천광역시 남동구 논고개로 71, (논현동)','21679');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1749,'버거킹','인천논현점','인천광역시 남동구 논현동 747-1번지','인천광역시','남동구','인천광역시 남동구 논고개로 61, (논현동)','21679');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1750,'롯데리아','0','인천광역시 남동구 만수동 1040-2번지','인천광역시','남동구','인천광역시 남동구 장승남로 52, (만수동)','21596');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1751,'롯데리아','만수점','인천광역시 남동구 만수동 68-11번지','인천광역시','남동구','인천광역시 남동구 만수서로 87, (만수동)','21522');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1752,'맥도날드','만수DT점','인천광역시 남동구 만수동 904-4번지','인천광역시','남동구','인천광역시 남동구 백범로 229, (만수동)','21542');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1753,'롯데리아','인천서창점','인천광역시 남동구 서창동 663-1번지','인천광역시','남동구','인천광역시 남동구 서창남순환로 2, (서창동)','21610');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1754,'KFC','0','인천광역시 부평구 갈산동 171번지','인천광역시','부평구','인천광역시 부평구 주부토로 241, (갈산동)','21329');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1755,'맥도날드','부평이마트점','인천광역시 부평구 갈산동 171번지','인천광역시','부평구','인천광역시 부평구 주부토로 241, (갈산동)','21329');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1756,'롯데리아','인천갈산점','인천광역시 부평구 갈산동 172-7번지','인천광역시','부평구','인천광역시 부평구 평천로 314, (갈산동)','21329');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1757,'맥도날드','인천구산DT점','인천광역시 부평구 구산동 1-4번지','인천광역시','부평구','인천광역시 부평구 경인로 1191, (구산동)','21416');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1758,'롯데리아','인천부개역점','인천광역시 부평구 부개동 302-11번지','인천광역시','부평구','인천광역시 부평구 경인로 1081, (부개동)','21416');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1759,'롯데리아','인천부개역점','인천광역시 부평구 부개동 321번지','인천광역시','부평구','인천광역시 부평구 경인로 1080, (부개동)','21420');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1760,'맘스터치','부개일신점','인천광역시 부평구 부개동 364-6번지','인천광역시','부평구','인천광역시 부평구 동수로 180-1, (부개동)','21420');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1761,'롯데리아','부평중앙점','인천광역시 부평구 부평동 153-42번지','인천광역시','부평구','인천광역시 부평구 시장로 18-1, (부평동)','21395');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1762,'맥도날드','부평중앙역점','인천광역시 부평구 부평동 212-65번지','인천광역시','부평구','인천광역시 부평구 부평문화로 65, (부평동)','21393');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1763,'맥도날드','부평SK점','인천광역시 부평구 부평동 440-2번지','인천광역시','부평구','인천광역시 부평구 부평대로 96, (부평동)','21359');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1764,'롯데리아','부평역점','인천광역시 부평구 부평동 738-21번지','인천광역시','부평구','인천광역시 부평구 광장로 16, (부평동)','21404');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1765,'맥도날드','부평역사점','인천광역시 부평구 부평동 738-21번지','인천광역시','부평구','인천광역시 부평구 광장로 16, (부평동)','21404');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1766,'롯데리아','산곡점','인천광역시 부평구 산곡동 182번지','인천광역시','부평구','인천광역시 부평구 마장로 287, (산곡동)','21370');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1767,'맥도날드','삼산DT점','인천광역시 부평구 삼산동 226-7번지','인천광역시','부평구','인천광역시 부평구 장제로 380, (삼산동)','21318');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1768,'버거킹','삼산SK점','인천광역시 부평구 삼산동 270-4번지','인천광역시','부평구','인천광역시 부평구 장제로 347, (삼산동)','21330');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1769,'롯데리아','인천삼산점','인천광역시 부평구 삼산동 388-11번지','인천광역시','부평구','인천광역시 부평구 부평북로 442, (삼산동)','21319');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1770,'롯데리아','청천점','인천광역시 부평구 청천동 179-15번지','인천광역시','부평구','인천광역시 부평구 마장로 396, (청천동)','21312');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1771,'롯데리아','인천서구점','인천광역시 서구 가정동 505-5번지','인천광역시','서구','인천광역시 서구 가정로 370, (가정동)','22777');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1772,'롯데리아','홈플러스가좌점','인천광역시 서구 가좌동 118번지','인천광역시','서구','인천광역시 서구 가정로151번길 11, (가좌동)','22832');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1773,'롯데리아','홈플러스인천청라점','인천광역시 서구 경서동 956-20번지','인천광역시','서구','인천광역시 서구 중봉대로 587, (경서동)','22762');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1774,'롯데리아','청라경서점','인천광역시 서구 경서동 976-52번지','인천광역시','서구','인천광역시 서구 솔빛로 88, (경서동)','22765');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1775,'파파이스','인천완정역점','인천광역시 서구 당하동 1077-11번지','인천광역시','서구','인천광역시 서구 청마로19번길 21, (당하동)','22675');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1776,'맘스터치','당하점','인천광역시 서구 당하동 1097-8번지','인천광역시','서구','인천광역시 서구 청마로167번길 7, (당하동)','22677');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1777,'롯데리아','인천당하점','인천광역시 서구 마전동 1002-11번지','인천광역시','서구','인천광역시 서구 완정로 18, (마전동)','22642');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1778,'롯데리아','검단점','인천광역시 서구 마전동 1031-1번지','인천광역시','서구','인천광역시 서구 원당대로 581, (마전동)','22637');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1779,'롯데리아','0','인천광역시 서구 백석동 58번지','인천광역시','서구','인천광역시 서구 거월로 160, (백석동)','22688');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1780,'롯데리아','인천불로점','인천광역시 서구 불로동 797-1번지','인천광역시','서구','인천광역시 서구 검단로744번1길 30, (불로동)','22631');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1781,'맘스터치','신현점','인천광역시 서구 신현동 283-2번지','인천광역시','서구','인천광역시 서구 가정로 359, (신현동)','22782');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1782,'맘스터치','인천서구청점','인천광역시 서구 심곡동 247-11번지','인천광역시','서구','인천광역시 서구 탁옥로51번길 2, (심곡동)','22726');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1783,'롯데리아','인천연희D/T점','인천광역시 서구 심곡동 248-1번지','인천광역시','서구','인천광역시 서구 서곶로 289, (심곡동)','22727');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1784,'맥도날드','연희DT점','인천광역시 서구 심곡동 255-2번지','인천광역시','서구','인천광역시 서구 서곶로 265, (심곡동)','22730');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1785,'버거킹','인천청라점','인천광역시 서구 연희동 799-2번지','인천광역시','서구','인천광역시 서구 중봉대로 610, (연희동)','22736');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1786,'KFC','0','인천광역시 서구 연희동 800-3번지','인천광역시','서구','인천광역시 서구 중봉대로586번길 19, (연희동)','22736');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1787,'롯데리아','청라10호점','인천광역시 서구 연희동 800-3번지','인천광역시','서구','인천광역시 서구 중봉대로586번길 19, (연희동)','22736');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1788,'롯데리아','검단점','인천광역시 서구 왕길동 639-4번지','인천광역시','서구','인천광역시 서구 검단로 469, (왕길동)','22616');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1789,'롯데리아','모다아울렛점','인천광역시 서구 원창동 381-69번지','인천광역시','서구','인천광역시 서구 북항로32번안길 50, (원창동)','22769');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1790,'맥도날드','연수홈플러스점','인천광역시 연수구 동춘동 926번지','인천광역시','연수구','인천광역시 연수구 청능대로 210, (동춘동)','21975');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1791,'롯데리아','0','인천광역시 연수구 동춘동 932번지','인천광역시','연수구','인천광역시 연수구 앵고개로 266, (동춘동)','21973');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1792,'파파이스','인천대점','인천광역시 연수구 송도동 12-1번지','인천광역시','연수구','인천광역시 연수구 아카데미로 119, (송도동)','22012');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1793,'버거킹','인천송도SK점','인천광역시 연수구 송도동 158-4번지','인천광역시','연수구','인천광역시 연수구 송도과학로 13, (송도동)','21982');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1794,'롯데리아','홈플러스송도점','인천광역시 연수구 송도동 168-3번지','인천광역시','연수구','인천광역시 연수구 송도국제대로 165, (송도동)','21984');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1795,'맘스터치','트리플스트리트점','인천광역시 연수구 송도동 176-5번지','인천광역시','연수구','인천광역시 연수구 송도과학로16번길 33-4, (송도동)','21984');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1796,'롯데리아','0','인천광역시 연수구 송도동 26-1번지','인천광역시','연수구','인천광역시 연수구 센트럴로 350, (송도동)','22005');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1797,'롯데리아','인천송도점','인천광역시 연수구 송도동 2-6번지','인천광역시','연수구','인천광역시 연수구 신송로 122, (송도동)','21994');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1798,'롯데리아','LM송도점','인천광역시 연수구 송도동 6-11번지','인천광역시','연수구','인천광역시 연수구 컨벤시아대로 177, (송도동)','21998');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1799,'맥도날드','송도지점','인천광역시 연수구 송도동 8-18번지','인천광역시','연수구','인천광역시 연수구 하모니로 128, (송도동)','21998');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1800,'버거킹','인천연수점','인천광역시 연수구 연수동 596-6번지','인천광역시','연수구','인천광역시 연수구 용담로 111, (연수동)','21927');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1801,'맥도날드','GS연수점','인천광역시 연수구 연수동 597번지','인천광역시','연수구','인천광역시 연수구 먼우금로 200, (연수동)','21927');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1802,'맘스터치','연수점','인천광역시 연수구 연수동 600-6번지','인천광역시','연수구','인천광역시 연수구 샘말로7번길 3, (연수동)','21929');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1803,'롯데리아','대동월드점','인천광역시 연수구 연수동 607-7번지','인천광역시','연수구','인천광역시 연수구 샘말로 55, (연수동)','21929');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1804,'롯데리아','엔젤리너스인천연수점','인천광역시 연수구 연수동 625-2번지','인천광역시','연수구','인천광역시 연수구 용담로 142, (연수동)','21929');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1805,'롯데리아','인천대동월드점','인천광역시 연수구 연수동 633번지','인천광역시','연수구','인천광역시 연수구 벚꽃로 162, (연수동)','21930');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1806,'맘스터치','옥련점','인천광역시 연수구 옥련동 195-2번지','인천광역시','연수구','인천광역시 연수구 독배로 53, (옥련동)','21957');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1807,'맥도날드','옥련DT점','인천광역시 연수구 옥련동 265-29번지','인천광역시','연수구','인천광역시 연수구 비류대로 176, (옥련동)','21954');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1808,'롯데리아','인천옥련점','인천광역시 연수구 옥련동 399-1번지','인천광역시','연수구','인천광역시 연수구 청량로185번길 5, (옥련동)','21952');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1809,'롯데리아','롯데마트연수점','인천광역시 연수구 청학동 467번지','인천광역시','연수구','인천광역시 연수구 용담로 61, (청학동)','21917');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1810,'파파이스','0','인천광역시 연수구 청학동 496-4번지','인천광역시','연수구','인천광역시 연수구 벚꽃로 106, (청학동)','21926');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1811,'KFC','0','인천광역시 연수구 청학동 502-4번지','인천광역시','연수구','인천광역시 연수구 청능대로 87, (청학동)','21926');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1812,'롯데리아','롯데마트연수점','인천광역시 연수구 청학동 502-4번지','인천광역시','연수구','인천광역시 연수구 청능대로 87, (청학동)','21926');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1813,'롯데리아','0','인천광역시 옹진군 백령면 진촌리 658-2번지','인천광역시','옹진군','인천광역시 옹진군 백령면 백령로 240','23101');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1814,'파파이스','인하대병원점','인천광역시 중구 신흥동3가 7-206번지','인천광역시','중구','인천광역시 중구 인항로 27, (신흥동3가)','22332');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1815,'버거킹','인천공항점','인천광역시 중구 운서동 2165-7번지','인천광역시','중구','인천광역시 중구 공항동로295번길 124, (운서동)','22380');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1816,'KFC','인천공항스카이','인천광역시 중구 운서동 2172-1번지','인천광역시','중구','인천광역시 중구 공항동로295번길 124, (운서동)','22380');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1817,'롯데리아','공항신도시점','인천광역시 중구 운서동 2805-3번지','인천광역시','중구','인천광역시 중구 흰바위로59번길 31, (운서동)','22371');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1818,'버거킹','인천공항교통센터점','인천광역시 중구 운서동 2840번지','인천광역시','중구','인천광역시 중구 공항로 272, (운서동)','22382');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1819,'버거킹','0','인천광역시 중구 운서동 2850번지','인천광역시','중구','인천광역시 중구 공항로424번길 47, (운서동)','22382');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1820,'KFC','0','인천광역시 중구 운서동 2851번지','인천광역시','중구','인천광역시 중구 공항로 271, (운서동)','22382');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1821,'롯데리아','인천공항탑승동점','인천광역시 중구 운서동 2851번지','인천광역시','중구','인천광역시 중구 공항로 271, (운서동)','22382');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1822,'버거킹','인천공항1점','인천광역시 중구 운서동 2851번지','인천광역시','중구','인천광역시 중구 공항로 271, (운서동)','22382');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1823,'롯데리아','동인천역점','인천광역시 중구 인현동 10-1번지','인천광역시','중구','인천광역시 중구 참외전로 122, (인현동)','22316');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1824,'맥도날드','동인천점','인천광역시 중구 인현동 27-3번지','인천광역시','중구','인천광역시 중구 우현로 85-1, (인현동)','22316');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1825,'버거킹','영종하늘도시SK점','인천광역시 중구 중산동 1878-4번지','인천광역시','중구','인천광역시 중구 자연대로 55, (중산동)','22401');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1826,'롯데리아','인천영종하늘도시점','인천광역시 중구 중산동 1882-10번지','인천광역시','중구','인천광역시 중구 하늘별빛로 75, (중산동)','22377');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1827,'맘스터치','0','전라남도 고흥군 고흥읍 남계리 683-12번지','전라남도','고흥군','전라남도 고흥군 고흥읍 고흥로 1796','59537');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1828,'맘스터치','0','전라남도 고흥군 고흥읍 남계리 683-1번지','전라남도','고흥군','전라남도 고흥군 고흥읍 고흥로 1798','59537');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1829,'롯데리아','고흥점','전라남도 고흥군 고흥읍 서문리 219-7번지','전라남도','고흥군','전라남도 고흥군 고흥읍 서문여산길 54-4','59540');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1830,'롯데리아','광양읍점','전라남도 광양시 광양읍 읍내리 160번지','전라남도','광양시','전라남도 광양시 광양읍 매천로 835','57743');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1831,'롯데리아','마동점','전라남도 광양시 마동 1023-1번지','전라남도','광양시','전라남도 광양시 사동로 179, (마동)','57773');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1832,'버거킹','광양중동점','전라남도 광양시 중동 1638-4번지','전라남도','광양시','전라남도 광양시 중마중앙로 65, (중동)','57788');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1833,'롯데리아','중동점','전라남도 광양시 중동 1676-4번지','전라남도','광양시','전라남도 광양시 공영로 62, (중동)','57795');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1834,'롯데리아','전남구례점','전라남도 구례군 구례읍 봉남리 222-6번지','전라남도','구례군','전라남도 구례군 구례읍 봉성로 70','57642');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1835,'맘스터치','나주터미널점','전라남도 나주시 중앙동 6-1번지','전라남도','나주시','전라남도 나주시 나주로 185, (중앙동)','58255');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1836,'롯데리아','담양점','전라남도 담양군 담양읍 백동리 277-15번지','전라남도','담양군','전라남도 담양군 담양읍 죽향대로 1187','57348');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1837,'롯데리아','담양DT점','전라남도 담양군 담양읍 백동리 277-31번지','전라남도','담양군','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1838,'롯데리아','담양메타점','전라남도 담양군 담양읍 학동리 586-1번지','전라남도','담양군','전라남도 담양군 담양읍 메타프로방스1길 17','57351');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1839,'롯데리아','0','전라남도 담양군 담양읍 학동리 670번지','전라남도','담양군','전라남도 담양군 담양읍 메타프로방스2길 10','57351');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1840,'버거킹','하당점','전라남도 목포시 상동 1000-6번지','전라남도','목포시','전라남도 목포시 비파로 50, (상동)','58689');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1841,'맘스터치','장미공원점','전라남도 목포시 상동 1004-1번지','전라남도','목포시','전라남도 목포시 비파로 35-1, (상동)','58693');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1842,'버거킹','전남도청점','전라남도 목포시 상동 1137-21번지','전라남도','목포시','전라남도 목포시 원형서로 46-1, (상동)','58748');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1843,'롯데리아','목포상동점','전라남도 목포시 상동 848-3번지','전라남도','목포시','전라남도 목포시 백년대로 339, (상동)','58664');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1844,'맥도날드','석현DT점','전라남도 목포시 석현동 816-85번지','전라남도','목포시','전라남도 목포시 영산로 577, (석현동)','58616');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1845,'롯데리아','0','전라남도 목포시 옥암동 1103번지','전라남도','목포시','전라남도 목포시 미항로 206, (옥암동)','58746');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1846,'맥도날드','이마트목포점','전라남도 목포시 옥암동 915-25번지','전라남도','목포시','전라남도 목포시 옥암로 150, (옥암동)','58657');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1847,'맥도날드','목포이마트점','전라남도 목포시 옥암동 915-26번지','전라남도','목포시','전라남도 목포시 옥암로 152, (옥암동)','58657');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1848,'롯데리아','목포점','전라남도 목포시 용당동 1087-1번지','전라남도','목포시','전라남도 목포시 영산로 313, (용당동)','58651');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1849,'맘스터치','목포MBC점','전라남도 목포시 용당동 1095-28번지','전라남도','목포시','전라남도 목포시 영산로 333-1, (용당동)','58651');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1850,'파파이스','남악점','전라남도 목포시 용당동 1110-1번지','전라남도','목포시','전라남도 목포시 영산로 288, (용당동)','58706');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1851,'맘스터치','포미점','전라남도 목포시 용해동 978-3번지','전라남도','목포시','전라남도 목포시 용해지구로 2, (용해동)','58610');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1852,'롯데리아','목포용해점','전라남도 목포시 용해동 980-4번지','전라남도','목포시','전라남도 목포시 용당로 337, (용해동)','58613');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1853,'버거킹','전남도청점','전라남도 무안군 삼향읍 남악리 2104번지','전라남도','무안군','전라남도 무안군 삼향읍 남악3로 71','58566');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1854,'롯데리아','목포대학점','전라남도 무안군 청계면 도림리 474-4번지','전라남도','무안군','전라남도 무안군 청계면 승달산길 17','58553');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1855,'롯데리아','벌교점','전라남도 보성군 벌교읍 벌교리 737-8번지','전라남도','보성군','전라남도 보성군 벌교읍 채동선로 223','59425');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1856,'맘스터치','전남보성읍점','전라남도 보성군 보성읍 보성리 94-30번지','전라남도','보성군','전라남도 보성군 보성읍 중앙로 57','59458');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1857,'롯데리아','순천만점','전라남도 순천시 대대동 440-1번지','전라남도','순천시','전라남도 순천시 순천만길 524, (대대동)','58027');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1858,'맥도날드','순천덕암DT점','전라남도 순천시 덕암동 146-27번지','전라남도','순천시','전라남도 순천시 팔마로 199, (덕암동)','57964');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1859,'맥도날드','순천덕암DT점','전라남도 순천시 덕암동 146-32번지','전라남도','순천시','전라남도 순천시 구암원길 1, (덕암동)','57964');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1860,'롯데리아','0','전라남도 순천시 동외동 75-37번지','전라남도','순천시','전라남도 순천시 중앙시장길 60, (동외동)','57942');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1861,'맥도날드','치킨순천점','전라남도 순천시 연향동 1435-1번지','전라남도','순천시','전라남도 순천시 구암1길 11-2, (연향동)','57991');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1862,'롯데리아','오천점','전라남도 순천시 오천동 967-6번지','전라남도','순천시','전라남도 순천시 오천6길 19, (오천동)','57999');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1863,'롯데리아','금당점','전라남도 순천시 조례동 1616-15번지','전라남도','순천시','전라남도 순천시 조례못등길 25, (조례동)','57974');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1864,'맥도날드','순천조례DT점','전라남도 순천시 조례동 382-1번지','전라남도','순천시','전라남도 순천시 순광로 75, (조례동)','57948');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1865,'롯데리아','킴스순천점','전라남도 순천시 조례동 758번지','전라남도','순천시','전라남도 순천시 비봉2길 4-12, (조례동)','57929');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1866,'롯데리아','순천점','전라남도 순천시 중앙동 23번지','전라남도','순천시','전라남도 순천시 중앙6길 14, (중앙동)','57942');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1867,'맥도날드','순천중앙점','전라남도 순천시 중앙동 40번지','전라남도','순천시','전라남도 순천시 중앙6길 18, (중앙동)','57942');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1868,'맘스터치','모다아울렛점','전라남도 순천시 해룡면 남가리 99번지','전라남도','순천시','전라남도 순천시 해룡면 상성길 70','58005');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1869,'롯데리아','신대점','전라남도 순천시 해룡면 신대리 1985-4번지','전라남도','순천시','전라남도 순천시 해룡면 신대로 116','58011');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1870,'롯데리아','여수중앙점','전라남도 여수시 교동 304-3번지','전라남도','여수시','전라남도 여수시 통제영3길 12-1, (교동)','59736');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1871,'롯데리아','0','전라남도 여수시 교동 400-1번지','전라남도','여수시','전라남도 여수시 중앙로 43, (교동)','59732');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1872,'맘스터치','여수중앙점','전라남도 여수시 교동 506-1번지','전라남도','여수시','전라남도 여수시 중앙로 48, (교동)','59735');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1873,'파파이스','여수교동점','전라남도 여수시 교동 82번지','전라남도','여수시','전라남도 여수시 진남상가길 40, (교동)','59732');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1874,'롯데리아','롯데마트여수점','전라남도 여수시 국동 37-16번지','전라남도','여수시','전라남도 여수시 국포1로 36, (국동)','59761');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1875,'롯데리아','여수돌산공원점','전라남도 여수시 돌산읍 우두리 794-89번지','전라남도','여수시','전라남도 여수시 돌산읍 돌산로 3600-1','59767');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1876,'맘스터치','여수전남대점','전라남도 여수시 미평동 756-8번지','전라남도','여수시','전라남도 여수시 대학로 31, (미평동)','59628');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1877,'롯데리아','롯데마트점','전라남도 여수시 선원동 1268-3번지','전라남도','여수시','전라남도 여수시 무선로 187, (선원동)','59640');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1878,'롯데리아','0','전라남도 여수시 소호동 923번지','전라남도','여수시','전라남도 여수시 소호로 295, (소호동)','59670');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1879,'롯데리아','여수신기점','전라남도 여수시 신기동 109-11번지','전라남도','여수시','전라남도 여수시 선소로 84, (신기동)','59687');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1923,'맘스터치','전주동산점','전라북도 전주시 덕진구 동산동 704-6번지','전라북도','전주시','전라북도 전주시 덕진구 쪽구름로 58, (동산동)','54848');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1924,'롯데리아','롯데마트송천점','전라북도 전주시 덕진구 송천동1가 281-1번지','전라북도','전주시','전라북도 전주시 덕진구 송천중앙로 82, (송천동1가)','54837');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1925,'맥도날드','전주송천점','전라북도 전주시 덕진구 송천동2가 527번지','전라북도','전주시','전라북도 전주시 덕진구 송천중앙로 200, (송천동2가)','54829');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1926,'롯데리아','전주메가월드점','전라북도 전주시 덕진구 송천동2가 661-15번지','전라북도','전주시','전라북도 전주시 덕진구 동부대로 1215, (송천동2가)','54826');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1927,'맘스터치','인후점','전라북도 전주시 덕진구 인후동1가 846-1번지','전라북도','전주시','전라북도 전주시 덕진구 건산로 246, (인후동1가)','55018');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1928,'롯데리아','아중점','전라북도 전주시 덕진구 인후동1가 855-7번지','전라북도','전주시','전라북도 전주시 덕진구 무삼지로 68, (인후동1가)','55018');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1929,'맥도날드','인후점','전라북도 전주시 덕진구 인후동2가 1529-4번지','전라북도','전주시','전라북도 전주시 덕진구 백제대로 692, (인후동2가)','54917');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1930,'롯데리아','조촌DT점','전라북도 전주시 덕진구 장동 1052-2번지','전라북도','전주시','전라북도 전주시 덕진구 정암길 19, (장동)','54810');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1931,'맘스터치','호성점','전라북도 전주시 덕진구 호성동1가 587-39번지','전라북도','전주시','전라북도 전주시 덕진구 호성3길 12, (호성동1가)','54903');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1932,'맘스터치','객사점','전라북도 전주시 완산구 경원동1가 56-1번지','전라북도','전주시','전라북도 전주시 완산구 팔달로 187-1, (경원동1가)','54999');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1933,'버거킹','전주중앙점','전라북도 전주시 완산구 고사동 2-6번지','전라북도','전주시','전라북도 전주시 완산구 팔달로 225, (고사동)','54999');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1934,'롯데리아','전주고사점','전라북도 전주시 완산구 고사동 63번지','전라북도','전주시','전라북도 전주시 완산구 전주객사5길 22-3, (고사동)','54999');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1935,'버거킹','0','전라북도 전주시 완산구 서신동 805번지','전라북도','전주시','전라북도 전주시 완산구 서신로 62, (서신동)','54950');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1936,'버거킹','서신대광SK점','전라북도 전주시 완산구 서신동 813번지','전라북도','전주시','전라북도 전주시 완산구 서신로 56, (서신동)','54950');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1937,'롯데리아','0','전라북도 전주시 완산구 서신동 970-5번지','전라북도','전주시','전라북도 전주시 완산구 온고을로 18, (서신동)','54946');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1938,'롯데리아','0','전라북도 전주시 완산구 중동 774-5번지','전라북도','전주시','전라북도 전주시 완산구 안전로 154, (중동)','54871');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1939,'KFC','전주중앙점','전라북도 전주시 완산구 중앙동3가 8-1번지','전라북도','전주시','전라북도 전주시 완산구 충경로 49-8, (중앙동3가)','54999');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1940,'맥도날드','전주중화산점','전라북도 전주시 완산구 중화산동2가 648-11번지','전라북도','전주시','전라북도 전주시 완산구 백제대로 238, (중화산동2가)','54985');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1941,'맥도날드','전주평화DT점','전라북도 전주시 완산구 평화동1가 732-1번지','전라북도','전주시','전라북도 전주시 완산구 모악로 4758, (평화동1가)','55122');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1942,'롯데리아','평화점','전라북도 전주시 완산구 평화동1가 732-3번지','전라북도','전주시','전라북도 전주시 완산구 모악로 4754, (평화동1가)','55122');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1943,'맘스터치','전주서부시장점','전라북도 전주시 완산구 효자동1가 202-2번지','전라북도','전주시','전라북도 전주시 완산구 효동2길 9, (효자동1가)','55094');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1944,'롯데리아','전주효자씨지브이점','전라북도 전주시 완산구 효자동1가 434번지','전라북도','전주시','전라북도 전주시 완산구 용머리로 45, (효자동1가)','55056');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1945,'롯데리아','전주도청점','전라북도 전주시 완산구 효자동2가 1239-4번지','전라북도','전주시','전라북도 전주시 완산구 홍산로 253, (효자동2가)','54966');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1946,'롯데리아','전주효자서부점','전라북도 전주시 완산구 효자동2가 1317-4번지','전라북도','전주시','전라북도 전주시 완산구 호암로 65, (효자동2가)','55062');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1947,'버거킹','전북도청점','전라북도 전주시 완산구 효자동3가 1525-1번지','전라북도','전주시','전라북도 전주시 완산구 효자로 194, (효자동3가)','54969');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1948,'롯데리아','내장산케이블카특설점','전라북도 정읍시 내장동 231번지','전라북도','정읍시','전라북도 정읍시 회룡길 28, (내장동)','56199');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1949,'롯데리아','롯데마트정읍점','전라북도 정읍시 농소동 446-1번지','전라북도','정읍시','전라북도 정읍시 벚꽃로 85, (농소동)','56156');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1950,'맥도날드','전북정읍DT점','전라북도 정읍시 수성동 524-17번지','전라북도','정읍시','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1951,'롯데리아','정읍점','전라북도 정읍시 수성동 558-4번지','전라북도','정읍시','전라북도 정읍시 조곡천1길 55, (수성동)','56162');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1952,'버거킹','정읍중앙점','전라북도 정읍시 연지동 55-3번지','전라북도','정읍시','전라북도 정읍시 남북로 28, (연지동)','56162');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1953,'맘스터치','신서귀포점','제주특별자치도 서귀포시 강정동 208-7번지','제주특별자치도','서귀포시','제주특별자치도 서귀포시 대청로 39, (강정동)','63559');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1954,'맥도날드','제주월드컵스타디움DT점','제주특별자치도 서귀포시 강정동 231-1번지','제주특별자치도','서귀포시','제주특별자치도 서귀포시 일주서로 7, (강정동)','63560');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1955,'맘스터치','대정점','제주특별자치도 서귀포시 대정읍 상모리 3967-6번지','제주특별자치도','서귀포시','제주특별자치도 서귀포시 대정읍 상모로 302','63510');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1956,'파파이스','제주모슬포점','제주특별자치도 서귀포시 대정읍 하모리 1293번지','제주특별자치도','서귀포시','제주특별자치도 서귀포시 대정읍 일주서로 2641','63506');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1957,'맘스터치','동홍점','제주특별자치도 서귀포시 동홍동 117-1번지','제주특별자치도','서귀포시','제주특별자치도 서귀포시 동홍중앙로 51, (동홍동)','63588');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1958,'맥도날드','서귀포DT점','제주특별자치도 서귀포시 서귀동 284-29번지','제주특별자치도','서귀포시','제주특별자치도 서귀포시 일주동로 8665, (서귀동)','63590');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1959,'롯데리아','서귀포점','제주특별자치도 서귀포시 서귀동 292-15번지','제주특별자치도','서귀포시','제주특별자치도 서귀포시 중정로61번길 9, (서귀동)','63591');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1960,'맥도날드','제주성산점','제주특별자치도 서귀포시 성산읍 성산리 109-4번지','제주특별자치도','서귀포시','제주특별자치도 서귀포시 성산읍 일출로 284-1','63643');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2124,'버거킹','청주터미널점','충청북도 청주시 흥덕구 가경동 1416-2번지','충청북도','청주시','충청북도 청주시 흥덕구 풍산로 15, (가경동)','28396');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2125,'롯데리아','0','충청북도 청주시 흥덕구 가경동 1416-3번지','충청북도','청주시','충청북도 청주시 흥덕구 2순환로 1233, (가경동)','28396');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2126,'롯데리아','청주터미널점','충청북도 청주시 흥덕구 가경동 1449번지','충청북도','청주시','충청북도 청주시 흥덕구 2순환로 1251, (가경동)','28397');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2127,'KFC','0','충청북도 청주시 흥덕구 가경동 1696번지','충청북도','청주시','충청북도 청주시 흥덕구 서부로 1291, (가경동)','28413');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2128,'롯데리아','청주강내점','충청북도 청주시 흥덕구 강내면 탑연리 277-1번지','충청북도','청주시','충청북도 청주시 흥덕구 강내면 태성탑연로 455','28172');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2129,'롯데리아','청주복대점','충청북도 청주시 흥덕구 복대동 288-115번지','충청북도','청주시','충청북도 청주시 흥덕구 대농로 50, (복대동)','28427');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2130,'롯데리아','청주복대점','충청북도 청주시 흥덕구 복대동 288-116번지','충청북도','청주시','충청북도 청주시 흥덕구 대농로 52, (복대동)','28427');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2131,'버거킹','복대점','충청북도 청주시 흥덕구 복대동 288-15번지','충청북도','청주시','충청북도 청주시 흥덕구 대농로 47, (복대동)','28425');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2132,'롯데리아','하복대점','충청북도 청주시 흥덕구 복대동 2927번지','충청북도','청주시','충청북도 청주시 흥덕구 진재로 56, (복대동)','28420');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2133,'맥도날드','청주봉명점','충청북도 청주시 흥덕구 봉명동 1405번지','충청북도','청주시','충청북도 청주시 흥덕구 1순환로 518, (봉명동)','28451');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2134,'맥도날드','청주비하점','충청북도 청주시 흥덕구 비하동 671-12번지','충청북도','청주시','충청북도 청주시 흥덕구 2순환로 1076, (비하동)','28362');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2135,'롯데리아','롯데마트서청주점','충청북도 청주시 흥덕구 비하동 811번지','충청북도','청주시','충청북도 청주시 흥덕구 2순환로 1004, (비하동)','28360');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2136,'롯데리아','충북오송점','충청북도 청주시 흥덕구 오송읍 만수리 519번지','충청북도','청주시','충청북도 청주시 흥덕구 오송읍 오송생명로 194','28166');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2137,'버거킹','청주오송점','충청북도 청주시 흥덕구 오송읍 연제리 713번지','충청북도','청주시','충청북도 청주시 흥덕구 오송읍 오송생명로 178','28165');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2138,'맥도날드','충주교현DT점','충청북도 충주시 교현동 624-1번지','충청북도','충주시','충청북도 충주시 국원대로 87, (교현동)','27365');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2139,'맘스터치','충주성서점','충청북도 충주시 성서동 319번지','충청북도','충주시','충청북도 충주시 예성로 158, (성서동)','27388');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2140,'맘스터치','성서점','충청북도 충주시 성서동 320번지','충청북도','충주시','충청북도 충주시 예성로 156-1, (성서동)','27388');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2141,'롯데리아','수안보리조트점','충청북도 충주시 수안보면 온천리 645번지','충청북도','충주시','충청북도 충주시 수안보면 주정산로 183','27497');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2142,'버거킹','연수점','충청북도 충주시 연수동 1354번지','충청북도','충주시','충청북도 충주시 연수동산로 47, (연수동)','27352');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2143,'맘스터치','충주연수점','충청북도 충주시 연수동 1475번지','충청북도','충주시','충청북도 충주시 갱고개로 143, (연수동)','27351');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2144,'롯데리아','충주용산점','충청북도 충주시 용산동 1632번지','충청북도','충주시','충청북도 충주시 남산로 73, (용산동)','27398');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2145,'롯데리아','칠금점','충청북도 충주시 칠금동 589번지','충청북도','충주시','충청북도 충주시 칠금12길 5, (칠금동)','27355');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1961,'롯데리아','제주항공우주박물관점','제주특별자치도 서귀포시 안덕면 서광리  산 39번지','제주특별자치도','서귀포시','제주특별자치도 서귀포시 안덕면 녹차분재로 218','63521');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1962,'맘스터치','표선점','제주특별자치도 서귀포시 표선면 표선리 1806-1번지','제주특별자치도','서귀포시','제주특별자치도 서귀포시 표선면 표선중앙로 8-4','63629');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1963,'롯데리아','제주표선해변점','제주특별자치도 서귀포시 표선면 표선리 879번지','제주특별자치도','서귀포시','제주특별자치도 서귀포시 표선면 표선백사로 127','63629');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1964,'맥도날드','0','제주특별자치도 제주시 건입동 1442번지','제주특별자치도','제주시','제주특별자치도 제주시 임항로 17, (건입동)','63276');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1965,'롯데리아','제주항디티점','제주특별자치도 제주시 건입동 940-12번지','제주특별자치도','제주시','제주특별자치도 제주시 임항로 94, (건입동)','63280');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1966,'맥도날드','제주노형점','제주특별자치도 제주시 노형동 903-5번지','제주특별자치도','제주시','제주특별자치도 제주시 노연로 7, (노형동)','63081');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1967,'버거킹','제주이마트점','제주특별자치도 제주시 노형동 919번지','제주특별자치도','제주시','제주특별자치도 제주시 1100로 3348, (노형동)','63082');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1968,'롯데리아','제주삼화지구점','제주특별자치도 제주시 도련일동 1938-5번지','제주특별자치도','제주시','제주특별자치도 제주시 건주로4길 6-4, (도련일동)','63323');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1969,'롯데리아','제주점','제주특별자치도 제주시 삼도이동 100-3번지','제주특별자치도','제주시','제주특별자치도 제주시 관덕로 38, (삼도이동)','63168');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1970,'맘스터치','제주대점','제주특별자치도 제주시 아라이동 34-14번지','제주특별자치도','제주시','제주특별자치도 제주시 제주대학로 115, (아라이동)','63249');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1971,'맘스터치','아라점','제주특별자치도 제주시 아라일동 6095-10번지','제주특별자치도','제주시','제주특별자치도 제주시 아란7길 4, (아라일동)','63237');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1972,'롯데리아','제주외도디티점','제주특별자치도 제주시 외도이동 343-9번지','제주특별자치도','제주시','제주특별자치도 제주시 일주서로 7335, (외도이동)','63068');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1973,'맥도날드','제주공항DT점','제주특별자치도 제주시 용담이동 1787번지','제주특별자치도','제주시','제주특별자치도 제주시 도령로 159, (용담이동)','63116');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1974,'롯데리아','제주공항점','제주특별자치도 제주시 용담이동 2002번지','제주특별자치도','제주시','제주특별자치도 제주시 공항로 2, (용담이동)','63115');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1975,'맥도날드','제주시청디티점','제주특별자치도 제주시 이도이동 1057-2번지','제주특별자치도','제주시','제주특별자치도 제주시 중앙로 277, (이도이동)','63210');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1976,'맥도날드','일도DT점','제주특별자치도 제주시 일도이동 369-11번지','제주특별자치도','제주시','제주특별자치도 제주시 동광로 134, (일도이동)','63254');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1977,'롯데리아','칠성로점','제주특별자치도 제주시 일도일동 1299-1번지','제주특별자치도','제주시','제주특별자치도 제주시 관덕로11길 24, (일도일동)','63277');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1978,'맘스터치','중앙로점','제주특별자치도 제주시 일도일동 1454-2번지','제주특별자치도','제주시','제주특별자치도 제주시 중앙로 60, (일도일동)','63168');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1979,'롯데리아','홈플러스점','충청남도 계룡시 금암동 21-5번지','충청남도','계룡시','충청남도 계룡시 계룡대로 304, (금암동)','32832');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1980,'롯데리아','계룡점','충청남도 계룡시 엄사면 엄사리 18-4번지','충청남도','계룡시','충청남도 계룡시 엄사면 번영로 11','32813');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1981,'롯데리아','공주신관점','충청남도 공주시 신관동 247-1번지','충청남도','공주시','충청남도 공주시 흑수골길 34, (신관동)','32581');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1982,'맘스터치','공주터미널점','충청남도 공주시 신관동 455번지','충청남도','공주시','충청남도 공주시 신관로 59, (신관동)','32584');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1983,'롯데리아','신관점','충청남도 공주시 신관동 654-1번지','충청남도','공주시','충청남도 공주시 공주대학로 89, (신관동)','32583');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1984,'롯데리아','이인휴게소천안방면','충청남도 공주시 이인면 산의리 237-3번지','충청남도','공주시','충청남도 공주시 이인면 논산천안고속도로 32','32607');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1985,'롯데리아','탄천휴게소순천방면','충청남도 공주시 탄천면 장선리 151-13번지','충청남도','공주시','충청남도 공주시 탄천면 논산천안고속도로 27','32610');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1986,'롯데리아','0','충청남도 금산군 금산읍 상리 106-2번지','충청남도','금산군','충청남도 금산군 금산읍 비선길 43','32740');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1987,'롯데리아','금산점','충청남도 금산군 금산읍 상리 175-3번지','충청남도','금산군','충청남도 금산군 금산읍 인삼로 67','32738');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1988,'롯데리아','논산강경점','충청남도 논산시 강경읍 대흥리 19-30번지','충청남도','논산시','충청남도 논산시 강경읍 계백로 130-1','32939');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1989,'롯데리아','논산연무점','충청남도 논산시 연무읍 동산리 903-40번지','충청남도','논산시','충청남도 논산시 연무읍 안심로 150-5','33008');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1990,'롯데리아','논산점','충청남도 논산시 취암동 1045-15번지','충청남도','논산시','충청남도 논산시 계백로 992, (취암동)','32974');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1991,'롯데리아','0','충청남도 논산시 취암동 1047-11번지','충청남도','논산시','충청남도 논산시 중앙로422번길 6, (취암동)','32974');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1992,'맘스터치','논산오거리점','충청남도 논산시 취암동 177-3번지','충청남도','논산시','충청남도 논산시 중앙로 419, (취암동)','32954');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1993,'맘스터치','논산점','충청남도 논산시 취암동 177-6번지','충청남도','논산시','충청남도 논산시 중앙로 419-1, (취암동)','32954');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1994,'롯데리아','송악점','충청남도 당진시 송악읍 복운리 1640-3번지','충청남도','당진시','충청남도 당진시 송악읍 신복운로7길 4-4','31724');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1995,'롯데리아','신평지점','충청남도 당진시 신평면 거산리 15-60번지','충청남도','당진시','충청남도 당진시 신평면 거산3거리길 79','31748');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1996,'롯데리아','당진신평점','충청남도 당진시 신평면 거산리 15-6번지','충청남도','당진시','충청남도 당진시 신평면 거산3거리길 75','31748');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1997,'롯데리아','모다아울렛행담도점','충청남도 당진시 신평면 매산리 500-9번지','충청남도','당진시','충청남도 당진시 신평면 서해안고속도로 276','31750');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1998,'롯데리아','모다아울렛행담도점','충청남도 당진시 신평면 매산리 513번지','충청남도','당진시','충청남도 당진시 신평면 서해안고속도로 275','31750');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (1999,'롯데리아','0','충청남도 당진시 읍내동 224-4번지','충청남도','당진시','충청남도 당진시 당진중앙2로 103-8, (읍내동)','31770');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2000,'맘스터치','당진읍내점','충청남도 당진시 읍내동 225-10번지','충청남도','당진시','충청남도 당진시 당진중앙2로 117-36, (읍내동)','31770');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2001,'맥도날드','당진DT점','충청남도 당진시 읍내동 423-2번지','충청남도','당진시','충청남도 당진시 서문1길 62-18, (읍내동)','31769');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2002,'롯데리아','보령동대점','충청남도 보령시 동대동 1920번지','충청남도','보령시','충청남도 보령시 주공로 5, (동대동)','33469');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2003,'롯데리아','홈플러스보령점','충청남도 보령시 명천동 128번지','충청남도','보령시','0','0');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2004,'롯데리아','0','충청남도 보령시 신흑동 2266-3번지','충청남도','보령시','충청남도 보령시 해수욕장10길 6, (신흑동)','33489');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2005,'파파이스','0','충청남도 보령시 신흑동 2277-1번지','충청남도','보령시','충청남도 보령시 머드로 118, (신흑동)','33489');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2006,'롯데리아','부여아울렛점','충청남도 부여군 규암면 합정리 166-1번지','충청남도','부여군','충청남도 부여군 규암면 백제문로 387','33115');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2007,'롯데리아','신부여점','충청남도 부여군 부여읍 구아리 253번지','충청남도','부여군','충청남도 부여군 부여읍 사비로 86','33151');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2008,'맘스터치','테크노밸리점','충청남도 서산시 성연면 일람리 1109번지','충청남도','서산시','충청남도 서산시 성연면 성연3로 29','31931');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2009,'롯데리아','호수공원점','충청남도 서산시 예천동 1262-4번지','충청남도','서산시','충청남도 서산시 호수공원5로 39, (예천동)','31989');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2010,'버거킹','서산호수공원점','충청남도 서산시 예천동 1281-2번지','충청남도','서산시','충청남도 서산시 호수공원6로 72, (예천동)','31996');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2011,'맥도날드','서산점','충청남도 서산시 예천동 524-26번지','충청남도','서산시','충청남도 서산시 충의로 3, (예천동)','31988');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2012,'롯데리아','서산휴게소목포방면','충청남도 서산시 해미면 삼송리 119번지','충청남도','서산시','충청남도 서산시 해미면 서해안고속도로 241','31954');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2013,'맘스터치','해미점','충청남도 서산시 해미면 읍내리 300-5번지','충청남도','서산시','충청남도 서산시 해미면 남문5로 9','31960');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2014,'롯데리아','춘장대해수욕장특설점','충청남도 서천군 서면 도둔리 1326번지','충청남도','서천군','충청남도 서천군 서면 춘장대길 27','33603');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2015,'맘스터치','서천점','충청남도 서천군 서천읍 사곡리 318-6번지','충청남도','서천군','충청남도 서천군 서천읍 서천로 139','33640');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2016,'맘스터치','장항점','충청남도 서천군 장항읍 신창리 150-27번지','충청남도','서천군','충청남도 서천군 장항읍 장항로145번길 16','33670');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2017,'맘스터치','장항점','충청남도 서천군 장항읍 신창리 150-28번지','충청남도','서천군','충청남도 서천군 장항읍 장항로145번길 12','33670');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2018,'맘스터치','아산둔포점','충청남도 아산시 둔포면 둔포리 413-15번지','충청남도','아산시','충청남도 아산시 둔포면 둔포로 37','31404');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2019,'맘스터치','둔포테크노밸리점','충청남도 아산시 둔포면 석곡리 1674번지','충청남도','아산시','충청남도 아산시 둔포면 아산밸리중앙로 89','31406');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2020,'롯데리아','아산테크노밸리점','충청남도 아산시 둔포면 석곡리 1675번지','충청남도','아산시','충청남도 아산시 둔포면 아산밸리중앙로 82','31406');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2021,'롯데리아','배방북수점','충청남도 아산시 배방읍 북수리 1455번지','충청남도','아산시','충청남도 아산시 배방읍 북수로 121','31491');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2022,'롯데리아','롯데마트천안아산점','충청남도 아산시 배방읍 장재리 1767번지','충청남도','아산시','충청남도 아산시 배방읍 광장로 210','31471');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2023,'롯데리아','아산신창DT점','충청남도 아산시 신창면 읍내리 458번지','충청남도','아산시','충청남도 아산시 신창면 온천대로 798','31538');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2024,'맥도날드','아산DT점','충청남도 아산시 온천동 36-28번지','충청남도','아산시','충청남도 아산시 충무로 37, (온천동)','31513');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2025,'맥도날드','0','충청남도 아산시 온천동 37-12번지','충청남도','아산시','충청남도 아산시 시장길25번길 18-1, (온천동)','31513');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2026,'롯데리아','0','충청남도 아산시 온천동 41-2번지','충청남도','아산시','충청남도 아산시 시민로 400, (온천동)','31513');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2027,'맘스터치','온양온천점','충청남도 아산시 온천동 90-16번지','충청남도','아산시','충청남도 아산시 온궁로 27, (온천동)','31513');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2028,'롯데리아','0','충청남도 아산시 온천동 91-19번지','충청남도','아산시','충청남도 아산시 온궁로 30, (온천동)','31513');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2029,'버거킹','온양온천점','충청남도 아산시 온천동 91-4번지','충청남도','아산시','충청남도 아산시 충무로 3, (온천동)','31513');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2030,'롯데리아','아산용화점','충청남도 아산시 용화동 1405번지','충청남도','아산시','충청남도 아산시 용화로 35, (용화동)','31575');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2031,'맘스터치','용화지점','충청남도 아산시 용화동 584번지','충청남도','아산시','충청남도 아산시 어의정로 46, (용화동)','31572');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2032,'맘스터치','아산음봉점','충청남도 아산시 음봉면 동암리 271-18번지','충청남도','아산시','충청남도 아산시 음봉면 음봉로 529','31417');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2033,'롯데리아','0','충청남도 예산군 덕산면 신평리 513번지','충청남도','예산군','충청남도 예산군 덕산면 온천단지2로 11','32406');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2034,'롯데리아','홈플러스천안점','충청남도 천안시 동남구 구성동 50번지','충청남도','천안시','충청남도 천안시 동남구 천안대로 574, (구성동)','31069');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2035,'맥도날드','천안명동점','충청남도 천안시 동남구 대흥동 165-2번지','충청남도','천안시','충청남도 천안시 동남구 옛시청길 8, (대흥동)','31129');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2036,'롯데리아','천안역사점','충청남도 천안시 동남구 대흥동 57-1번지','충청남도','천안시','충청남도 천안시 동남구 대흥로 217, (대흥동)','31144');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2037,'맘스터치','천안목천점','충청남도 천안시 동남구 목천읍 신계리 166-8번지','충청남도','천안시','충청남도 천안시 동남구 목천읍 충절로 901-1','31233');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2038,'버거킹','쌍용대로디티점','충청남도 천안시 동남구 봉명동 212-1번지','충청남도','천안시','충청남도 천안시 동남구 쌍용대로 94, (봉명동)','31151');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2039,'롯데리아','상록리조트점','충청남도 천안시 동남구 수신면 장산리 669-1번지','충청남도','천안시','충청남도 천안시 동남구 수신면 수신로 576','31251');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2040,'롯데리아','천안통정점','충청남도 천안시 동남구 신방동 1534번지','충청남도','천안시','충청남도 천안시 동남구 통정10로 33-14, (신방동)','31208');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2041,'맘스터치','통정점','충청남도 천안시 동남구 신방동 1542번지','충청남도','천안시','충청남도 천안시 동남구 통정5로 63, (신방동)','31204');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2042,'파파이스','0','충청남도 천안시 동남구 신방동 49-14번지','충청남도','천안시','충청남도 천안시 동남구 수곡2길 8-3, (신방동)','31176');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2043,'롯데리아','신방점','충청남도 천안시 동남구 신방동 9-1번지','충청남도','천안시','충청남도 천안시 동남구 서부대로 277, (신방동)','31176');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2044,'맥도날드','고속버스터미널점','충청남도 천안시 동남구 신부동 363-2번지','충청남도','천안시','충청남도 천안시 동남구 만남로 43, (신부동)','31120');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2045,'롯데리아','신부대로점','충청남도 천안시 동남구 신부동 462-1번지','충청남도','천안시','충청남도 천안시 동남구 만남로 40, (신부동)','31123');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2046,'버거킹','천안신부점','충청남도 천안시 동남구 신부동 462-5번지','충청남도','천안시','충청남도 천안시 동남구 만남로 48, (신부동)','31123');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2047,'롯데리아','천안쌍용점','충청남도 천안시 동남구 쌍용동 552-1번지','충청남도','천안시','충청남도 천안시 동남구 쌍용대로 66, (쌍용동)','31151');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2048,'롯데리아','GS천안점','충청남도 천안시 동남구 원성동 126-3번지','충청남도','천안시','충청남도 천안시 동남구 충절로 148, (원성동)','31132');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2049,'맥도날드','0','충청남도 천안시 동남구 원성동 442-1번지','충청남도','천안시','충청남도 천안시 동남구 원성8길 4, (원성동)','31126');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2050,'롯데리아','두정점','충청남도 천안시 서북구 두정동 1598번지','충청남도','천안시','충청남도 천안시 서북구 두정역서3길 75, (두정동)','31103');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2051,'맥도날드','천안두정DT점','충청남도 천안시 서북구 두정동 620번지','충청남도','천안시','충청남도 천안시 서북구 노태산로 4, (두정동)','31099');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2052,'버거킹','천안두정점','충청남도 천안시 서북구 두정동 902번지','충청남도','천안시','충청남도 천안시 서북구 두정로 156, (두정동)','31107');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2053,'버거킹','0','충청남도 천안시 서북구 두정동 952번지','충청남도','천안시','충청남도 천안시 서북구 부성4길 35-7, (두정동)','31100');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2054,'맥도날드','천안서북이마트점','충청남도 천안시 서북구 백석동 1047번지','충청남도','천안시','충청남도 천안시 서북구 삼성대로 20, (백석동)','31087');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2055,'맘스터치','백석동점','충청남도 천안시 서북구 백석동 946번지','충청남도','천안시','충청남도 천안시 서북구 한들3로 78-3, (백석동)','31091');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2056,'맘스터치','천안펜타포트점','충청남도 천안시 서북구 불당동 1289번지','충청남도','천안시','충청남도 천안시 서북구 공원로 196, (불당동)','31168');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2057,'롯데리아','천안불당점','충청남도 천안시 서북구 불당동 1618번지','충청남도','천안시','충청남도 천안시 서북구 불당33길 24, (불당동)','31156');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2058,'롯데리아','성거점','충청남도 천안시 서북구 성거읍 천흥리 427-2번지','충청남도','천안시','충청남도 천안시 서북구 성거읍 성거길 86','31044');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2059,'롯데리아','천안성정점','충청남도 천안시 서북구 성정동 1486번지','충청남도','천안시','충청남도 천안시 서북구 성정두정로 1, (성정동)','31109');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2060,'롯데리아','성환점','충청남도 천안시 서북구 성환읍 성환리 372-1번지','충청남도','천안시','충청남도 천안시 서북구 성환읍 성환11길 39','31016');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2061,'롯데리아','천안메가마트점','충청남도 천안시 서북구 신당동 452-3번지','충청남도','천안시','충청남도 천안시 서북구 천안대로 1348, (신당동)','31081');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2062,'롯데리아','롯데마트천안점','충청남도 천안시 서북구 쌍용동 1367번지','충청남도','천안시','충청남도 천안시 서북구 월봉4로 140-9, (쌍용동)','31171');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2063,'맘스터치','신나사렛대점','충청남도 천안시 서북구 쌍용동 1544번지','충청남도','천안시','충청남도 천안시 서북구 월봉로 83, (쌍용동)','31171');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2064,'맥도날드','천안쌍용점','충청남도 천안시 서북구 쌍용동 1545번지','충청남도','천안시','충청남도 천안시 서북구 월봉로 79, (쌍용동)','31171');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2065,'맥도날드','천안이마트점','충청남도 천안시 서북구 쌍용동 191번지','충청남도','천안시','충청남도 천안시 서북구 충무로 187, (쌍용동)','31180');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2066,'맥도날드','천안쌍용SKDT점','충청남도 천안시 서북구 쌍용동 394-10번지','충청남도','천안시','충청남도 천안시 서북구 충무로 166, (쌍용동)','31175');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2067,'맥도날드','0','충청남도 천안시 서북구 쌍용동 494-4번지','충청남도','천안시','충청남도 천안시 서북구 충무로 165, (쌍용동)','31174');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2068,'롯데리아','직산점','충청남도 천안시 서북구 직산읍 삼은리 356번지','충청남도','천안시','충청남도 천안시 서북구 직산읍 봉주로 38','31037');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2069,'맘스터치','천안차암점','충청남도 천안시 서북구 차암동 467번지','충청남도','천안시','충청남도 천안시 서북구 밤개울2길 1-2, (차암동)','31085');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2070,'롯데리아','광천점','충청남도 홍성군 광천읍 광천리 189-2번지','충청남도','홍성군','충청남도 홍성군 광천읍 광천로329번길 3','32295');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2071,'맥도날드','0','충청남도 홍성군 홍성읍 소향리 72-4번지','충청남도','홍성군','충청남도 홍성군 홍성읍 충서로 1528','32224');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2072,'맘스터치','법원점','충청남도 홍성군 홍성읍 월산리 862-3번지','충청남도','홍성군','충청남도 홍성군 홍성읍 법원로 10','32226');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2073,'롯데리아','괴산점','충청북도 괴산군 괴산읍 동부리 637-1번지','충청북도','괴산군','충청북도 괴산군 괴산읍 괴강로 4','28033');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2074,'롯데리아','보은점','충청북도 보은군 보은읍 삼산리 93-18번지','충청북도','보은군','충청북도 보은군 보은읍 보은로 95','28951');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2075,'롯데리아','금강휴게소서울방면','충청북도 옥천군 동이면 조령리 576번지','충청북도','옥천군','충청북도 옥천군 동이면 금강로 596','29022');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2076,'롯데리아','금왕점','충청북도 음성군 금왕읍 무극리 244-15번지','충청북도','음성군','충청북도 음성군 금왕읍 무극로 282-1','27634');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2077,'맘스터치','음성혁신도시점','충청북도 음성군 맹동면 동성리 461번지','충청북도','음성군','충청북도 음성군 맹동면 대하로 273','27738');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2078,'맘스터치','음성읍내점','충청북도 음성군 음성읍 읍내리 355-4번지','충청북도','음성군','충청북도 음성군 음성읍 시장로 69','27702');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2079,'맘스터치','신백점','충청북도 제천시 신백동 183-1번지','충청북도','제천시','충청북도 제천시 의병대로 245, (신백동)','27178');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2080,'맘스터치','제천장락점','충청북도 제천시 장락동 552번지','충청북도','제천시','충청북도 제천시 신죽하로 53, (장락동)','27144');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2081,'맥도날드','제천DT점','충청북도 제천시 청전동 165-5번지','충청북도','제천시','충청북도 제천시 의림대로 202, (청전동)','27166');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2082,'롯데리아','청전점','충청북도 제천시 청전동 637번지','충청북도','제천시','충청북도 제천시 청전대로 169, (청전동)','27147');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2083,'맘스터치','하소점','충청북도 제천시 하소동 71-9번지','충청북도','제천시','충청북도 제천시 용두대로15길 18-1, (하소동)','27162');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2084,'롯데리아','롯데마트제천점','충청북도 제천시 하소동 77번지','충청북도','제천시','충청북도 제천시 용두대로 111, (하소동)','27162');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2085,'맘스터치','증평점','충청북도 증평군 증평읍 중동리 16-3번지','충청북도','증평군','충청북도 증평군 증평읍 중앙로 193-4','27927');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2086,'롯데리아','증평점','충청북도 증평군 증평읍 중동리 4번지','충청북도','증평군','충청북도 증평군 증평읍 중앙로 215-1','27927');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2087,'롯데리아','0','충청북도 증평군 증평읍 증평리 4번지','충청북도','증평군','충청북도 증평군 증평읍 단군전길 2-4','27936');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2088,'파파이스','진천점','충청북도 진천군 진천읍 벽암리 569번지','충청북도','진천군','충청북도 진천군 진천읍 중앙북1길 3','27831');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2089,'버거킹','충북진천점','충청북도 진천군 진천읍 읍내리 395-4번지','충청북도','진천군','충청북도 진천군 진천읍 상산로 90','27833');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2090,'버거킹','진천점','충청북도 진천군 진천읍 읍내리 403-2번지','충청북도','진천군','충청북도 진천군 진천읍 상산로 71','27833');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2091,'롯데리아','청주금천점','충청북도 청주시 상당구 금천동 287번지','충청북도','청주시','충청북도 청주시 상당구 수영로 285, (금천동)','28744');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2092,'맥도날드','청주금천점','충청북도 청주시 상당구 금천동 44-1번지','충청북도','청주시','충청북도 청주시 상당구 중고개로 281, (금천동)','28728');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2093,'맘스터치','청주용담광장점','충청북도 청주시 상당구 금천동 97-16번지','충청북도','청주시','충청북도 청주시 상당구 수영로 229, (금천동)','28733');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2094,'롯데리아','청주남문점','충청북도 청주시 상당구 남문로2가 52번지','충청북도','청주시','충청북도 청주시 상당구 성안로 47, (남문로2가)','28530');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2095,'롯데리아','0','충청북도 청주시 상당구 남문로2가 54-2번지','충청북도','청주시','충청북도 청주시 상당구 성안로 49, (남문로2가)','28530');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2096,'KFC','0','충청북도 청주시 상당구 북문로1가 170-1번지','충청북도','청주시','충청북도 청주시 상당구 상당로81번길 33, (북문로1가)','28527');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2097,'롯데리아','0','충청북도 청주시 상당구 북문로1가 90-1번지','충청북도','청주시','충청북도 청주시 상당구 성안로 13, (북문로1가)','28526');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2098,'롯데리아','까르푸청주점','충청북도 청주시 상당구 서문동 157-14번지','충청북도','청주시','충청북도 청주시 상당구 사직대로 346, (서문동)','28524');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2099,'맘스터치','0','충청북도 청주시 상당구 서문동 32-5번지','충청북도','청주시','충청북도 청주시 상당구 사직대로350번길 25, (서문동)','28527');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2100,'버거킹','청주성안길점','충청북도 청주시 상당구 서문동 9-9번지','충청북도','청주시','충청북도 청주시 상당구 상당로81번길 64, (서문동)','28525');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2101,'맘스터치','0','충청북도 청주시 상당구 용암동 2011번지','충청북도','청주시','충청북도 청주시 상당구 월평로 222, (용암동)','28782');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2102,'롯데리아','서원대점','충청북도 청주시 서원구 모충동 134-27번지','충청북도','청주시','충청북도 청주시 서원구 서원남로 26, (모충동)','28675');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2103,'맥도날드','청주분평점','충청북도 청주시 서원구 분평동 241-4번지','충청북도','청주시','충청북도 청주시 서원구 청남로 1991, (분평동)','28701');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2104,'맘스터치','청주수곡분평점','충청북도 청주시 서원구 분평동 246-24번지','충청북도','청주시','충청북도 청주시 서원구 청남로 1999, (분평동)','28701');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2105,'롯데리아','청주분평DT점','충청북도 청주시 서원구 분평동 289-5번지','충청북도','청주시','충청북도 청주시 서원구 1순환로 991, (분평동)','28699');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2106,'맘스터치','충대중문점','충청북도 청주시 서원구 사창동 217-22번지','충청북도','청주시','충청북도 청주시 서원구 내수동로102번길 36, (사창동)','28643');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2107,'롯데리아','사창점','충청북도 청주시 서원구 사창동 423번지','충청북도','청주시','충청북도 청주시 서원구 내수동로 116, (사창동)','28643');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2108,'맘스터치','청주산남점','충청북도 청주시 서원구 산남동 654번지','충청북도','청주시','충청북도 청주시 서원구 산남로 54, (산남동)','28625');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2109,'맘스터치','청주성화점','충청북도 청주시 서원구 성화동 470번지','충청북도','청주시','충청북도 청주시 서원구 신화로 34, (성화동)','28637');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2110,'맥도날드','청주성화점','충청북도 청주시 서원구 성화동 721번지','충청북도','청주시','충청북도 청주시 서원구 서부로 1344, (성화동)','28614');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2111,'롯데리아','내수점','충청북도 청주시 청원구 내수읍 도원리 198번지','충청북도','청주시','충청북도 청주시 청원구 내수읍 내수도원길 49','28150');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2112,'맘스터치','청주내수점','충청북도 청주시 청원구 내수읍 마산리 167-3번지','충청북도','청주시','충청북도 청주시 청원구 내수읍 내수로 720','28145');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2113,'롯데리아','청주내수점','충청북도 청주시 청원구 내수읍 마산리 197-83번지','충청북도','청주시','충청북도 청주시 청원구 내수읍 마산2길 49','28145');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2114,'맘스터치','청주사천점','충청북도 청주시 청원구 사천동 436-1번지','충청북도','청주시','충청북도 청주시 청원구 율봉로 19, (사천동)','28341');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2115,'버거킹','오창호수공원점','충청북도 청주시 청원구 오창읍 양청리 788-1번지','충청북도','청주시','충청북도 청주시 청원구 오창읍 중심상업로 31-18','28120');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2116,'KFC','0','충청북도 청주시 청원구 오창읍 양청리 798-6번지','충청북도','청주시','충청북도 청주시 청원구 오창읍 중심상업로 32-19','28119');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2117,'롯데리아','홈플러스오창점','충청북도 청주시 청원구 오창읍 양청리 820번지','충청북도','청주시','충청북도 청주시 청원구 오창읍 중심상업1로 8-11','28120');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2118,'맘스터치','오창2산단점','충청북도 청주시 청원구 오창읍 주성리 578번지','충청북도','청주시','충청북도 청주시 청원구 오창읍 2산단로 134','28117');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2119,'롯데리아','오창2산단점','충청북도 청주시 청원구 오창읍 주성리 627번지','충청북도','청주시','충청북도 청주시 청원구 오창읍 주성1길 5','28117');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2120,'맘스터치','청주우암점','충청북도 청주시 청원구 우암동 235-25번지','충청북도','청주시','충청북도 청주시 청원구 직지대로 889, (우암동)','28489');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2121,'맥도날드','청주율량GSDT점','충청북도 청주시 청원구 율량동 769번지','충청북도','청주시','충청북도 청주시 청원구 공항로 156, (율량동)','28329');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2122,'롯데리아','청주율량2지구점','충청북도 청주시 청원구 주성동 343번지','충청북도','청주시','충청북도 청주시 청원구 충청대로 174, (주성동)','28318');
Insert into FASTFOOD (ID,GB,NM,ADDR,SIDO,SIGUNGU,ROAD_ADDR,ZIPCD) values (2123,'롯데리아','청주터미널점','충청북도 청주시 흥덕구 가경동 1416-2번지','충청북도','청주시','충청북도 청주시 흥덕구 풍산로 15, (가경동)','28396');

UPDATE TAX SET SIGUNGU = TRIM(SIGUNGU);

COMMIT;

SELECT * 
FROM fastfood;

--시도, 시군구, 버거지수
SELECT sido 시도, sigungu 시군구, 
                   ROUND(SUM(
                    (SELECT COUNT(gb)
                     FROM fastfood 
                     WHERE gb = '버거킹') +
                    (SELECT COUNT(gb)
                     FROM fastfood
                     WHERE gb = '맥도날드') +
                    (SELECT COUNT(gb)
                     FROM fastfood
                     WHERE gb = 'KFC')) / 
                     (SELECT COUNT(gb)
                      FROM fastfood
                      WHERE gb = '롯데리아')) 버거지수      
FROM fastfood
GROUP BY sido, sigungu
ORDER BY 버거지수 DESC;


SELECT sido 시도, sigungu 시군구, 
                   
                    ((SELECT COUNT(gb)
                     FROM fastfood 
                     WHERE gb = '버거킹') +
                    (SELECT COUNT(gb)
                     FROM fastfood
                     WHERE gb = '맥도날드') +
                    (SELECT COUNT(gb)
                     FROM fastfood
                     WHERE gb = 'KFC')) / 
                     (SELECT COUNT(gb)
                      FROM fastfood
                      WHERE gb = '롯데리아') 버거지수      
FROM fastfood;


SELECT a.sido 시도, a.sigungu 시군구, ROUND(a.c1/b.c2, 2) burger                    
FROM                   
    (SELECT sido, sigungu, COUNT(*) c1
     FROM fastfood 
     WHERE gb IN ('버거킹','맥도날드','KFC')
     GROUP BY sido, sigungu) a,
     
     (SELECT sido, sigungu, COUNT(*) c2
      FROM fastfood
      WHERE gb IN ('롯데리아')
      GROUP BY sido, sigungu) b 
WHERE a.sido = b.sido
AND a.sigungu = b.sigungu
ORDER BY burger DESC;


      
SELECT cc.sido, cc.sigungu, cc.point
FROM
    (SELECT rownum r, c.*
    FROM
        (SELECT  a.sido, a.sigungu,  round(a.cnt/b.cnt,2) point
        FROM
        (SELECT sido, sigungu, COUNT(*) cnt
        FROM fastfood
        WHERE gb IN ('버거킹', '맥도날드', 'KFC')
        GROUP BY SIDO, SIGUNGU ) a
        ,
        (SELECT  sido, sigungu, COUNT(*) cnt
        FROM fastfood
        WHERE gb IN ('롯데리아')
        GROUP BY SIDO, SIGUNGU) b
        WHERE a.sido = b.sido
        AND a.sigungu = b.sigungu
        ORDER BY point DESC)c )cc
,
    (SELECT rownum ro, d.*
     FROM
        (SELECT  sido, sigungu, sal
        FROM TAX
        ORDER BY sal desc) d) dd
WHERE cc.r = dd.ro;


(select count(gb)
from fastfood
where gb = '롯데리아');

(select count(gb)
from fastfood
where gb = '맥도날드') m ;

(select count(gb)
from fastfood
where gb = 'KFC')k;

select count(gb)
from fastfood
where gb = '버거킹';

--대전시 구마다 버거지수 출력
select sido 시도, sigungu 시군구,  
        (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '중구'
         and gb = '맥도날드') 맥도날드,
         (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '중구'
         and gb = 'KFC') KFC,
         (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '중구'
         and gb = '버거킹') 버거킹,
         (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '중구'
         and gb = '롯데리아') 롯데리아      
from fastfood
WHERE sido = '대전광역시'
AND sigungu = '중구'
GROUP BY sido, sigungu;

select sido 시도, sigungu 시군구,  
        (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '서구'
         and gb = '맥도날드') 맥도날드,
         (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '서구'
         and gb = 'KFC') KFC,
         (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '서구'
         and gb = '버거킹') 버거킹,
         (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '서구'
         and gb = '롯데리아') 롯데리아         
from fastfood
WHERE sido = '대전광역시'
AND sigungu = '서구'
GROUP BY sido, sigungu;

select sido 시도, sigungu 시군구,  
        (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '대덕구'
         and gb = '맥도날드') 맥도날드,
         (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '대덕구'
         and gb = 'KFC') KFC,
         (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '대덕구'
         and gb = '버거킹') 버거킹,
         (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '대덕구'
         and gb = '롯데리아') 롯데리아         
from fastfood
WHERE sido = '대전광역시'
AND sigungu = '대덕구'
GROUP BY sido, sigungu;

select sido 시도, sigungu 시군구,  
        (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '유성구'
         and gb = '맥도날드') 맥도날드,
         (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '유성구'
         and gb = 'KFC') KFC,
         (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '유성구'
         and gb = '버거킹') 버거킹,
         (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '유성구'
         and gb = '롯데리아') 롯데리아         
from fastfood
WHERE sido = '대전광역시'
AND sigungu = '유성구'
GROUP BY sido, sigungu;

select sido 시도, sigungu 시군구,  
        (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '동구'
         and gb = '맥도날드') 맥도날드,
         (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '동구'
         and gb = 'KFC') KFC,
         (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '동구'
         and gb = '버거킹') 버거킹,
         (select count(gb)
         from fastfood
         where sido = '대전광역시'
         and sigungu = '동구'
         and gb = '롯데리아') 롯데리아
from fastfood
WHERE sido = '대전광역시'
AND sigungu = '동구'
GROUP BY sido, sigungu;

--대전의 버거지수
SELECT a.sido, a.sigungu, ROUND(a.c1/b.c2, 2) burgerScore
FROM
(SELECT sido, sigungu, COUNT(*) c1
FROM fastfood
WHERE sido = '대전광역시'
AND gb IN ('KFC', '버거킹', '맥도날드')
GROUP BY sido, sigungu) a ,

(SELECT sido, sigungu, COUNT(*) c2
FROM fastfood
WHERE sido = '대전광역시'
AND gb IN ('롯데리아')
GROUP BY sido, sigungu) b
WHERE a.sido = b.sido
AND a.sigungu = b.sigungu
ORDER BY burgerScore DESC;

--전체 도시의 버거지수
SELECT a.sido, a.sigungu, ROUND(a.c1/b.c2, 2) burgerScore
FROM
(SELECT sido, sigungu, COUNT(*) c1
FROM fastfood
WHERE gb IN ('KFC', '버거킹', '맥도날드')
GROUP BY sido, sigungu) a ,

(SELECT sido, sigungu, COUNT(*) c2
FROM fastfood
WHERE gb IN ('롯데리아')
GROUP BY sido, sigungu) b
WHERE a.sido = b.sido
AND a.sigungu = b.sigungu
ORDER BY burgerScore DESC;

--fastfood 테이블을 한 번만 읽는 방식으로 작성
SELECT sido, sigungu, ROUND((kfc + bur + mac) / lot, 2) burgerScore 
FROM
(SELECT sido, sigungu, 
        NVL(SUM(DECODE(gb,'KFC',1)),0) kfc, 
        NVL(SUM(DECODE(gb,'버거킹',1)),0) bur,
        NVL(SUM(DECODE(gb,'맥도날드',1)),0) mac,
        NVL(SUM(DECODE(gb,'롯데리아',1)),1) lot
        
FROM fastfood
WHERE gb IN('KFC', '버거킹', '맥도날드', '롯데리아')
GROUP BY sido, sigungu)
ORDER BY burgerScore DESC;       

SELECT sido, sigungu, ROUND(sal/people) pri_sal 
FROM tax
ORDER BY pri_sal DESC;

--햄버거지수 시도, 햄버거지수 시군구, 햄버거지수, 세금 시도, 세금 시군구, 개인별 근로소득액
SELECT bb.sido 시도, bb.sigungu 시군구, bb.burgerScore burgerScore, 
       tt.sido 시도, tt.sigungu 시군구, tt.pri_sal pri_sal
FROM 
    (SELECT ROWNUM r, c.*
    FROM
        (SELECT a.sido, a.sigungu, ROUND(a.c1/b.c2, 2) burgerScore
        FROM
            (SELECT sido, sigungu, COUNT(*) c1
            FROM fastfood
            WHERE gb IN ('KFC', '버거킹', '맥도날드')
            GROUP BY sido, sigungu) a ,

        (SELECT sido, sigungu, COUNT(*) c2
        FROM fastfood
        WHERE gb IN ('롯데리아')
        GROUP BY sido, sigungu) b
        WHERE a.sido = b.sido
        AND a.sigungu = b.sigungu
        ORDER BY burgerScore DESC) c) bb,

    (SELECT ROWNUM rn, t.*
    FROM
        (SELECT sido, sigungu, ROUND(sal/people) pri_sal 
        FROM tax
ORDER BY pri_sal DESC) t) tt
WHERE bb.r = tt.rn;

--ROWNUM 사용시 주의
--1.SELECT --> ORDER BY 
--  정렬된 결과에 ROWNUM을 적용하기 위해서는 인라인뷰를 사용
--2. 1번부터 순차적으로 조회가 되는 조건에 대해서만 WHERE 절에서 기술이 가능
--  ROWNUM = 1 (o) / ROWNUM = 2 (x)
--  ROWNUM < 10 (o) / ROWNUM > 10 (x)
