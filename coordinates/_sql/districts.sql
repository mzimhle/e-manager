insert into demarcationtype values(1001, 1, 'Country');
insert into demarcationtype values(1002, 2, 'Province');
insert into demarcationtype values(1003, 3, 'District');
insert into demarcationtype values(1004, 3, 'District Municipality');
insert into demarcationtype values(1005, 4, 'Municipality');
insert into demarcationtype values(1006, 5, 'Ward');

update demarcation set demarcationtype_code = 1004 where demarcation_id = 'BUF';
update demarcation set demarcationtype_code = 1004 where demarcation_id = 'CPT';
update demarcation set demarcationtype_code = 1004 where demarcation_id = 'JHB';
update demarcation set demarcationtype_code = 1004 where demarcation_id = 'TSH';
update demarcation set demarcationtype_code = 1004 where demarcation_id = 'EKU';
update demarcation set demarcationtype_code = 1004 where demarcation_id = 'ETH';
update demarcation set demarcationtype_code = 1004 where demarcation_id = 'MAN';
update demarcation set demarcationtype_code = 1004 where demarcation_id = 'NMA';

insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'West Coast District', 
'DC1', 
'PROV09', 
'Moorreesburg', 
'31,104', 
'391,766', 
'12.6' 
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Cape Winelands District', 
'DC2', 
'PROV09', 
'Worcester', 
'22,309', 
'787,490', 
'35.3'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Overberg District', 
'DC3', 
'PROV09', 
'Bredasdorp', 
'11,405', 
'258,176', 
'22.6'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Eden District', 
'DC4', 
'PROV09', 
'George', 
'23,331', 
'574,265', 
'24.6'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Central Karoo District', 
'DC5', 
'PROV09', 
'Beaufort West', 
'38,854', 
'71,011', 
'1.8'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Namakwa District', 
'DC6', 
'PROV06', 
'Springbok', 
'126,836', 
'115,842', 
'0.9'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Pixley ka Seme District', 
'DC7', 
'PROV06', 
'De Aar', 
'102,727', 
'186,351', 
'1.8'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Siyanda District', 
'DC8', 
'PROV06', 
'Upington', 
'102,524', 
'236,783', 
'2.3'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Frances Baard District', 
'DC9', 
'PROV06', 
'Kimberley', 
'13,518', 
'382,086', 
'28.3'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Cacadu District', 
'DC10', 
'PROV01', 
'Port Elizabeth', 
'58,194', 
'450,584', 
'7.7', 
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Amathole District', 
'DC12', 
'PROV01', 
'East London', 
'21,043', 
'892,637', 
'42.4', 
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Chris Hani District', 
'DC13', 
'PROV01', 
'Queenstown', 
'36,695', 
'795,461', 
'21.7'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Joe Gqabi District', 
'DC14', 
'PROV01', 
'Barkly East', 
'25,663', 
'349,768', 
'13.6'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'OR Tambo District', 
'DC15', 
'PROV01', 
'Mthatha', 
'15,968', 
'1,364,943', 
'85.5', 
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Xhariep District', 
'DC16', 
'Free State', 
'Trompsburg', 
'37,674', 
'146,259', 
'3.9'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Lejweleputswa District', 
'DC18', 
'PROV02', 
'Welkom', 
'31,930', 
'627,626', 
'19.7'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Thabo Mofutsanyana District', 
'DC19', 
'PROV02', 
'Phuthaditjhaba', 
'32,637', 
'736,238', 
'22.6'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Fezile Dabi District', 
'DC20', 
'PROV02', 
'Sasolburg', 
'21,301', 
'488,036', 
'22.9', 
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Ugu District', 
'DC21', 
'PROV04', 
'Port Shepstone', 
'5,047', 
'722,484', 
'143.2'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'uMgungundlovu District', 
'DC22', 
'PROV04', 
'Pietermaritzburg', 
'8,934', 
'1,017,763', 
'113.9'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'uThukela District', 
'DC23', 
'PROV04', 
'Ladysmith', 
'11,326', 
'668,848', 
'59.1'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'uMzinyathi District', 
'DC24', 
'PROV04', 
'Dundee', 
'8,589', 
'510,838', 
'59.5' 
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Amajuba District', 
'DC25', 
'PROV04', 
'Newcastle', 
'6,911', 
'499,839', 
'72.3' 
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
 
