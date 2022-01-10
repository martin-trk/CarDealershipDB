CREATE OR REPLACE VIEW vw_available_cars AS
SELECT COUNT(c.id) available_number_of_cars
      ,ds.name dealership_name
      ,cma.ma_name manufacturer_name
      ,cmo.mo_name model_name
      ,ce.en_name engine_name
  FROM cars c
  JOIN car_models cmo
    ON c.model_id = cmo.mo_id
  JOIN car_manufacturers cma
    ON cmo.manufacturer_id = cma.ma_id
  JOIN car_engines ce
    ON c.engine_id = ce.en_id
  JOIN dealership_sites ds
    ON c.dealership_site_id = ds.site_id
 GROUP BY cmo.mo_name
         ,cma.ma_name
         ,ds.name
         ,ce.en_name
 ORDER BY ds.name;