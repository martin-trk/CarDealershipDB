CREATE OR REPLACE PROCEDURE del_dealership_sites(p_site_id NUMBER) IS
BEGIN
  UPDATE dealership_sites ds
     SET ds.dml_flag = 'D'
   WHERE ds.site_id = p_site_id;
END;
