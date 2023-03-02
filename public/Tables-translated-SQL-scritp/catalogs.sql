-- Table: public.catalogos

-- DROP TABLE IF EXISTS public.catalogos;

CREATE TABLE IF NOT EXISTS public.catalogs
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    catalog character varying(15) COLLATE pg_catalog."default" NOT NULL,
    catalogaccess character varying(15) COLLATE pg_catalog."default" NOT NULL,
    access character varying(30) COLLATE pg_catalog."default" NOT NULL,
    code character varying(10) COLLATE pg_catalog."default" NOT NULL,
    text character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT catalogs_pk PRIMARY KEY (idowner, catalog, catalogaccess, acces, code)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.catalogs
    OWNER to postgres;