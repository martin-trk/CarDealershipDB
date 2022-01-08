CREATE OR REPLACE TRIGGER departments_h_trg
    AFTER INSERT OR UPDATE OR DELETE ON departments
    FOR EACH ROW
DECLARE
    v_mod_user departments_h.mod_user%TYPE;
    v_mod_time departments_h.last_mod%TYPE;
BEGIN
    v_mod_user := sys_context('USERENV', 'OS_USER');
    v_mod_time := SYSDATE;

    IF DELETING
    THEN
        INSERT INTO departments_h
            (department_id
            ,name
            ,salary_min
            ,salary_max
            ,shift_starts_hour
            ,shift_ends_hour
            ,mod_user
            ,created_on
            ,last_mod
            ,dml_flag
            ,version)
        VALUES
            (:old.department_id
            ,:old.name
            ,:old.salary_min
            ,:old.salary_max
            ,:old.shift_starts_hour
            ,:old.shift_ends_hour
            ,v_mod_user
            ,:old.created_on
            ,v_mod_time
            ,'D'
            ,:old.version + 1);
    ELSE
        INSERT INTO departments_h
            (department_id
            ,name
            ,salary_min
            ,salary_max
            ,shift_starts_hour
            ,shift_ends_hour
            ,mod_user
            ,created_on
            ,last_mod
            ,dml_flag
            ,version)
        VALUES
            (:new.department_id
            ,:new.name
            ,:new.salary_min
            ,:new.salary_max
            ,:new.shift_starts_hour
            ,:new.shift_ends_hour
            ,:new.mod_user
            ,:new.created_on
            ,:new.last_mod
            ,:new.dml_flag
            ,:new.version);
    END IF;
END;
/