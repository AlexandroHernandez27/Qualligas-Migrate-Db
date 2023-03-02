-- Table: public.roles_estaciones

-- DROP TABLE IF EXISTS public.roles_estaciones;

CREATE TABLE IF NOT EXISTS public.roles_stations
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    user character varying(15) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT roles_stations_pk PRIMARY KEY (idowner, idcompany, idstation, user)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.roles_stations
    OWNER to postgres;