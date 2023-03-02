-- Table: public.cv_archivo

-- DROP TABLE IF EXISTS public.cv_archivo;

CREATE TABLE IF NOT EXISTS public.cv_file
(
    name character varying(60) COLLATE pg_catalog."default" NOT NULL,
    md5 character varying(32) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT cv_file_pk PRIMARY KEY (name)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cv_archivo
    OWNER to postgres;