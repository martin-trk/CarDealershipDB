CREATE OR REPLACE TRIGGER employees_trg
    BEFORE INSERT OR UPDATE ON employees
    FOR EACH ROW
BEGIN
    IF INSERTING
    THEN
        IF :new.employee_id IS NULL
        THEN
            :new.employee_id := employees_id_seq.nextval;
        END IF;


        :new.created_on := SYSDATE;
        :new.dml_flag := 'I';
        :new.version := 1;

    ELSE
        IF nvl(:new.dml_flag, 'U') <> 'D'
        THEN
            :new.dml_flag := 'U';
        END IF;
        :new.version := :old.version + 1;
    END IF;

    :new.last_mod := SYSDATE;
    :new.mod_user := sys_context('USERNV', 'OS_USER');
END;
/