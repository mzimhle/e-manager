DROP TABLE IF EXISTS `test`.`area`;
CREATE TABLE  `test`.`area` (
  `area_code` 		varchar(30) NOT NULL,
  `area_id` 		varchar(100) DEFAULT NULL,
  `area_shortid`	varchar(100) DEFAULT NULL,
  `parent_code` 	varchar(30) DEFAULT NULL,
  `areatype_code` 	varchar(20) NOT NULL,
  `area_name` 		varchar(100) NOT NULL,  
  `area_capital` 	varchar(100) DEFAULT NULL COMMENT 'For municipalities this would be the capital town of the municipality or provincial capital.',
  `area_capitalcode`varchar(30) DEFAULT NULL,
  `area_sPath` 		varchar(45) DEFAULT NULL,
  `area_path` 		varchar(200) DEFAULT NULL,
  `area_latitude` 	varchar(50) DEFAULT NULL,
  `area_longitude` 	varchar(50) DEFAULT NULL,
  `area_polygon` 	text,
  PRIMARY KEY (`area_code`, )
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

delimiter //
create function createCode()
    returns char(30)
	deterministic
    begin
        declare areacode char(30);
        set areacode = substring(trim(leading '0' from (trim(leading '.' from (trim(leading '0' from rand()))))), 1, 20);
        return areacode;
    end //
delimiter ;

EASTERN CAPE
============

insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'BUF', 'eastern-cape', 'municipality', 'Buffalo City Metropolitan Municipality', 'East London') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC101', 'eastern-cape', 'municipality', 'Camdeboo', 'Graaff-Reinet') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC102', 'eastern-cape', 'municipality', 'Blue Crane Route', 'Somerset East') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC103', 'eastern-cape', 'municipality', 'Ikwezi', 'Jansenville') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC104', 'eastern-cape', 'municipality', 'Makana', 'Grahamstown') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC105', 'eastern-cape', 'municipality', 'Ndlambe', 'Port Alfred') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC106', 'eastern-cape', 'municipality', 'Sundays River Valley', 'Kirkwood') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC107', 'eastern-cape', 'municipality', 'Baviaans', 'Willowmore') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC108', 'eastern-cape', 'municipality', 'Kouga', 'Humansdorp') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC109', 'eastern-cape', 'municipality', 'Kou-Kamma', 'Kareedouw') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC121', 'eastern-cape', 'municipality', 'Mbhashe', 'Idutywa') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC122', 'eastern-cape', 'municipality', 'Mnquma', 'Butterworth') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC123', 'eastern-cape', 'municipality', 'Great Kei', 'Komga') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC124', 'eastern-cape', 'municipality', 'Amahlathi', 'Stutterheim') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC126', 'eastern-cape', 'municipality', 'Ngqushwa', 'Peddie') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC127', 'eastern-cape', 'municipality', 'Nkonkobe', 'Alice') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC128', 'eastern-cape', 'municipality', 'Nxuba', 'Adelaide') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC131', 'eastern-cape', 'municipality', 'Inxuba Yethemba', 'Cradock') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC132', 'eastern-cape', 'municipality', 'Tsolwana', 'Tarkastad') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC133', 'eastern-cape', 'municipality', 'Inkwanca', 'Molteno') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC134', 'eastern-cape', 'municipality', 'Lukhanji', 'Queenstown') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC135', 'eastern-cape', 'municipality', 'Intsika Yethu', 'Cofimvaba') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC136', 'eastern-cape', 'municipality', 'Emalahleni', 'Lady Frere') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC137', 'eastern-cape', 'municipality', 'Engcobo', 'Engcobo') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC138', 'eastern-cape', 'municipality', 'Sakhisizwe', 'Elliot') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC141', 'eastern-cape', 'municipality', 'Elundini', 'Mount Fletcher') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC142', 'eastern-cape', 'municipality', 'Senqu', 'Barkly East') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC143', 'eastern-cape', 'municipality', 'Maletswai', 'Aliwal North') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC144', 'eastern-cape', 'municipality', 'Gariep', 'Burgersdorp') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC153', 'eastern-cape', 'municipality', 'Ngquza Hill', 'Flagstaff') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC154', 'eastern-cape', 'municipality', 'Port St Johns', 'Port St Johns') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC155', 'eastern-cape', 'municipality', 'Nyandeni', 'Libode') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC156', 'eastern-cape', 'municipality', 'Mhlontlo', 'Qumbu') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC157', 'eastern-cape', 'municipality', 'King Sabata Dalindyebo', 'Umtata') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC441', 'eastern-cape', 'municipality', 'Matatiele', 'Matatiele') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC442', 'eastern-cape', 'municipality', 'Umzimvubu', 'Mount Ayliff') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC443', 'eastern-cape', 'municipality', 'Mbizana', 'Bizana') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'EC444', 'eastern-cape', 'municipality', 'Ntabankulu', 'Ntabankulu') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NMA', 'eastern-cape', 'municipality', 'Nelson Mandela Bay', 'Port Elizabeth') on duplicate key update area_code = createCode();

