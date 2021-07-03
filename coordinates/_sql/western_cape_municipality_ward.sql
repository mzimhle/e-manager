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

WESTERN CAPE
============

insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'CPT', 'western-cape',  'municipality', 'City of Cape Town', 'Cape Town') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC011', 'western-cape', 'municipality', 'Matzikama', 'Vredendal') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC012', 'western-cape', 'municipality', 'Cederberg', 'Citrusdal') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC013', 'western-cape', 'municipality', 'Bergrivier', 'Velddrif') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC014', 'western-cape', 'municipality', 'Saldanha Bay', 'West Coast Peninsula') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC015', 'western-cape', 'municipality', 'Swartland', 'Malmesbury') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC022', 'western-cape', 'municipality', 'Witzenberg', 'Ceres') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC023', 'western-cape', 'municipality', 'Drakenstein', 'Paarl') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC024', 'western-cape', 'municipality', 'Stellenbosch', 'Stellenbosch') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC025', 'western-cape', 'municipality', 'Breede Valley', 'Worcester') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC026', 'western-cape', 'municipality', 'Langeberg', 'Robertson') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC031', 'western-cape', 'municipality', 'Theewaterskloof', 'Caledon') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC032', 'western-cape', 'municipality', 'Overstrand', 'Greater Hermanus') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC033', 'western-cape', 'municipality', 'Cape Agulhas', 'Bredasdorp') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC034', 'western-cape', 'municipality', 'Swellendam', 'Barrydale/Swellendam ') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC041', 'western-cape', 'municipality', 'Kannaland', 'Ladismith') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC042', 'western-cape', 'municipality', 'Hessequa', 'Heidelberg/Riversdale') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC043', 'western-cape', 'municipality', 'Mossel Bay', 'Mossel Bay') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC044', 'western-cape', 'municipality', 'George', 'George') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC045', 'western-cape', 'municipality', 'Oudtshoorn', 'Oudtshoorn') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC047', 'western-cape', 'municipality', 'Bitou', 'Greater Plettenberg Bay') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC048', 'western-cape', 'municipality', 'Knysna', 'Knysna') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC051', 'western-cape', 'municipality', 'Laingsburg', 'Laingsburg') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC052', 'western-cape', 'municipality', 'Prince Albert', 'Prins Albert') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'WC053', 'western-cape', 'municipality', 'Beaufort West', 'Beaufort West') on duplicate key update area_code = createCode();


CPT
===
	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100001', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100002', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100003', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100004', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100005', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100006', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100007', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100008', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100009', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100010', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100011', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100012', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100013', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100014', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100015', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100016', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100017', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100018', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100019', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100020', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100021', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100022', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100023', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100024', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100025', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100026', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100027', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100028', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100029', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100030', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100031', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100032', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100033', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100034', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100035', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100036', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100037', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100038', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100039', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100040', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100041', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100042', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100043', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100044', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100045', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100046', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100047', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100048', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100049', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100050', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100051', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100052', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100053', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100054', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100055', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100056', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100057', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100058', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100059', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100060', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100061', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100062', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100063', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100064', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100065', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100066', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100067', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100068', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100069', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100070', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100071', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100072', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100073', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100074', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100075', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100076', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100077', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100078', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100079', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100080', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100081', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100082', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100083', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100084', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100085', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100086', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100087', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100088', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100089', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100090', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100091', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100092', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100093', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100094', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100095', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100096', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100097', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100098', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100099', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100100', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100101', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100102', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100103', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100104', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100105', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100106', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100107', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100108', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100109', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100110', 'CPT', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '19100111', 'CPT', 'ward') on duplicate key update area_code = createCode();


WC011
===

insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10101001', 'WC011', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10101002', 'WC011', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10101003', 'WC011', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10101004', 'WC011', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10101005', 'WC011', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10101006', 'WC011', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10101007', 'WC011', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10101008', 'WC011', 'ward') on duplicate key update area_code = createCode();

WC012
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10102001', 'WC012', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10102002', 'WC012', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10102003', 'WC012', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10102004', 'WC012', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10102005', 'WC012', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10102006', 'WC012', 'ward') on duplicate key update area_code = createCode();



WC013
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10103001', 'WC013', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10103002', 'WC013', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10103003', 'WC013', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10103004', 'WC013', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10103005', 'WC013', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10103006', 'WC013', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10103007', 'WC013', 'ward') on duplicate key update area_code = createCode();



WC014
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10104001', 'WC014', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10104002', 'WC014', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10104003', 'WC014', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10104004', 'WC014', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10104005', 'WC014', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10104006', 'WC014', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10104007', 'WC014', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10104008', 'WC014', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10104009', 'WC014', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10104010', 'WC014', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10104011', 'WC014', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10104012', 'WC014', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10104013', 'WC014', 'ward') on duplicate key update area_code = createCode();


WC015
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10105001', 'WC015', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10105002', 'WC015', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10105003', 'WC015', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10105004', 'WC015', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10105005', 'WC015', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10105006', 'WC015', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10105007', 'WC015', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10105008', 'WC015', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10105009', 'WC015', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10105010', 'WC015', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10105011', 'WC015', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10105012', 'WC015', 'ward') on duplicate key update area_code = createCode();



WC022
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10202001', 'WC022', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10202002', 'WC022', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10202003', 'WC022', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10202004', 'WC022', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10202005', 'WC022', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10202006', 'WC022', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10202007', 'WC022', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10202008', 'WC022', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10202009', 'WC022', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10202010', 'WC022', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10202011', 'WC022', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10202012', 'WC022', 'ward') on duplicate key update area_code = createCode();


