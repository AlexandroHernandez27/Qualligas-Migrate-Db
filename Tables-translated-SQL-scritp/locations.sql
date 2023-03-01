-- Table: public.ubicaciones

-- DROP TABLE IF EXISTS public.ubicaciones;

CREATE TABLE IF NOT EXISTS public.locations
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    position numeric(2,0),
    CONSTRAINT locations_pk PRIMARY KEY (idowner, idcompany, idstation, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.locations
    OWNER to postgres;