EASTERN CAPE - WARDS
====================
BUF
===
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200001', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200002', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200003', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200004', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200005', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200006', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200007', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200008', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200009', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200010', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200011', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200012', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200013', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200014', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200015', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200016', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200017', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200018', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200019', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200020', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200021', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200022', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200023', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200024', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200025', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200026', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200027', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200028', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200029', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200030', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200031', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200032', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200033', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200034', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200035', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200036', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200037', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200038', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200039', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200040', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200041', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200042', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200043', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200044', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200045', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200046', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200047', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200048', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200049', 'BUF', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29200050', 'BUF', 'ward') on duplicate key update area_code = createCode();
EC101
=====
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21001001', 'EC101', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21001002', 'EC101', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21001003', 'EC101', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21001004', 'EC101', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21001005', 'EC101', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21001006', 'EC101', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21001007', 'EC101', 'ward') on duplicate key update area_code = createCode();
EC102
=====
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21002001', 'EC102', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21002002', 'EC102', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21002003', 'EC102', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21002004', 'EC102', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21002005', 'EC102', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21002006', 'EC102', 'ward') on duplicate key update area_code = createCode();
EC103
=====
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21003001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21003002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21003003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21003004', 'EC103', 'ward') on duplicate key update area_code = createCode();
EC104
=====
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21004001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21004002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21004003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21004004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21004005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21004006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21004007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21004008', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21004009', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21004010', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21004011', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21004012', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21004013', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21004014', 'EC103', 'ward') on duplicate key update area_code = createCode();

EC105
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21005001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21005002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21005003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21005004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21005005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21005006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21005007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21005008', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21005009', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21005010', 'EC103', 'ward') on duplicate key update area_code = createCode();


EC106
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21006001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21006002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21006003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21006004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21006005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21006006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21006007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21006008', 'EC103', 'ward') on duplicate key update area_code = createCode();


EC107
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21007001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21007002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21007003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21007004', 'EC103', 'ward') on duplicate key update area_code = createCode();


EC108
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21008001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21008002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21008003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21008004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21008005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21008006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21008007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21008008', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21008009', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21008010', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21008011', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21008012', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21008013', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21008014', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21008015', 'EC103', 'ward') on duplicate key update area_code = createCode();


EC109
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21009001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21009002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21009003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21009004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21009005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21009006', 'EC103', 'ward') on duplicate key update area_code = createCode();


EC121
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201008', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201009', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201010', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201011', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201012', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201013', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201014', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201015', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201016', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201017', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201018', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201019', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201020', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201021', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201022', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201023', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201024', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201025', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201026', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201027', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201028', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201029', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201030', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21201031', 'EC103', 'ward') on duplicate key update area_code = createCode();


