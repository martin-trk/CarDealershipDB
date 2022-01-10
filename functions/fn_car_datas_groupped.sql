CREATE OR REPLACE FUNCTION fn_car_datas_groupped(p_car_model_name NUMBER)
  RETURN ty_car_models_list IS
  v_cars ty_car_models_list;
BEGIN
  SELECT ty_car_models(car_id               => c.id,
                       car_manufacturer     => cma.ma_name,
                       car_model            => cmo.mo_name,
                       car_engine           => ce.en_name,
                       number_of_doors      => cmo.number_of_doors,
                       number_of_passangers => cmo.number_of_passangers)
    BULK COLLECT
    INTO v_cars
    FROM cars c
    JOIN car_models cmo
      ON c.model_id = cmo.mo_id
    JOIN car_manufacturers cma
      ON cmo.manufacturer_id = cma.ma_id
    JOIN car_engines ce
      ON c.engine_id = ce.en_id
   WHERE cmo.mo_name LIKE  '%' || p_car_model_name || '%';

  RETURN v_cars;

  EXCEPTION WHEN others THEN
    pkg_err_log.err_log(p_err_message => dbms_utility.format_error_backtrace,
                        p_err_value   => 'p_car_model_name: ' || p_car_model_name,
                        p_api         => 'fn_car_datas_groupped');
END;
