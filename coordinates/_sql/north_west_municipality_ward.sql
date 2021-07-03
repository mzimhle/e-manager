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

-- ===========================================================================================================================

insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW371',  'north-west',  'municipality', 'Moretele', 'Temba') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW372',  'north-west',  'municipality', 'Madibeng', 'Brits') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW373',  'north-west',  'municipality', 'Rustenburg', 'Rustenburg') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW374',  'north-west',  'municipality', 'Kgetlengrivier', 'Koster') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW375',  'north-west',  'municipality', 'Moses Kotane', 'Mogwase') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW381',  'north-west',  'municipality', 'Ratlou', 'Setlagole') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW382',  'north-west',  'municipality', 'Tswaing', 'Delareyville') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW383',  'north-west',  'municipality', 'Mafikeng', 'Mafikeng') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW384',  'north-west',  'municipality', 'Ditsobotla', 'Lichtenburg') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW385',  'north-west',  'municipality', 'Ramotshere Moiloa', 'Zeerust') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW392',  'north-west',  'municipality', 'Naledi', 'Vryburg') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW393',  'north-west',  'municipality', 'Mamusa', 'Schweizer-Reneke') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW394',  'north-west',  'municipality', 'Greater Taung', 'Reivilo') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW396',  'north-west',  'municipality', 'Lekwa-Teemane', 'Christiana') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW397',  'north-west',  'municipality', 'NW397 Local Municipality', 'Ganyesa/Pomfret') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW401',  'north-west',  'municipality', 'Ventersdorp', 'Ventersdorp') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW402',  'north-west',  'municipality', 'Potchefstroom', 'Potchefstroom') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW403',  'north-west',  'municipality', 'Matlosana', 'Klerksdorp') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'NW404',  'north-west',  'municipality', 'Maquassi Hills', 'Wolmaransstad') on duplicate key update area_code = createCode();

-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701001', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701002', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701003', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701004', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701005', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701006', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701007', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701008', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701009', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701010', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701011', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701012', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701013', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701014', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701015', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701016', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701017', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701018', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701019', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701020', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701021', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701022', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701023', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701024', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701025', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701026', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701027', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63701028', 'EKUNW371', 'ward') on duplicate key update area_code = createCode();


-- ===========================================================================================================================


	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702001', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702002', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702003', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702004', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702005', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702006', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702007', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702008', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702009', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702010', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702011', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702012', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702013', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702014', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702015', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702016', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702017', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702018', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702019', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702020', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702021', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702022', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702023', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702024', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702025', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702026', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702027', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702028', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702029', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702030', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702031', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702032', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702033', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702034', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702035', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63702036', 'EKUNW372', 'ward') on duplicate key update area_code = createCode();


-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703001', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703002', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703003', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703004', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703005', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703006', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703007', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703008', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703009', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703010', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703011', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703012', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703013', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703014', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703015', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703016', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703017', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703018', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703019', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703020', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703021', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703022', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703023', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703024', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703025', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703026', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703027', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703028', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703029', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703030', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703031', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703032', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703033', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703034', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703035', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703036', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703037', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63703038', 'EKUNW373', 'ward') on duplicate key update area_code = createCode();


-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63704001', 'EKUNW374', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63704002', 'EKUNW374', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63704003', 'EKUNW374', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63704004', 'EKUNW374', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63704005', 'EKUNW374', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63704006', 'EKUNW374', 'ward') on duplicate key update area_code = createCode();


-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705001', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705002', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705003', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705004', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705005', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705006', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705007', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705008', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705009', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705010', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705011', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705012', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705013', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705014', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705015', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705016', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705017', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705018', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705019', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705020', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705021', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705022', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705023', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705024', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705025', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705026', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705027', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705028', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705029', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705030', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63705031', 'EKUNW375', 'ward') on duplicate key update area_code = createCode();


-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63801001', 'EKUNW381', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63801002', 'EKUNW381', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63801003', 'EKUNW381', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63801004', 'EKUNW381', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63801005', 'EKUNW381', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63801006', 'EKUNW381', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63801007', 'EKUNW381', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63801008', 'EKUNW381', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63801009', 'EKUNW381', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63801010', 'EKUNW381', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63801011', 'EKUNW381', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63801012', 'EKUNW381', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63801013', 'EKUNW381', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63801014', 'EKUNW381', 'ward') on duplicate key update area_code = createCode();


-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63802001', 'EKUNW382', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63802002', 'EKUNW382', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63802003', 'EKUNW382', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63802004', 'EKUNW382', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63802005', 'EKUNW382', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63802006', 'EKUNW382', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63802007', 'EKUNW382', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63802008', 'EKUNW382', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63802009', 'EKUNW382', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63802010', 'EKUNW382', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63802011', 'EKUNW382', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63802012', 'EKUNW382', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63802013', 'EKUNW382', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63802014', 'EKUNW382', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63802015', 'EKUNW382', 'ward') on duplicate key update area_code = createCode();


