ALTER TABLE car_models
ADD CONSTRAINT car_models_pk PRIMARY KEY (mo_id);
ALTER TABLE car_models
ADD CONSTRAINT car_models_fk FOREIGN KEY (manufacturer_id) REFERENCES car_manufacturers(ma_id);