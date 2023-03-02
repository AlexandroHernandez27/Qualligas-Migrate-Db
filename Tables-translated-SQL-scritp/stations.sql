-- Table: public.estaciones

-- DROP TABLE IF EXISTS public.estaciones;

CREATE TABLE IF NOT EXISTS public.stations
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    number character varying(10) COLLATE pg_catalog."default" NOT NULL,
    pemexKey character varying(10) COLLATE pg_catalog."default",
    idaddres numeric(10,0),
    name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    permiso_cre character varying(30) COLLATE pg_catalog."default" NOT NULL,
    permiso_importacion character varying(30) COLLATE pg_catalog."default",
    caracter_regulatorio character varying(30) COLLATE pg_catalog."default",
    clave_instalacion character varying(30) COLLATE pg_catalog."default",
    desc_instalacion character varying(250) COLLATE pg_catalog."default",
    CONSTRAINT stations_pk PRIMARY KEY (idowner, idcompany, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.station
    OWNER to postgres;