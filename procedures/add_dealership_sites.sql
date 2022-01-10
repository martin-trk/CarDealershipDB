CREATE OR REPLACE PROCEDURE add_dealership_sites(p_name VARCHAR2) IS
BEGIN
  INSERT INTO dealership_sites (name) VALUES (p_name);
END;
/