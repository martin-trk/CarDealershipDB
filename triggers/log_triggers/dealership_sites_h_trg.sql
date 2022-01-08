CREATE OR REPLACE TRIGGER dealership_sites_h_trg
    AFTER INSERT OR UPDATE OR DELETE ON dealership_sites
    FOR EACH ROW
DECLARE
    v_mod_user dealership_sites_h.mod_user%TYPE;
    v_mod_time dealership_sites_h.last_mod%TYPE;
BEGIN
    v_mod_user := sys_context('USERENV', 'OS_USER');
    v_mod_time := SYSDATE;

    IF DELETING
    THEN
        INSERT INTO dealership_sites_h
            (site_id
            ,name
            ,mod_user
            ,created_on
            ,last_mod
            ,dml_flag
            ,version)
        VALUES
            (:old.site_id
            ,:old.name
            ,v_mod_user
            ,:old.created_on
            ,v_mod_time
            ,'D'
            ,:old.version + 1);
    ELSE
        INSERT INTO dealership_sites_h
            (site_id
            ,name
            ,mod_user
            ,created_on
            ,last_mod
            ,dml_flag
            ,version)
        VALUES
            (:new.site_id
            ,:new.name
            ,:new.mod_user
            ,:new.created_on
            ,:new.last_mod
            ,:new.dml_flag
            ,:new.version);
    END IF;
END;