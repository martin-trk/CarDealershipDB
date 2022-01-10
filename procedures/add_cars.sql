CREATE OR REPLACE PROCEDURE add_cars(p_dealership_site_id NUMBER
                                          ,p_engine_id NUMBER
                                          ,p_model_id NUMBER
                                          ,p_price NUMBER
                                          ,p_kilometers NUMBER
                                          ,p_year_of_manufacture VARCHAR2
                                          ,p_color VARCHAR2
                                          ,p_number_of_past_owners NUMBER
                                          ,p_condition VARCHAR2) IS
BEGIN
  INSERT INTO cars
    (dealership_site_id
    ,engine_id
    ,model_id
    ,price
    ,kilometers
    ,year_of_manufacture
    ,color
    ,number_of_past_owners
    ,condition)
  VALUES
    (p_dealership_site_id
    ,p_engine_id
    ,p_model_id
    ,p_price
    ,p_kilometers
    ,p_year_of_manufacture
    ,p_color
    ,p_number_of_past_owners
    ,p_condition);
END;
