-- South Africa
insert into demarcation(demarcation_id, demarcation_parent, demarcationtype_code, demarcation_name, demarcation_capital, demarcation_shortname) values('RSA', 'africa', 'country', 'Republic of South Africa', 'Pretoria', 'South Africa');

-- provinces
insert into demarcation(demarcation_id, demarcation_parent, demarcationtype_code, demarcation_name, demarcation_capital, demarcation_shortname) values('PROV01', 'RSA', 'province', 'Eastern Cape Province', 'Bhisho', 'Eastern Cape');
insert into demarcation(demarcation_id, demarcation_parent, demarcationtype_code, demarcation_name, demarcation_capital, demarcation_shortname) values('PROV02', 'RSA', 'province', 'Free State Province', 'Bloemfontein', 'Free State');
insert into demarcation(demarcation_id, demarcation_parent, demarcationtype_code, demarcation_name, demarcation_capital, demarcation_shortname) values('PROV03', 'RSA', 'province', 'Gauteng Province', 'Johannesburg', 'Gauteng');
insert into demarcation(demarcation_id, demarcation_parent, demarcationtype_code, demarcation_name, demarcation_capital, demarcation_shortname) values('PROV04', 'RSA', 'province', 'KwaZulu-Natal Province', 'Pietermaritzburg', 'KwaZulu-Natal');
insert into demarcation(demarcation_id, demarcation_parent, demarcationtype_code, demarcation_name, demarcation_capital, demarcation_shortname) values('PROV07', 'RSA', 'province', 'Limpopo Province', 'Polokwane', 'Limpopo');
insert into demarcation(demarcation_id, demarcation_parent, demarcationtype_code, demarcation_name, demarcation_capital, demarcation_shortname) values('PROV05', 'RSA', 'province', 'Mpumalanga Province', 'Nelspruit', 'Mpumalanga');
insert into demarcation(demarcation_id, demarcation_parent, demarcationtype_code, demarcation_name, demarcation_capital, demarcation_shortname) values('PROV08', 'RSA', 'province', 'North West Province', 'Mafikeng', 'North West');
insert into demarcation(demarcation_id, demarcation_parent, demarcationtype_code, demarcation_name, demarcation_capital, demarcation_shortname) values('PROV06', 'RSA', 'province', 'Northern Cape Province', 'Kimberley', 'Northern Cape');
insert into demarcation(demarcation_id, demarcation_parent, demarcationtype_code, demarcation_name, demarcation_capital, demarcation_shortname) values('PROV09', 'RSA', 'province', 'Western Cape Province', 'Cape Town', 'Western Cape');

-- Polygon
update demarcation set polygon_id = 1 where demarcation_id = 'PROV01' and demarcationtype_code = 'province';
update demarcation set polygon_id = 2 where demarcation_id = 'PROV02' and demarcationtype_code = 'province';
update demarcation set polygon_id = 3 where demarcation_id = 'PROV03' and demarcationtype_code = 'province';
update demarcation set polygon_id = 4 where demarcation_id = 'PROV04' and demarcationtype_code = 'province';
update demarcation set polygon_id = 5 where demarcation_id = 'PROV07' and demarcationtype_code = 'province';
update demarcation set polygon_id = 6 where demarcation_id = 'PROV05' and demarcationtype_code = 'province';
update demarcation set polygon_id = 7 where demarcation_id = 'PROV08' and demarcationtype_code = 'province';
update demarcation set polygon_id = 8 where demarcation_id = 'PROV06' and demarcationtype_code = 'province';
update demarcation set polygon_id = 9 where demarcation_id = 'PROV09' and demarcationtype_code = 'province';

-- Ward Names
select demarcation_id, demarcation_name, demarcation_shortname from demarcation where demarcationtype_code = 'ward';
update demarcation set demarcation_name = concat('Ward ', trim(leading '0' from substr(demarcation_id, 5))), demarcation_shortname = trim(leading '0' from substr(demarcation_id, 5)) where demarcationtype_code = 'ward';

-- create unique IDs for the demarcation_code
set @i=0;
set @Count=(SELECT COUNT(*) from demarcation);
UPDATE demarcation SET demarcation_code = @Count-(@i:=@i+1)+1;

-- local municipality website: 

-- http://www.salga.org.za/pages/Municipalities/Contact-Details/Eastern-Cape

DROP TABLE IF EXISTS `test`.`demarcation`;
CREATE TABLE  `test`.`demarcation` (
  `demarcation_code` int(10) unsigned DEFAULT NULL,
  `polygon_id` int(20) DEFAULT NULL,
  `people_code` varchar(100) DEFAULT NULL COMMENT 'president, exectutive major, premier, etc.',
  `demarcationtype_code` varchar(20) DEFAULT NULL COMMENT 'ward, municipality, province, country',
  `demarcation_parent` varchar(45) DEFAULT NULL,
  `demarcation_id` varchar(45) DEFAULT NULL,
  `demarcation_name` varchar(100) DEFAULT NULL,
  `demarcation_capital` varchar(100) DEFAULT NULL,
  `demarcation_shortname` varchar(100) DEFAULT NULL,
  `demarcation_website` varchar(80) DEFAULT NULL,
  `demarcation_telephone` varchar(20) DEFAULT NULL,
  `demarcation_cell` varchar(20) DEFAULT NULL,
  `demarcation_email` varchar(50) DEFAULT NULL,
  `demarcation_fax` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;