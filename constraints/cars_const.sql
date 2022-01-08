ALTER TABLE cars
ADD CONSTRAINT cars_pk PRIMARY KEY (id);
ALTER TABLE cars
ADD CONSTRAINT cars_fk0 FOREIGN KEY (dealership_site_id) REFERENCES dealership_sites(site_id);
ALTER TABLE cars
ADD CONSTRAINT cars_fk1 FOREIGN KEY (model_id) REFERENCES car_models(mo_id);
ALTER TABLE cars
ADD CONSTRAINT cars_fk2 FOREIGN KEY (engine_id) REFERENCES car_engines(en_id);