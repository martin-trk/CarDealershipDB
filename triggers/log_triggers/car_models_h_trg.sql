CREATE OR REPLACE TRIGGER car_models_h_trg
    AFTER INSERT OR UPDATE OR DELETE ON car_models
    FOR EACH ROW
DECLARE
    v_mod_user car_models_h.mod_user%TYPE;
    v_mod_time car_models_h.last_mod%TYPE;
BEGIN
    v_mod_user := sys_context('USERENV', 'OS_USER');
    v_mod_time := SYSDATE;

    IF DELETING
    THEN
        INSERT INTO car_models_h
            (mo_id
            ,manufacturer_id
            ,mo_name
            ,number_of_doors
            ,number_of_passangers
            ,weight
            ,mod_user
            ,created_on
            ,last_mod
            ,dml_flag
            ,version)
        VALUES
            (:old.mo_id
            ,:old.manufacturer_id
            ,:old.mo_name
            ,:old.number_of_doors
            ,:old.number_of_passangers
            ,:old.weight
            ,v_mod_user
            ,:old.created_on
            ,v_mod_time
            ,'D'
            ,:old.version + 1);
    ELSE
        INSERT INTO car_models_h
            (mo_id
            ,manufacturer_id
            ,mo_name
            ,number_of_doors
            ,number_of_passangers
            ,weight
            ,mod_user
            ,created_on
            ,last_mod
            ,dml_flag
            ,version)
        VALUES
            (:new.mo_id
            ,:new.manufacturer_id
            ,:new.mo_name
            ,:new.number_of_doors
            ,:new.number_of_passangers
            ,:new.weight
            ,:new.mod_user
            ,:new.created_on
            ,:new.last_mod
            ,:new.dml_flag
            ,:new.version);
    END IF;
END;
/