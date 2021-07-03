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

GAUTENG
=========

insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital values(createCode(), 'EKU',  'free-state',  'municipality', 'Ekurhuleni', 'East Rand') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital values(createCode(), 'GT421',  'free-state',  'municipality','Emfuleni', 'Vereeniging') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital values(createCode(), 'GT422',  'free-state',  'municipality','Midvaal', 'Meyerton') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital values(createCode(), 'GT423',  'free-state',  'municipality','Lesedi', 'Heidelberg') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital values(createCode(), 'GT481',  'free-state',  'municipality','Mogale City', 'Krugersdorp') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital values(createCode(), 'GT482',  'free-state',  'municipality','Randfontein', 'Randfontein') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital values(createCode(), 'GT483',  'free-state',  'municipality','Westonaria', 'Westonaria') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital values(createCode(), 'GT484',  'free-state',  'municipality','Merafong City', 'Carletonville') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital values(createCode(), 'JHB',  'free-state',  'municipality', 'City of Johannesburg', 'Johannesburg') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital values(createCode(), 'TSH', 'Tshwane Metro', 'Pretoria') on duplicate key update area_code = createCode();

EKU
=====

insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700001', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700002', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700003', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700004', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700005', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700006', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700007', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700008', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700009', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700010', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700011', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700012', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700013', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700014', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700015', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700016', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700017', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700018', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700019', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700020', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700021', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700022', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700023', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700024', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700025', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700026', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700027', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700028', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700029', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700030', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700031', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700032', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700033', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700034', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700035', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700036', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700037', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700038', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700039', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700040', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700041', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700042', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700043', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700044', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700045', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700046', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700047', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700048', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700049', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700050', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700051', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700052', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700053', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700054', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700055', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700056', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700057', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700058', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700059', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700060', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700061', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700062', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700063', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700064', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700065', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700066', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700067', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700068', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700069', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700070', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700071', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700072', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700073', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700074', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700075', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700076', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700077', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700078', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700079', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700080', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700081', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700082', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700083', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700084', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700085', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700086', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700087', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700088', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700089', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700090', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700091', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700092', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700093', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700094', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700095', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700096', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700097', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700098', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700099', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700100', 'EKU', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79700101', 'EKU', 'ward') on duplicate key update area_code = createCode();


GT421
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201001', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201002', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201003', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201004', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201005', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201006', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201007', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201008', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201009', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201010', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201011', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201012', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201013', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201014', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201015', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201016', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201017', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201018', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201019', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201020', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201021', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201022', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201023', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201024', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201025', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201026', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201027', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201028', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201029', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201030', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201031', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201032', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201033', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201034', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201035', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201036', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201037', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201038', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201039', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201040', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201041', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201042', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201043', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201044', 'GT421', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74201045', 'GT421', 'ward') on duplicate key update area_code = createCode();


GT422
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74202001', 'GT422', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74202002', 'GT422', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74202003', 'GT422', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74202004', 'GT422', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74202005', 'GT422', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74202006', 'GT422', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74202007', 'GT422', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74202008', 'GT422', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74202009', 'GT422', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74202010', 'GT422', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74202011', 'GT422', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74202012', 'GT422', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74202013', 'GT422', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74202014', 'GT422', 'ward') on duplicate key update area_code = createCode();


GT423
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74203001', 'GT423', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74203002', 'GT423', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74203003', 'GT423', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74203004', 'GT423', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74203005', 'GT423', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74203006', 'GT423', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74203007', 'GT423', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74203008', 'GT423', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74203009', 'GT423', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74203010', 'GT423', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74203011', 'GT423', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74203012', 'GT423', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74203013', 'GT423', 'ward') on duplicate key update area_code = createCode();


GT481
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801001', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801002', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801003', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801004', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801005', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801006', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801007', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801008', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801009', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801010', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801011', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801012', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801013', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801014', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801015', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801016', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801017', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801018', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801019', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801020', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801021', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801022', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801023', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801024', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801025', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801026', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801027', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801028', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801029', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801030', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801031', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801032', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801033', 'GT481', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74801034', 'GT481', 'ward') on duplicate key update area_code = createCode();


