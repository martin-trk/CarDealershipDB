declare
  cursor cur is
    select 'alter system kill session ''' || sid || ',' || serial# || '''' as command
      from v$session
     where username = 'db_admin';
begin
  for c in cur loop
    EXECUTE IMMEDIATE c.command;
  end loop;
end;
/

DECLARE
  v_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_count FROM dba_users t WHERE t.username='db_admin';
  IF v_count = 1 THEN 
    EXECUTE IMMEDIATE 'DROP USER db_admin CASCADE';
  END IF;
END;
/
CREATE USER db_admin 
  IDENTIFIED BY "12345678" 
  DEFAULT TABLESPACE users
  QUOTA UNLIMITED ON users
;

GRANT CREATE SESSION TO db_admin;
GRANT CREATE TABLE TO db_admin;
GRANT CREATE VIEW TO db_admin;
GRANT CREATE SEQUENCE TO db_admin;
GRANT CREATE PROCEDURE TO db_admin;
GRANT CREATE TYPE TO db_admin;
GRANT CREATE TRIGGER TO db_admin;

ALTER SESSION SET CURRENT_SCHEMA=db_admin;