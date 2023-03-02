-- Table: public.bitacora

-- DROP TABLE IF EXISTS public.bitacora;

CREATE TABLE IF NOT EXISTS public.logbook
(
    id numeric(10,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    type character varying(2) COLLATE pg_catalog."default" NOT NULL,
    message character varying(4) COLLATE pg_catalog."default" NOT NULL,
    user character varying(15) COLLATE pg_catalog."default",
    data character varying(250) COLLATE pg_catalog."default",
    component character varying(250) COLLATE pg_catalog."default",
    CONSTRAINT logbook_pk PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.logbook
    OWNER to postgres;