GT482
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802001', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802002', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802003', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802004', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802005', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802006', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802007', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802008', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802009', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802010', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802011', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802012', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802013', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802014', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802015', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802016', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802017', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802018', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802019', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802020', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802021', 'GT482', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74802022', 'GT482', 'ward') on duplicate key update area_code = createCode();


GT483
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74803001', 'GT483', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74803002', 'GT483', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74803003', 'GT483', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74803004', 'GT483', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74803005', 'GT483', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74803006', 'GT483', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74803007', 'GT483', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74803008', 'GT483', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74803009', 'GT483', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74803010', 'GT483', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74803011', 'GT483', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74803012', 'GT483', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74803013', 'GT483', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74803014', 'GT483', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74803015', 'GT483', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74803016', 'GT483', 'ward') on duplicate key update area_code = createCode();


GT484
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804001', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804002', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804003', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804004', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804005', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804006', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804007', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804008', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804009', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804010', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804011', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804012', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804013', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804014', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804015', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804016', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804017', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804018', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804019', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804020', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804021', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804022', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804023', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804024', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804025', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804026', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804027', 'GT484', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '74804028', 'GT484', 'ward') on duplicate key update area_code = createCode();


JHB
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800001', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800002', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800003', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800004', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800005', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800006', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800007', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800008', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800009', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800010', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800011', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800012', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800013', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800014', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800015', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800016', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800017', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800018', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800019', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800020', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800021', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800022', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800023', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800024', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800025', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800026', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800027', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800028', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800029', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800030', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800031', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800032', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800033', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800034', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800035', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800036', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800037', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800038', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800039', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800040', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800041', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800042', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800043', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800044', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800045', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800046', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800047', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800048', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800049', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800050', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800051', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800052', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800053', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800054', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800055', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800056', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800057', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800058', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800059', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800060', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800061', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800062', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800063', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800064', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800065', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800066', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800067', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800068', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800069', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800070', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800071', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800072', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800073', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800074', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800075', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800076', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800077', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800078', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800079', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800080', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800081', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800082', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800083', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800084', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800085', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800086', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800087', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800088', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800089', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800090', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800091', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800092', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800093', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800094', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800095', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800096', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800097', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800098', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800099', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800100', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800101', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800102', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800103', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800104', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800105', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800106', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800107', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800108', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800109', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800110', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800111', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800112', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800113', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800114', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800115', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800116', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800117', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800118', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800119', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800120', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800121', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800122', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800123', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800124', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800125', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800126', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800127', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800128', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800129', 'JHB', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79800130', 'JHB', 'ward') on duplicate key update area_code = createCode();


TSH
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900001', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900002', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900003', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900004', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900005', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900006', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900007', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900008', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900009', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900010', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900011', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900012', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900013', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900014', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900015', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900016', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900017', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900018', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900019', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900020', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900021', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900022', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900023', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900024', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900025', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900026', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900027', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900028', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900029', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900030', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900031', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900032', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900033', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900034', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900035', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900036', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900037', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900038', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900039', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900040', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900041', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900042', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900043', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900044', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900045', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900046', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900047', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900048', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900049', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900050', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900051', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900052', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900053', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900054', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900055', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900056', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900057', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900058', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900059', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900060', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900061', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900062', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900063', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900064', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900065', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900066', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900067', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900068', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900069', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900070', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900071', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900072', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900073', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900074', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900075', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900076', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900077', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900078', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900079', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900080', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900081', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900082', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900083', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900084', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900085', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900086', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900087', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900088', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900089', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900090', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900091', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900092', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900093', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900094', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900095', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900096', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900097', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900098', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900099', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900100', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900101', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900102', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900103', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900104', 'TSH', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '79900105', 'TSH', 'ward') on duplicate key update area_code = createCode();