EC122
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202008', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202009', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202010', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202011', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202012', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202013', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202014', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202015', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202016', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202017', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202018', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202019', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202020', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202021', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202022', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202023', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202024', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202025', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202026', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202027', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202028', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202029', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202030', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21202031', 'EC103', 'ward') on duplicate key update area_code = createCode();


EC123
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21203001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21203002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21203003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21203004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21203005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21203006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21203007', 'EC103', 'ward') on duplicate key update area_code = createCode();


EC124
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204008', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204009', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204010', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204011', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204012', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204013', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204014', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204015', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204016', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204017', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204018', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204019', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21204020', 'EC103', 'ward') on duplicate key update area_code = createCode();


EC126
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21206001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21206002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21206003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21206004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21206005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21206006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21206007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21206008', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21206009', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21206010', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21206011', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21206012', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21206013', 'EC103', 'ward') on duplicate key update area_code = createCode();


EC127
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207008', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207009', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207010', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207011', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207012', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207013', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207014', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207015', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207016', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207017', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207018', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207019', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207020', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21207021', 'EC103', 'ward') on duplicate key update area_code = createCode();


EC128
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21208001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21208002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21208003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21208004', 'EC103', 'ward') on duplicate key update area_code = createCode();

EC131
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21301001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21301002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21301003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21301004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21301005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21301006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21301007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21301008', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21301009', 'EC103', 'ward') on duplicate key update area_code = createCode();


EC132
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21302001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21302002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21302003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21302004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21302005', 'EC103', 'ward') on duplicate key update area_code = createCode();


EC133
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21303001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21303002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21303003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21303004', 'EC103', 'ward') on duplicate key update area_code = createCode();


EC134
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304008', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304009', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304010', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304011', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304012', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304013', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304014', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304015', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304016', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304017', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304018', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304019', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304020', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304021', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304022', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304023', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304024', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304025', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304026', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21304027', 'EC103', 'ward') on duplicate key update area_code = createCode();

EC135
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305008', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305009', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305010', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305011', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305012', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305013', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305014', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305015', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305016', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305017', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305018', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305019', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305020', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21305021', 'EC103', 'ward') on duplicate key update area_code = createCode();

EC136
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306008', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306009', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306010', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306011', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306012', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306013', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306014', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306015', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306016', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21306017', 'EC103', 'ward') on duplicate key update area_code = createCode();

EC137
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307008', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307009', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307010', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307011', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307012', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307013', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307014', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307015', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307016', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307017', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307018', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307019', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21307020', 'EC103', 'ward') on duplicate key update area_code = createCode();

EC138
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21308001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21308002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21308003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21308004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21308005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21308006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21308007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21308008', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21308009', 'EC103', 'ward') on duplicate key update area_code = createCode();


EC141
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401008', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401009', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401010', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401011', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401012', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401013', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401014', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401015', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401016', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21401017', 'EC103', 'ward') on duplicate key update area_code = createCode();


EC142
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402001', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402002', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402003', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402004', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402005', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402006', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402007', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402008', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402009', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402010', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402011', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402012', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402013', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402014', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402015', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402016', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402017', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402018', 'EC103', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21402019', 'EC103', 'ward') on duplicate key update area_code = createCode();

EC143
=====

insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21403001', 'EC143', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21403002', 'EC143', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21403003', 'EC143', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21403004', 'EC143', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21403005', 'EC143', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21403006', 'EC143', 'ward') on duplicate key update area_code = createCode();

EC144
=====

insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21404001', 'EC144', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21404002', 'EC144', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21404003', 'EC144', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21404004', 'EC144', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21404005', 'EC144', 'ward') on duplicate key update area_code = createCode();

EC153
=====

insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503001', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503002', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503003', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503004', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503005', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503006', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503007', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503008', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503009', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503010', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503011', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503012', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503013', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503014', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503015', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503016', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503017', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503018', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503019', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503020', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503021', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503022', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503023', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503024', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503025', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503026', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503027', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503028', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503029', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503030', 'EC153', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21503031', 'EC153', 'ward') on duplicate key update area_code = createCode();

