-- Table: quallicfdweb.qg_estacion_param

-- DROP TABLE IF EXISTS quallicfdweb.qg_estacion_param;

CREATE TABLE IF NOT EXISTS quallicfdweb.qg_station_param
(
    station character(6) COLLATE pg_catalog."default" NOT NULL,
    name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    value character varying(200) COLLATE pg_catalog."default",
    CONSTRAINT qg_station_param_pk PRIMARY KEY (station, name)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS quallicfdweb.qg_station_param
    OWNER to postgres;