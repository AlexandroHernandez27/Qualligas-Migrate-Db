-- Table: public.cmts

-- DROP TABLE IF EXISTS public.cmts;

CREATE TABLE IF NOT EXISTS public.cmts
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    brand character varying(30) COLLATE pg_catalog."default" NOT NULL,
    model character varying(30) COLLATE pg_catalog."default" NOT NULL,
    idperiferico numeric(2,0),
    CONSTRAINT cmts_pk PRIMARY KEY (idowner, idcompany, idstation, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cmts
    OWNER to postgres;