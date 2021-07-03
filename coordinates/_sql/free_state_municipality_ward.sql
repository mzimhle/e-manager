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

FREE STATE
=========

insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS161',  'free-state',  'municipality', 'Letsemeng', 'Koffiefontein') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS162',  'free-state',  'municipality', 'Kopanong', 'Trompsburg') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS163',  'free-state',  'municipality', 'Mohokare', 'Zastron') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS164',  'free-state',  'municipality', 'Naledi', 'Dewetsdorp') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS181',  'free-state',  'municipality', 'Masilonyana', 'Theunissen') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS182',  'free-state',  'municipality', 'Tokologo', 'Dealesville') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS183',  'free-state',  'municipality', 'Tswelopele', 'Hoopstad') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS184',  'free-state',  'municipality', 'Matjhabeng', 'Welkom') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS185',  'free-state',  'municipality', 'Nala', 'Bothaville') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS191',  'free-state',  'municipality', 'Setsoto', 'Senekal') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS192',  'free-state',  'municipality', 'Dihlabeng', 'Bethlehem') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS193',  'free-state',  'municipality', 'Nketoana', 'Reitz') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS194',  'free-state',  'municipality', 'Maluti a Phofung', 'Qwa-Qwa') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS195',  'free-state',  'municipality', 'Phumelela', 'Vrede') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS196',  'free-state',  'municipality', 'Mantsopa', 'Ladybrand') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS201',  'free-state',  'municipality', 'Moqhaka', 'Kroonstad') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS203',  'free-state',  'municipality', 'Ngwathe', 'Parys') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS204',  'free-state',  'municipality', 'Metsimaholo', 'Sasolburg') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'FS205',  'free-state',  'municipality', 'Mafube', 'Frankfort') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code, area_name, area_capital) values(createCode(), 'MAN',  'free-state',  'municipality',  'Mangaung Metropolitan Municipality', 'Bloemfontein') on duplicate key update area_code = createCode();

FS161
=====

insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41601001', 'FS161', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41601002', 'FS161', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41601003', 'FS161', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41601004', 'FS161', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41601005', 'FS161', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41601006', 'FS161', 'ward') on duplicate key update area_code = createCode();


FS162
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41602001', 'FS162', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41602002', 'FS162', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41602003', 'FS162', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41602004', 'FS162', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41602005', 'FS162', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41602006', 'FS162', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41602007', 'FS162', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41602008', 'FS162', 'ward') on duplicate key update area_code = createCode();


FS163
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41603001', 'FS163', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41603002', 'FS163', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41603003', 'FS163', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41603004', 'FS163', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41603005', 'FS163', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41603006', 'FS163', 'ward') on duplicate key update area_code = createCode();


FS164
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41604001', 'FS164', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41604002', 'FS164', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41604003', 'FS164', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41604004', 'FS164', 'ward') on duplicate key update area_code = createCode();


FS181
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41801001', 'FS181', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41801002', 'FS181', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41801003', 'FS181', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41801004', 'FS181', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41801005', 'FS181', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41801006', 'FS181', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41801007', 'FS181', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41801008', 'FS181', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41801009', 'FS181', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41801010', 'FS181', 'ward') on duplicate key update area_code = createCode();


FS182
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41802001', 'FS182', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41802002', 'FS182', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41802003', 'FS182', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41802004', 'FS182', 'ward') on duplicate key update area_code = createCode();


FS183
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41803001', 'FS183', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41803002', 'FS183', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41803003', 'FS183', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41803004', 'FS183', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41803005', 'FS183', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41803006', 'FS183', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41803007', 'FS183', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41803008', 'FS183', 'ward') on duplicate key update area_code = createCode();


FS184
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804001', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804002', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804003', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804004', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804005', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804006', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804007', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804008', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804009', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804010', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804011', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804012', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804013', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804014', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804015', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804016', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804017', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804018', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804019', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804020', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804021', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804022', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804023', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804024', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804025', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804026', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804027', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804028', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804029', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804030', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804031', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804032', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804033', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804034', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804035', 'FS184', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41804036', 'FS184', 'ward') on duplicate key update area_code = createCode();


