

-- Table: public.turnos

-- DROP TABLE IF EXISTS public.turnos;

CREATE TABLE IF NOT EXISTS public.shifts
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(1,0) NOT NULL,
    name character varying(30) COLLATE pg_catalog."default" NOT NULL,
    starttime timestamp without time zone NOT NULL,
    CONSTRAINT shifts_pk PRIMARY KEY (idowner, idcompany, idstation, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.shifts
    OWNER to postgres;