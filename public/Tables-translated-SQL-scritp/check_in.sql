-- Table: public.registro_entrada

-- DROP TABLE IF EXISTS public.registro_entrada;

CREATE TABLE IF NOT EXISTS public.check_in
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    name character varying(15) COLLATE pg_catalog."default" NOT NULL,
    number character varying(2) COLLATE pg_catalog."default" NOT NULL,
    code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    interface_comm numeric(2,0) NOT NULL,
    product character varying(30) COLLATE pg_catalog."default",
    identificationKey character varying(30) COLLATE pg_catalog."default",
    descIdentification character varying(250) COLLATE pg_catalog."default",
    diameterdiametro numeric(6,3),
    sismed numeric(3,0),
    CONSTRAINT check_in_pk PRIMARY KEY (idowner, idcompany, idstation, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.check_in
    OWNER to postgres;