WC023
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203001', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203002', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203003', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203004', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203005', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203006', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203007', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203008', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203009', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203010', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203011', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203012', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203013', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203014', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203015', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203016', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203017', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203018', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203019', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203020', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203021', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203022', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203023', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203024', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203025', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203026', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203027', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203028', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203029', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203030', 'WC023', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10203031', 'WC023', 'ward') on duplicate key update area_code = createCode();


WC024
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204001', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204002', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204003', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204004', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204005', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204006', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204007', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204008', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204009', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204010', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204011', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204012', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204013', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204014', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204015', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204016', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204017', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204018', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204019', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204020', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204021', 'WC024', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10204022', 'WC024', 'ward') on duplicate key update area_code = createCode();


WC025
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205001', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205002', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205003', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205004', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205005', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205006', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205007', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205008', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205009', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205010', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205011', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205012', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205013', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205014', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205015', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205016', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205017', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205018', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205019', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205020', 'WC025', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10205021', 'WC025', 'ward') on duplicate key update area_code = createCode();


WC026
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10206001', 'WC026', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10206002', 'WC026', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10206003', 'WC026', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10206004', 'WC026', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10206005', 'WC026', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10206006', 'WC026', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10206007', 'WC026', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10206008', 'WC026', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10206009', 'WC026', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10206010', 'WC026', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10206011', 'WC026', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10206012', 'WC026', 'ward') on duplicate key update area_code = createCode();


WC031
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10301001', 'WC031', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10301002', 'WC031', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10301003', 'WC031', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10301004', 'WC031', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10301005', 'WC031', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10301006', 'WC031', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10301007', 'WC031', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10301008', 'WC031', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10301009', 'WC031', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10301010', 'WC031', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10301011', 'WC031', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10301012', 'WC031', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10301013', 'WC031', 'ward') on duplicate key update area_code = createCode();


WC032
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10302001', 'WC032', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10302002', 'WC032', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10302003', 'WC032', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10302004', 'WC032', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10302005', 'WC032', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10302006', 'WC032', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10302007', 'WC032', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10302008', 'WC032', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10302009', 'WC032', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10302010', 'WC032', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10302011', 'WC032', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10302012', 'WC032', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10302013', 'WC032', 'ward') on duplicate key update area_code = createCode();


WC033
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10303001', 'WC033', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10303002', 'WC033', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10303003', 'WC033', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10303004', 'WC033', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10303005', 'WC033', 'ward') on duplicate key update area_code = createCode();


WC034
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10304001', 'WC034', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10304002', 'WC034', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10304003', 'WC034', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10304004', 'WC034', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10304005', 'WC034', 'ward') on duplicate key update area_code = createCode();


WC041
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10401001', 'WC041', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10401002', 'WC041', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10401003', 'WC041', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10401004', 'WC041', 'ward') on duplicate key update area_code = createCode();


WC042
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10402001', 'WC042', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10402002', 'WC042', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10402003', 'WC042', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10402004', 'WC042', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10402005', 'WC042', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10402006', 'WC042', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10402007', 'WC042', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10402008', 'WC042', 'ward') on duplicate key update area_code = createCode();


WC043
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10403001', 'WC043', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10403002', 'WC043', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10403003', 'WC043', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10403004', 'WC043', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10403005', 'WC043', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10403006', 'WC043', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10403007', 'WC043', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10403008', 'WC043', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10403009', 'WC043', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10403010', 'WC043', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10403011', 'WC043', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10403012', 'WC043', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10403013', 'WC043', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10403014', 'WC043', 'ward') on duplicate key update area_code = createCode();


WC044
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404001', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404002', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404003', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404004', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404005', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404006', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404007', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404008', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404009', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404010', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404011', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404012', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404013', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404014', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404015', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404016', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404017', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404018', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404019', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404020', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404021', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404022', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404023', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404024', 'WC044', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10404025', 'WC044', 'ward') on duplicate key update area_code = createCode();


WC045
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10405001', 'WC045', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10405002', 'WC045', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10405003', 'WC045', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10405004', 'WC045', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10405005', 'WC045', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10405006', 'WC045', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10405007', 'WC045', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10405008', 'WC045', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10405009', 'WC045', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10405010', 'WC045', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10405011', 'WC045', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10405012', 'WC045', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10405013', 'WC045', 'ward') on duplicate key update area_code = createCode();


WC047
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10407001', 'WC047', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10407002', 'WC047', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10407003', 'WC047', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10407004', 'WC047', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10407005', 'WC047', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10407006', 'WC047', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10407007', 'WC047', 'ward') on duplicate key update area_code = createCode();


WC048
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10408001', 'WC048', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10408002', 'WC048', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10408003', 'WC048', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10408004', 'WC048', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10408005', 'WC048', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10408006', 'WC048', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10408007', 'WC048', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10408008', 'WC048', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10408009', 'WC048', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10408010', 'WC048', 'ward') on duplicate key update area_code = createCode();


WC051
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10501001', 'WC051', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10501002', 'WC051', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10501003', 'WC051', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10501004', 'WC051', 'ward') on duplicate key update area_code = createCode();


WC052
===

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10502001', 'WC052', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10502002', 'WC052', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10502003', 'WC052', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10502004', 'WC052', 'ward') on duplicate key update area_code = createCode();


WC053
===
	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10503001', 'WC053', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10503002', 'WC053', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10503003', 'WC053', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10503004', 'WC053', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10503005', 'WC053', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10503006', 'WC053', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '10503007', 'WC053', 'ward') on duplicate key update area_code = createCode();