-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803001', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803002', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803003', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803004', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803005', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803006', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803007', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803008', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803009', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803010', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803011', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803012', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803013', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803014', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803015', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803016', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803017', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803018', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803019', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803020', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803021', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803022', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803023', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803024', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803025', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803026', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803027', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803028', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803029', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803030', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63803031', 'EKUNW383', 'ward') on duplicate key update area_code = createCode();


-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804001', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804002', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804003', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804004', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804005', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804006', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804007', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804008', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804009', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804010', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804011', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804012', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804013', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804014', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804015', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804016', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804017', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804018', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804019', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804020', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63804021', 'EKUNW384', 'ward') on duplicate key update area_code = createCode();


-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805001', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805002', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805003', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805004', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805005', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805006', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805007', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805008', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805009', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805010', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805011', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805012', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805013', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805014', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805015', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805016', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805017', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805018', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805019', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63805020', 'EKUNW385', 'ward') on duplicate key update area_code = createCode();


-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63902001', 'EKUNW392', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63902002', 'EKUNW392', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63902003', 'EKUNW392', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63902004', 'EKUNW392', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63902005', 'EKUNW392', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63902006', 'EKUNW392', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63902007', 'EKUNW392', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63902008', 'EKUNW392', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63902009', 'EKUNW392', 'ward') on duplicate key update area_code = createCode();


-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63903001', 'EKUNW393', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63903002', 'EKUNW393', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63903003', 'EKUNW393', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63903004', 'EKUNW393', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63903005', 'EKUNW393', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63903006', 'EKUNW393', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63903007', 'EKUNW393', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63903008', 'EKUNW393', 'ward') on duplicate key update area_code = createCode();


-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904001', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904002', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904003', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904004', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904005', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904006', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904007', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904008', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904009', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904010', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904011', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904012', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904013', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904014', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904015', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904016', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904017', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904018', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904019', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904020', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904021', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904022', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904023', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904024', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904025', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63904026', 'EKUNW394', 'ward') on duplicate key update area_code = createCode();


-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63906001', 'EKUNW396', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63906002', 'EKUNW396', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63906003', 'EKUNW396', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63906004', 'EKUNW396', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63906005', 'EKUNW396', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63906006', 'EKUNW396', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63906007', 'EKUNW396', 'ward') on duplicate key update area_code = createCode();


-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63907001', 'EKUNW397', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63907002', 'EKUNW397', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63907003', 'EKUNW397', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63907004', 'EKUNW397', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63907005', 'EKUNW397', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63907006', 'EKUNW397', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63907007', 'EKUNW397', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63907008', 'EKUNW397', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63907009', 'EKUNW397', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63907010', 'EKUNW397', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63907011', 'EKUNW397', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63907012', 'EKUNW397', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63907013', 'EKUNW397', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63907014', 'EKUNW397', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '63907015', 'EKUNW397', 'ward') on duplicate key update area_code = createCode();


-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64001001', 'EKUNW401', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64001002', 'EKUNW401', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64001003', 'EKUNW401', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64001004', 'EKUNW401', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64001005', 'EKUNW401', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64001006', 'EKUNW401', 'ward') on duplicate key update area_code = createCode();


-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002001', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002002', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002003', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002004', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002005', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002006', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002007', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002008', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002009', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002010', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002011', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002012', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002013', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002014', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002015', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002016', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002017', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002018', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002019', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002020', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002021', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002022', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002023', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002024', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002025', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64002026', 'EKUNW402', 'ward') on duplicate key update area_code = createCode();

-- ===========================================================================================================================

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003001', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003002', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003003', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003004', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003005', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003006', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003007', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003008', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003009', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003010', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003011', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003012', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003013', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003014', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003015', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003016', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003017', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003018', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003019', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003020', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003021', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003022', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003023', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003024', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003025', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003026', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003027', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003028', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003029', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003030', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003031', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003032', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003033', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003034', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64003035', 'EKUNW403', 'ward') on duplicate key update area_code = createCode();

-- ===========================================================================================================================
	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64004001', 'EKUNW404', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64004002', 'EKUNW404', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64004003', 'EKUNW404', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64004004', 'EKUNW404', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64004005', 'EKUNW404', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64004006', 'EKUNW404', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64004007', 'EKUNW404', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64004008', 'EKUNW404', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64004009', 'EKUNW404', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64004010', 'EKUNW404', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '64004011', 'EKUNW404', 'ward') on duplicate key update area_code = createCode();


