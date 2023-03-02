-- Table: public.interfases_comunicacion

-- DROP TABLE IF EXISTS public.interfases_comunicacion;

CREATE TABLE IF NOT EXISTS public.communication_interfaces
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    brand character varying(30) COLLATE pg_catalog."default" NOT NULL,
    model character varying(30) COLLATE pg_catalog."default" NOT NULL,
    idperiferico numeric(2,0),
    CONSTRAINT communication_interfaces_pk PRIMARY KEY (idowner, idcompany, idstation, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.communication_interfaces
    OWNER to postgres;