-- Table: public.licenses

-- DROP TABLE IF EXISTS public.licenses;

CREATE TABLE IF NOT EXISTS public.licenses
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    name character varying(30) COLLATE pg_catalog."default" NOT NULL,
    license character varying(175) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT licenses_pk PRIMARY KEY (idowner, idcompany, idstation, name)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.licenses
    OWNER to postgres;