'Zululand District', 
'DC26', 
'PROV04', 
'Ulundi', 
'14,799', 
'803,575', 
'54.3'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'uMkhanyakude District', 
'DC27', 
'PROV04', 
'Mkuze', 
'12,821', 
'625,846', 
'48.8'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'uThungulu District', 
'DC28', 
'PROV04', 
'Richards Bay', 
'8,213', 
'907,519', 
'110.5'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'iLembe District', 
'DC29', 
'PROV04', 
'KwaDukuza', 
'3,269', 
'606,809', 
'185.6'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Gert Sibande District', 
'DC30', 
'PROV05', 
'Ermelo', 
'31,841', 
'1,043,194', 
'32.8'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Nkangala District', 
'DC31', 
'PROV05', 
'Middelburg', 
'16,758', 
'1,308,129', 
'78.1'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Ehlanzeni District', 
'DC32', 
'PROV05',
'Nelspruit', 
'27,896', 
'1,688,615', 
'60.5'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Mopani District', 
'DC33', 
'PROV07',
'Giyani', 
'24,489', 
'1,092,507', 
'44.6'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Vhembe District', 
'DC34', 
'PROV07', 
'Thohoyandou', 
'21,349', 
'1,294,722', 
'60.6'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Capricorn District', 
'DC35', 
'PROV07', 
'Polokwane', 
'16,988', 
'1,261,463', 
'74.3'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Waterberg District', 
'DC36', 
'PROV07', 
'Modimolle', 
'49,504', 
'679,336', 
'13.7'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Bojanala Platinum District', 
'DC37', 
'PROV08', 
'Rustenburg', 
'18,333', 
'1,507,505', 
'82.2'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Ngaka Modiri Molema District', 
'DC38', 
'PROV08', 
'Mafikeng', 
'27,889', 
'842,699', 
'30.2'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Dr Ruth Segomotsi Mompati District', 
'DC39', 
'PROV08', 
'Vryburg', 
'44,017', 
'463,815', 
'10.5'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values( 
'Dr Kenneth Kaunda District', 
'DC40', 
'PROV08', 
'Klerksdorp', 
'14,642', 
'695,933', 
'47.5'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Sedibeng District', 
'DC42', 
'PROV03', 
'Vereeniging', 
'4,177', 
'916,484', 
'219.4'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Sisonke District', 
'DC43', 
'PROV04', 
'Ixopo', 
'11,127', 
'461,419', 
'41.5'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Alfred Nzo District', 
'DC44', 
'PROV01', 
'Mount Ayliff', 
'6,859', 
'801,344', 
'116.8'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'John Taolo Gaetsewe District', 
'DC45', 
'PROV06', 
'Kuruman', 
'27,283', 
'224,799', 
'8.2'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Sekhukhune District', 
'DC47', 
'PROV07', 
'Groblersdal', 
'13,426', 
'1,076,840', 
'80.2'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'West Rand District', 
'DC48', 
'PROV03', 
'Randfontein', 
'4,087', 
'820,995', 
'200.9'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Buffalo City Metropolitan', 
'BUF', 
'PROV01', 
'East London', 
'2,536', 
'755,200', 
'297.8'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'City of Cape Town Metropolitan', 
'CPT', 
'PROV09', 
'Cape Town', 
'2,460', 
'3,740,026', 
'1,520.3'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Ekurhuleni Metropolitan', 
'EKU', 
'PROV03', 
'Germiston', 
'1,924', 
'3,178,470', 
'1,652.0'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'eThekwini Metropolitan', 
'ETH', 
'PROV04', 
'Durban', 
'2,292', 
'3,442,361', 
'1,501.9'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'City of Johannesburg Metropolitan', 
'JHB', 
'PROV03', 
'Johannesburg', 
'1,645', 
'4,434,827', 
'2,695.9'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Mangaung Metropolitan', 
'MAN', 
'PROV02', 
'Bloemfontein', 
'6,284', 
'747,431', 
'118.9'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'Nelson Mandela Bay Metropolitan', 
'NMA', 
'PROV01', 
'Port Elizabeth', 
'1,959', 
'1,152,115', 
'588.1'
);
insert into demarcation(demarcation_name, demarcation_id, demarcation_parent, demarcation_capital, demarcation_area, demarcation_population, demarcation_density) values(
'City of Tshwane Metropolitan', 
'TSH', 
'PROV03', 
'Pretoria', 
'6,345', 
'2,921,488', 
'460.4'
);