-- Table: public.estaciones_params

-- DROP TABLE IF EXISTS public.estaciones_params;

CREATE TABLE IF NOT EXISTS public.station_params
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    value character varying(200) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT station_params_pk PRIMARY KEY (idowner, idcompany, idstation, name)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.station_params
    OWNER to postgres;