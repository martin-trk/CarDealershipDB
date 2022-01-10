CREATE OR REPLACE PROCEDURE add_car_manufacturers(p_ma_name VARCHAR2) IS
BEGIN
  INSERT INTO car_manufacturers (ma_name) VALUES (p_ma_name);
END;