EC154
=====

insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504001', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504002', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504003', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504004', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504005', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504006', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504007', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504008', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504009', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504010', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504011', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504012', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504013', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504014', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504015', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504016', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504017', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504018', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504019', 'EC154', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21504020', 'EC154', 'ward') on duplicate key update area_code = createCode();

EC155
=====

insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505001', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505002', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505003', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505004', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505005', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505006', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505007', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505008', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505009', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505010', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505011', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505012', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505013', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505014', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505015', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505016', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505017', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505018', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505019', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505020', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505021', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505022', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505023', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505024', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505025', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505026', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505027', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505028', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505029', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505030', 'EC155', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21505031', 'EC155', 'ward') on duplicate key update area_code = createCode();

EC156
=====

insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506001', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506002', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506003', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506004', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506005', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506006', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506007', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506008', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506009', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506010', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506011', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506012', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506013', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506014', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506015', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506016', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506017', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506018', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506019', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506020', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506021', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506022', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506023', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506024', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506025', 'EC156', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21506026', 'EC156', 'ward') on duplicate key update area_code = createCode();

EC157
=====

insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507001', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507002', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507003', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507004', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507005', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507006', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507007', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507008', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507009', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507010', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507011', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507012', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507013', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507014', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507015', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507016', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507017', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507018', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507019', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507020', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507021', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507022', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507023', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507024', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507025', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507026', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507027', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507028', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507029', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507030', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507031', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507032', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507033', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507034', 'EC157', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '21507035', 'EC157', 'ward') on duplicate key update area_code = createCode();


EC441
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401001', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401002', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401003', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401004', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401005', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401006', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401007', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401008', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401009', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401010', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401011', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401012', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401013', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401014', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401015', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401016', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401017', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401018', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401019', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401020', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401021', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401022', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401023', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401024', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401025', 'EC441', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24401026', 'EC441', 'ward') on duplicate key update area_code = createCode();


EC442
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402001', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402002', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402003', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402004', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402005', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402006', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402007', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402008', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402009', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402010', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402011', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402012', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402013', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402014', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402015', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402016', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402017', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402018', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402019', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402020', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402021', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402022', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402023', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402024', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402025', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402026', 'EC442', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24402027', 'EC442', 'ward') on duplicate key update area_code = createCode();


EC443
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403001', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403002', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403003', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403004', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403005', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403006', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403007', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403008', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403009', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403010', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403011', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403012', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403013', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403014', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403015', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403016', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403017', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403018', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403019', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403020', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403021', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403022', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403023', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403024', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403025', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403026', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403027', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403028', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403029', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403030', 'EC443', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24403031', 'EC443', 'ward') on duplicate key update area_code = createCode();


EC444
=====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404001', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404002', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404003', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404004', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404005', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404006', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404007', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404008', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404009', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404010', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404011', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404012', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404013', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404014', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404015', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404016', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404017', 'EC444', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '24404018', 'EC444', 'ward') on duplicate key update area_code = createCode();


NMA
====


insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300001', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300002', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300003', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300004', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300005', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300006', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300007', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300008', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300009', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300010', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300011', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300012', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300013', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300014', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300015', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300016', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300017', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300018', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300019', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300020', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300021', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300022', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300023', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300024', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300025', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300026', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300027', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300028', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300029', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300030', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300031', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300032', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300033', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300034', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300035', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300036', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300037', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300038', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300039', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300040', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300041', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300042', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300043', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300044', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300045', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300046', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300047', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300048', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300049', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300050', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300051', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300052', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300053', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300054', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300055', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300056', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300057', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300058', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300059', 'NMA', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '29300060', 'NMA', 'ward') on duplicate key update area_code = createCode();

