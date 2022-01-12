CREATE OR REPLACE PROCEDURE add_car_models(p_manufacturer_id      NUMBER
                                          ,p_mo_name              VARCHAR2
                                          ,p_number_of_doors      NUMBER
                                          ,p_number_of_passangers NUMBER
                                          ,p_weight               NUMBER) IS
BEGIN
  INSERT INTO car_models
    (manufacturer_id
    ,mo_name
    ,number_of_doors
    ,number_of_passangers
    ,weight)
  VALUES
    (p_manufacturer_id
    ,p_mo_name
    ,p_number_of_doors
    ,p_number_of_passangers
    ,p_weight);
END;
/