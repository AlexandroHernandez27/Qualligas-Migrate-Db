-- Table: public.emails

-- DROP TABLE IF EXISTS public.emails;

CREATE TABLE IF NOT EXISTS public.emails
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idaddres numeric(10,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    email character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT emails_pk PRIMARY KEY (idowner, idaddres, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.emails
    OWNER to postgres;