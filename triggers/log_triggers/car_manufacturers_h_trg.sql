CREATE OR REPLACE TRIGGER car_manufacturers_h_trg
    AFTER INSERT OR UPDATE OR DELETE ON car_manufacturers
    FOR EACH ROW
DECLARE
    v_mod_user car_manufacturers_h.mod_user%TYPE;
    v_mod_time car_manufacturers_h.last_mod%TYPE;
BEGIN
    v_mod_user := sys_context('USERENV', 'OS_USER');
    v_mod_time := SYSDATE;

    IF DELETING
    THEN
        INSERT INTO car_manufacturers_h
            (ma_id
            ,ma_name
            ,mod_user
            ,created_on
            ,last_mod
            ,dml_flag
            ,version)
        VALUES
            (:old.ma_id
            ,:old.ma_name
            ,v_mod_user
            ,:old.created_on
            ,v_mod_time
            ,'D'
            ,:old.version + 1);
    ELSE
        INSERT INTO car_manufacturers_h
            (ma_id
            ,ma_name
            ,mod_user
            ,created_on
            ,last_mod
            ,dml_flag
            ,version)
        VALUES
            (:new.ma_id
            ,:new.ma_name
            ,:new.mod_user
            ,:new.created_on
            ,:new.last_mod
            ,:new.dml_flag
            ,:new.version);
    END IF;
END;
/