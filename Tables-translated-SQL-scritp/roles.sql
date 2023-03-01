-- Table: public.roles

-- DROP TABLE IF EXISTS public.roles;

CREATE TABLE IF NOT EXISTS public.roles
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    id numeric(2,0) NOT NULL,
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    module character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT roles_pk PRIMARY KEY (idowner, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.roles
    OWNER to postgres;