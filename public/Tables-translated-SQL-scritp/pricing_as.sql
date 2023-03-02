-- Table: public.pricing_as

-- DROP TABLE IF EXISTS public.pricing_as;

CREATE TABLE IF NOT EXISTS public.pricing_as
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    id character varying(4) COLLATE pg_catalog."default" NOT NULL,
    descripcion character varying(100) COLLATE pg_catalog."default" NOT NULL,
    column1 character varying(30) COLLATE pg_catalog."default" NOT NULL,
    column1d character varying(30) COLLATE pg_catalog."default" NOT NULL,
    column1p numeric(4,0),
    column2 character varying(30) COLLATE pg_catalog."default",
    column2d character varying(30) COLLATE pg_catalog."default",
    column2p numeric(4,0),
    column3 character varying(30) COLLATE pg_catalog."default",
    column3d character varying(30) COLLATE pg_catalog."default",
    column3p numeric(4,0),
    column4 character varying(30) COLLATE pg_catalog."default",
    column4d character varying(30) COLLATE pg_catalog."default",
    column4p numeric(4,0),
    column5 character varying(30) COLLATE pg_catalog."default",
    column5d character varying(30) COLLATE pg_catalog."default",
    column5p numeric(4,0),
    column6 character varying(30) COLLATE pg_catalog."default",
    column6d character varying(30) COLLATE pg_catalog."default",
    column6p numeric(4,0),
    column7 character varying(30) COLLATE pg_catalog."default",
    column7d character varying(30) COLLATE pg_catalog."default",
    column7p numeric(4,0),
    column8 character varying(30) COLLATE pg_catalog."default",
    column8d character varying(30) COLLATE pg_catalog."default",
    column8p numeric(4,0),
    column9 character varying(30) COLLATE pg_catalog."default",
    column9d character varying(30) COLLATE pg_catalog."default",
    column9p numeric(4,0),
    CONSTRAINT pricing_as_pk PRIMARY KEY (idowner, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pricing_as
    OWNER to postgres;