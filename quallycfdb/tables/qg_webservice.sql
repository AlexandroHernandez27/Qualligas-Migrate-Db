-- Table: quallicfdweb.qg_webservice

-- DROP TABLE IF EXISTS quallicfdweb.qg_webservice;

CREATE TABLE IF NOT EXISTS quallicfdweb.qg_webservice
(
    station character(6) COLLATE pg_catalog."default" NOT NULL,
    api_key character(20) COLLATE pg_catalog."default" NOT NULL,
    api_secret character(40) COLLATE pg_catalog."default" NOT NULL,
    sucursal character(7) COLLATE pg_catalog."default" NOT NULL,
    suc_key character(20) COLLATE pg_catalog."default" NOT NULL,
    suc_secret character(40) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT qg_webservice_pk PRIMARY KEY (station)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS quallicfdweb.qg_webservice
    OWNER to postgres;