-- Table: hr.regions

-- DROP TABLE IF EXISTS hr.regions;

CREATE TABLE IF NOT EXISTS hr.regions
(
    region_id numeric(38,0) NOT NULL,
    region_name character varying(25) COLLATE pg_catalog."default",
    CONSTRAINT reg_id_pk PRIMARY KEY (region_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS hr.regions
    OWNER to postgres;