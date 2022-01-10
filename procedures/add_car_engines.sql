CREATE OR REPLACE PROCEDURE add_car_engines(p_en_name VARCHAR2
                                           ,p_engine_displacement NUMBER
                                           ,p_performance NUMBER
                                           ,p_gear NUMBER
                                           ,p_fuel VARCHAR2) IS
BEGIN
  INSERT INTO car_engines
    (en_name
    ,engine_displacement
    ,performance
    ,gear
    ,fuel)
  VALUES
    (p_en_name
    ,p_engine_displacement
    ,p_performance
    ,p_gear
    ,p_fuel);
END;