FS185
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41805001', 'FS185', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41805002', 'FS185', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41805003', 'FS185', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41805004', 'FS185', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41805005', 'FS185', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41805006', 'FS185', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41805007', 'FS185', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41805008', 'FS185', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41805009', 'FS185', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41805010', 'FS185', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41805011', 'FS185', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41805012', 'FS185', 'ward') on duplicate key update area_code = createCode();


FS191
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901001', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901002', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901003', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901004', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901005', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901006', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901007', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901008', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901009', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901010', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901011', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901012', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901013', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901014', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901015', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901016', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901017', 'FS191', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41901018', 'FS191', 'ward') on duplicate key update area_code = createCode();


FS192
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902001', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902002', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902003', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902004', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902005', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902006', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902007', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902008', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902009', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902010', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902011', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902012', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902013', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902014', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902015', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902016', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902017', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902018', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902019', 'FS192', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41902020', 'FS192', 'ward') on duplicate key update area_code = createCode();


FS193
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41903001', 'FS193', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41903002', 'FS193', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41903003', 'FS193', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41903004', 'FS193', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41903005', 'FS193', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41903006', 'FS193', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41903007', 'FS193', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41903008', 'FS193', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41903009', 'FS193', 'ward') on duplicate key update area_code = createCode();


FS194
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904001', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904002', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904003', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904004', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904005', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904006', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904007', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904008', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904009', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904010', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904011', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904012', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904013', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904014', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904015', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904016', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904017', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904018', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904019', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904020', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904021', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904022', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904023', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904024', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904025', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904026', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904027', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904028', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904029', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904030', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904031', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904032', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904033', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904034', 'FS194', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41904035', 'FS194', 'ward') on duplicate key update area_code = createCode();


FS195
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41905001', 'FS195', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41905002', 'FS195', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41905003', 'FS195', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41905004', 'FS195', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41905005', 'FS195', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41905006', 'FS195', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41905007', 'FS195', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41905008', 'FS195', 'ward') on duplicate key update area_code = createCode();


FS196
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41906001', 'FS196', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41906002', 'FS196', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41906003', 'FS196', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41906004', 'FS196', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41906005', 'FS196', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41906006', 'FS196', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41906007', 'FS196', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41906008', 'FS196', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '41906009', 'FS196', 'ward') on duplicate key update area_code = createCode();


FS201
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001001', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001002', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001003', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001004', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001005', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001006', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001007', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001008', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001009', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001010', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001011', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001012', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001013', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001014', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001015', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001016', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001017', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001018', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001019', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001020', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001021', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001022', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001023', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001024', 'FS201', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42001025', 'FS201', 'ward') on duplicate key update area_code = createCode();


FS203
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003001', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003002', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003003', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003004', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003005', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003006', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003007', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003008', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003009', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003010', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003011', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003012', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003013', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003014', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003015', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003016', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003017', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003018', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003019', 'FS203', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42003020', 'FS203', 'ward') on duplicate key update area_code = createCode();


FS204
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004001', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004002', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004003', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004004', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004005', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004006', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004007', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004008', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004009', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004010', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004011', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004012', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004013', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004014', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004015', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004016', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004017', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004018', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004019', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004020', 'FS204', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42004021', 'FS204', 'ward') on duplicate key update area_code = createCode();


FS205
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42005001', 'FS205', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42005002', 'FS205', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42005003', 'FS205', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42005004', 'FS205', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42005005', 'FS205', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42005006', 'FS205', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42005007', 'FS205', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42005008', 'FS205', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '42005009', 'FS205', 'ward') on duplicate key update area_code = createCode();


MAN
=====

	
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400001', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400002', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400003', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400004', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400005', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400006', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400007', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400008', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400009', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400010', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400011', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400012', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400013', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400014', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400015', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400016', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400017', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400018', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400019', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400020', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400021', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400022', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400023', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400024', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400025', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400026', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400027', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400028', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400029', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400030', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400031', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400032', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400033', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400034', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400035', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400036', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400037', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400038', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400039', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400040', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400041', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400042', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400043', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400044', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400045', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400046', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400047', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400048', 'MAN', 'ward') on duplicate key update area_code = createCode();
insert into area(area_code, area_id, parent_code, areatype_code) values(createCode(), '49400049', 'MAN', 'ward') on duplicate key update area_code = createCode();

