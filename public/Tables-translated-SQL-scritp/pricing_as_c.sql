-- Table: public.pricing_as_c

-- DROP TABLE IF EXISTS public.pricing_as_c;

CREATE TABLE IF NOT EXISTS public.pricing_as_c
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idas character varying(4) COLLATE pg_catalog."default" NOT NULL,
    id numeric(4,0) NOT NULL,
    idcond character varying(5) COLLATE pg_catalog."default" NOT NULL,
    column1 character varying(30) COLLATE pg_catalog."default" NOT NULL,
    column2 character varying(30) COLLATE pg_catalog."default",
    column3 character varying(30) COLLATE pg_catalog."default",
    column4 character varying(30) COLLATE pg_catalog."default",
    column5 character varying(30) COLLATE pg_catalog."default",
    column6 character varying(30) COLLATE pg_catalog."default",
    column7 character varying(30) COLLATE pg_catalog."default",
    column8 character varying(30) COLLATE pg_catalog."default",
    column9 character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT pricing_as_c_pk PRIMARY KEY (idowner, idas, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pricing_as_c
    OWNER to postgres;