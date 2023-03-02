-- Table: hr.countries

-- DROP TABLE IF EXISTS hr.countries;

CREATE TABLE IF NOT EXISTS hr.countries
(
    country_id character(2) COLLATE pg_catalog."default" NOT NULL,
    country_name character varying(40) COLLATE pg_catalog."default",
    region_id numeric(38,0),
    CONSTRAINT country_c_id_pk PRIMARY KEY (country_id),
    CONSTRAINT countr_reg_fk FOREIGN KEY (region_id)
        REFERENCES hr.regions (region_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS hr.countries
    OWNER to postgres;