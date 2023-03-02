-- Table: public.versiones

-- DROP TABLE IF EXISTS public.versiones;

CREATE TABLE IF NOT EXISTS public.versions
(
    file character varying(50) COLLATE pg_catalog."default" NOT NULL,
    ver character varying(30) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT versions_pk PRIMARY KEY (file)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.versions
    OWNER to postgres;