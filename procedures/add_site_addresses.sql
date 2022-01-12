CREATE OR REPLACE PROCEDURE add_site_addresses(p_site_id      NUMBER
                                              ,p_zip_code     NUMBER
                                              ,p_city         VARCHAR2
                                              ,p_street       VARCHAR2
                                              ,p_house_number VARCHAR2) IS
BEGIN
  INSERT INTO site_addresses
    (site_id
    ,zip_code
    ,city
    ,street
    ,house_number)
  VALUES
    (p_site_id
    ,p_zip_code
    ,p_city
    ,p_street
    ,p_house_number);
END;
/