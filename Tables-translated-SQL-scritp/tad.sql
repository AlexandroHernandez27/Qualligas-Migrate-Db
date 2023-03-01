-- Table: public.tad

-- DROP TABLE IF EXISTS public.tad;

CREATE TABLE IF NOT EXISTS public.tad
(
    id character varying(3) COLLATE pg_catalog."default" NOT NULL,
    name character varying(50) COLLATE pg_catalog."default",
    permission character varying(30) COLLATE pg_catalog."default",
    deleted character(1) COLLATE pg_catalog."default",
    CONSTRAINT tad_pk PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tad
    OWNER to postgres;