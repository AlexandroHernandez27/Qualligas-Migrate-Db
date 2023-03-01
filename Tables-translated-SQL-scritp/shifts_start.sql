-- Table: public.turnos_inicio

-- DROP TABLE IF EXISTS public.turnos_inicio;

CREATE TABLE IF NOT EXISTS public.shifts_start
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    idshift numeric(1,0) NOT NULL,
    startdate timestamp without time zone NOT NULL,
    endstate timestamp without time zone,
    idlecture numeric(10,0),
    CONSTRAINT shifts_start_pk PRIMARY KEY (idowner, idcompany, idstation, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.shifts_start
    OWNER to postgres;