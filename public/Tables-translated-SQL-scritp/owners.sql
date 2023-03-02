-- Table: public.owners

-- DROP TABLE IF EXISTS public.owners;

CREATE TABLE IF NOT EXISTS public.owners
(
    id character varying(4) COLLATE pg_catalog."default" NOT NULL,
    nombre character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT owners_pk PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.owners
    OWNER to postgres;