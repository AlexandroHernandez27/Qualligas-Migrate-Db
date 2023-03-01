-- Table: public.tanques

-- DROP TABLE IF EXISTS public.tanques;

CREATE TABLE IF NOT EXISTS public.tanks
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    number character varying(2) COLLATE pg_catalog."default" NOT NULL,
    totalcapacity numeric(12,6) NOT NULL,
    capacidadoperativa numeric(12,6) NOT NULL,
    usefulcapacity numeric(12,6) NOT NULL,
    capacidadfondaje numeric(12,6) NOT NULL,
    volumenminopera numeric(12,6) NOT NULL,
    idproduct character varying(30) COLLATE pg_catalog."default",
    idcmt numeric(2,0),
    cmtcode character varying(2) COLLATE pg_catalog."default" NOT NULL,
    state character varying(1) COLLATE pg_catalog."default" NOT NULL,
    identification_key character varying(30) COLLATE pg_catalog."default",
    desc_identification character varying(250) COLLATE pg_catalog."default",
    gauged_validity_period timestamp without time zone,
    sismed numeric(3,0),
    CONSTRAINT tanks_pk PRIMARY KEY (idowner, idcompany, idstation, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tanks
    OWNER to postgres;