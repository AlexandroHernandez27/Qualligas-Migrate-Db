-- Table: public.empresas

-- DROP TABLE IF EXISTS public.empresas;

CREATE TABLE IF NOT EXISTS public.companies
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    id numeric(2,0) NOT NULL,
    rfc character varying(13) COLLATE pg_catalog."default" NOT NULL,
    idaddres numeric(10,0),
    namenombre character varying(100) COLLATE pg_catalog."default" NOT NULL,
    rfc_rep_legal character varying(13) COLLATE pg_catalog."default",
    CONSTRAINT companies_pk PRIMARY KEY (idowner, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.companies
    OWNER to postgres;