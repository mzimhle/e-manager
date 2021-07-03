BEGIN
 
    DECLARE finished INTEGER DEFAULT 0;
    DECLARE code varchar(100) DEFAULT "";
		DECLARE newcode varchar(100) DEFAULT "";
		DECLARE searchcodecode varchar(100) DEFAULT "";
 
    -- declare cursor for employee email
    DEClARE code_cursor CURSOR FOR 
        select polygon_code from polygon group by polygon_code having count(polygon_code) > 1;
 
    -- declare NOT FOUND handler
    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
 
    OPEN code_cursor;
 
    get_code: LOOP
 
        FETCH code_cursor INTO code;
 
        IF finished = 1 THEN 
            LEAVE get_code;
        END IF;
		
				set newcode = createCode();
				
				select polygon_code into searchcodecode from polygon where polygon_code = newcode;

				if(searchcodecode is null) then
					update polygon set polygon_code = newcode where polygon_code = code;
				end if;

    END LOOP get_code;
    CLOSE code_cursor;
 
END;


====================================

begin
        declare areacode char(30);
        set areacode = substring(trim(leading '0' from (trim(leading '.' from (trim(leading '0' from rand()))))), 1, 20);
        return areacode;
    end