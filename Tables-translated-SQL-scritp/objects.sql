-- Table: public.objetos

-- DROP TABLE IF EXISTS public.objetos;

CREATE TABLE IF NOT EXISTS public.objects
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT objects_pk PRIMARY KEY (idowner, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.objects 
    OWNER to postgres;