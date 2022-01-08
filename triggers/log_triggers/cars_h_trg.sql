CREATE OR REPLACE TRIGGER cars_h_trg
    AFTER INSERT OR UPDATE OR DELETE ON cars
    FOR EACH ROW
DECLARE
    v_mod_user cars.mod_user%TYPE;
    v_mod_time cars.last_mod%TYPE;
BEGIN
    v_mod_user := sys_context('USERENV', 'OS_USER');
    v_mod_time := SYSDATE;

    IF DELETING
    THEN
        INSERT INTO cars_h
            (id
            ,dealership_site_id
            ,engine_id
            ,model_id
            ,price
            ,kilometers
            ,year_of_manufacture
            ,color
            ,number_of_past_owners
            ,condition
            ,mod_user
            ,created_on
            ,last_mod
            ,dml_flag
            ,version)
        VALUES
            (:old.id
            ,:old.dealership_site_id
            ,:old.engine_id
            ,:old.model_id
            ,:old.price
            ,:old.kilometers
            ,:old.year_of_manufacture
            ,:old.color
            ,:old.number_of_past_owners
            ,:old.condition
            ,v_mod_user
            ,:old.created_on
            ,v_mod_time
            ,'D'
            ,:old.version + 1);
    ELSE
        INSERT INTO cars_h
            (id
            ,dealership_site_id
            ,engine_id
            ,model_id
            ,price
            ,kilometers
            ,year_of_manufacture
            ,color
            ,number_of_past_owners
            ,condition
            ,mod_user
            ,created_on
            ,last_mod
            ,dml_flag
            ,version)
        VALUES
            (:new.id
            ,:new.dealership_site_id
            ,:new.engine_id
            ,:new.model_id
            ,:new.price
            ,:new.kilometers
            ,:new.year_of_manufacture
            ,:new.color
            ,:new.number_of_past_owners
            ,:new.condition
            ,:new.mod_user
            ,:new.created_on
            ,:new.last_mod
            ,:new.dml_flag
            ,:new.version);
    END IF;
END;
/