-- Table: quallicfdweb.qg_licencia

-- DROP TABLE IF EXISTS quallicfdweb.qg_licencia;

CREATE TABLE IF NOT EXISTS quallicfdweb.qg_license
(
    station character(6) COLLATE pg_catalog."default" NOT NULL,
    name character varying(30) COLLATE pg_catalog."default" NOT NULL,
    license character varying(175) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT qg_license_pk PRIMARY KEY (station, name)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS quallicfdweb.qg_license
    OWNER to postgres;