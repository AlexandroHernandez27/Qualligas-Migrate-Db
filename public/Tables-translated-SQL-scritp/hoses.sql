-- Table: public.mangueras

-- DROP TABLE IF EXISTS public.mangueras;

CREATE TABLE IF NOT EXISTS public.hoses
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarga numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    number character varying(2) COLLATE pg_catalog."default" NOT NULL,
    idproduct character varying(30) COLLATE pg_catalog."default",
    tank numeric(2,0),
    reading numeric(16,6),
    reading_date timestamp without time zone,
    key_identification character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT hose_pk PRIMARY KEY (idowner, idcompany, idstation, idisland, iddispensario, idposicioncarga, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.hoses
    OWNER to postgres;