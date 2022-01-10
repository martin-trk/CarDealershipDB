CREATE OR REPLACE PROCEDURE del_site_addresses(p_site_id NUMBER) IS
BEGIN
  UPDATE site_addresses sd
     SET sd.dml_flag = 'D'
   WHERE sd.site_id = p_site_id;
END;
