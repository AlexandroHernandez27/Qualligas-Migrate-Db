-- Table: quallicfdweb.qg_estacion

-- DROP TABLE IF EXISTS quallicfdweb.qg_estacion;

CREATE TABLE IF NOT EXISTS quallicfdweb.qg_station
(
    station character(6) COLLATE pg_catalog."default" NOT NULL,
    number character varying(10) COLLATE pg_catalog."default" NOT NULL,
    siickey character varying(10) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT qg_station_pk PRIMARY KEY (station)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS quallicfdweb.qg_station
    OWNER to postgres;