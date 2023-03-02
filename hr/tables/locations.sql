-- Table: hr.locations

-- DROP TABLE IF EXISTS hr.locations;

CREATE TABLE IF NOT EXISTS hr.locations
(
    location_id numeric(4,0) NOT NULL,
    street_address character varying(40) COLLATE pg_catalog."default",
    postal_code character varying(12) COLLATE pg_catalog."default",
    city character varying(30) COLLATE pg_catalog."default" NOT NULL,
    state_province character varying(25) COLLATE pg_catalog."default",
    country_id character(2) COLLATE pg_catalog."default",
    CONSTRAINT loc_id_pk PRIMARY KEY (location_id),
    CONSTRAINT loc_c_id_fk FOREIGN KEY (country_id)
        REFERENCES hr.countries (country_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS hr.locations
    OWNER to postgres;
-- Index: loc_city_ix

-- DROP INDEX IF EXISTS hr.loc_city_ix;

CREATE INDEX IF NOT EXISTS loc_city_ix
    ON hr.locations USING btree
    (city COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: loc_country_ix

-- DROP INDEX IF EXISTS hr.loc_country_ix;

CREATE INDEX IF NOT EXISTS loc_country_ix
    ON hr.locations USING btree
    (country_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: loc_state_province_ix

-- DROP INDEX IF EXISTS hr.loc_state_province_ix;

CREATE INDEX IF NOT EXISTS loc_state_province_ix
    ON hr.locations USING btree
    (state_province COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;