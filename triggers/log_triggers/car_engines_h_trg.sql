CREATE OR REPLACE TRIGGER car_engines_h_trg
    AFTER INSERT OR UPDATE OR DELETE ON car_engines
    FOR EACH ROW
DECLARE
    v_mod_user car_engines.mod_user%TYPE;
    v_mod_time car_engines.last_mod%TYPE;
BEGIN
    v_mod_user := sys_context('USERENV', 'OS_USER');
    v_mod_time := SYSDATE;

    IF DELETING
    THEN
        INSERT INTO car_engines_h
            (en_id
            ,en_name
            ,engine_displacement
            ,performance
            ,gear
            ,fuel
            ,mod_user
            ,created_on
            ,last_mod
            ,dml_flag
            ,version)
        VALUES
            (:old.en_id
            ,:old.en_name
            ,:old.engine_displacement
            ,:old.performance
            ,:old.gear
            ,:old.fuel
            ,v_mod_user
            ,:old.created_on
            ,v_mod_time
            ,'D'
            ,:old.version + 1);
    ELSE
        INSERT INTO car_engines_h
            (en_id
            ,en_name
            ,engine_displacement
            ,performance
            ,gear
            ,fuel
            ,mod_user
            ,created_on
            ,last_mod
            ,dml_flag
            ,version)
        VALUES
            (:new.en_id
            ,:new.en_name
            ,:new.engine_displacement
            ,:new.performance
            ,:new.gear
            ,:new.fuel
            ,:new.mod_user
            ,:new.created_on
            ,:new.last_mod
            ,:new.dml_flag
            ,:new.version);
    END IF;
END;