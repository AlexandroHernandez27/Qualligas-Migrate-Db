-- Table: public.lecturas

-- DROP TABLE IF EXISTS public.lecturas;

CREATE TABLE IF NOT EXISTS public.readings
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    CONSTRAINT readings_pk PRIMARY KEY (idowner, idcompany, idstation, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.readings
    OWNER to postgres;