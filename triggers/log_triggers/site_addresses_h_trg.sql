CREATE OR REPLACE TRIGGER site_addresses_h_trg
    AFTER INSERT OR UPDATE OR DELETE ON site_addresses
    FOR EACH ROW
DECLARE
    v_mod_user site_addresses.mod_user%TYPE;
    v_mod_time site_addresses.last_mod%TYPE;
BEGIN
    v_mod_user := sys_context('USERENV', 'OS_USER');
    v_mod_time := SYSDATE;

    IF DELETING
    THEN
        INSERT INTO site_addresses_h
            (site_id
            ,zip_code
            ,city
            ,street
            ,house_number
            ,mod_user
            ,created_on
            ,last_mod
            ,dml_flag
            ,version)
        VALUES
            (:old.site_id
            ,:old.zip_code
            ,:old.city
            ,:old.street
            ,:old.house_number
            ,v_mod_user
            ,:old.created_on
            ,v_mod_time
            ,'D'
            ,:old.version + 1);
    ELSE
        INSERT INTO site_addresses_h
            (site_id
            ,zip_code
            ,city
            ,street
            ,house_number
            ,mod_user
            ,created_on
            ,last_mod
            ,dml_flag
            ,version)
        VALUES
            (:new.site_id
            ,:new.zip_code
            ,:new.city
            ,:new.street
            ,:new.house_number
            ,:new.mod_user
            ,:new.created_on
            ,:new.last_mod
            ,:new.dml_flag
            ,:new.version);
    END IF;
END;