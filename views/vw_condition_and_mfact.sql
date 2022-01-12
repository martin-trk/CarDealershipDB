CREATE OR REPLACE VIEW vw_condition_and_mfact AS
SELECT COUNT(id) number_of_cars
      ,c.condition
      ,cma.ma_name
  FROM cars c
  JOIN car_models cmo
    ON c.model_id = cmo.mo_id
  JOIN car_manufacturers cma
    ON cmo.manufacturer_id = cma.ma_id
 GROUP BY condition
         ,cma.ma_name
 ORDER BY number_of_cars DESC;