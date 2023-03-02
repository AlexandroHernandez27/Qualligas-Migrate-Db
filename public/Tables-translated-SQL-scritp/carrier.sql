-- Table: public.transportista

-- DROP TABLE IF EXISTS public.transportista;

CREATE TABLE IF NOT EXISTS public.carrier
(
    id numeric(2,0) NOT NULL,
    name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    permission character varying(30) COLLATE pg_catalog."default" NOT NULL,
    deleted character(1) COLLATE pg_catalog."default",
    CONSTRAINT transportista_pk PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.carrier
    OWNER to postgres;