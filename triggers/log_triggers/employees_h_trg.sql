CREATE OR REPLACE TRIGGER employees_h_trg
    AFTER INSERT OR UPDATE OR DELETE ON employees
    FOR EACH ROW
DECLARE
    v_mod_user employees.mod_user%TYPE;
    v_mod_time employees.last_mod%TYPE;
BEGIN
    v_mod_user := sys_context('USERENV', 'OS_USER');
    v_mod_time := SYSDATE;

    IF DELETING
    THEN
        INSERT INTO site_addresses_h
            (employee_id
            ,dealership_site_id
            ,department_id
            ,first_name
            ,last_name
            ,birth_date
            ,gender
            ,hire_date
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
            (:old.employee_id
            ,:old.dealership_site_id
            ,:old.department_id
            ,:old.first_name
            ,:old.last_name
            ,:old.birth_date
            ,:old.gender
            ,:old.hire_date
            ,:old.zip_code
            ,:old.city
            ,:old.street
            ,:old.house_number
            ,v_mod_user
            ,:old.created_on
            ,v_last_mod
            ,'D'
            ,:old.version + 1);
    ELSE
        INSERT INTO site_addresses_h
            (
            ,employee_id
            ,dealership_site_id
            ,department_id
            ,first_name
            ,last_name
            ,birth_date
            ,gender
            ,hire_date
            ,city
            ,street
            ,house_number
            ,mod_user
            ,created_on
            ,last_mod
            ,dml_flag
            ,version)
        VALUES
            (:new.employee_id
            ,:new.dealership_site_id
            ,:new.department_id
            ,:new.first_name
            ,:new.last_name
            ,:new.birth_date
            ,:new.gender
            ,:new.hire_date
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