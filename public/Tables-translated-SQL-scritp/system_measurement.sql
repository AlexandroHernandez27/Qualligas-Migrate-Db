-- Table: public.sistema_medicion

-- DROP TABLE IF EXISTS public.sistema_medicion;

CREATE TABLE IF NOT EXISTS public.system_measuremenet
(
    id numeric(3,0) NOT NULL,
    _key character varying(30) COLLATE pg_catalog."default",
    description character varying(250) COLLATE pg_catalog."default",
    vig_cal timestamp without time zone,
    doubt numeric(5,3),
    CONSTRAINT system_measuremenet_pk PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.system_measuremenet
    OWNER to postgres;