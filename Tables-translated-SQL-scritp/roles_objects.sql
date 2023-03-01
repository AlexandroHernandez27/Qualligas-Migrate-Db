-- Table: public.roles_objetos

-- DROP TABLE IF EXISTS public.roles_objetos;

CREATE TABLE IF NOT EXISTS public.roles_objects
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idrol numeric(4,0) NOT NULL,
    idobject character varying(10) COLLATE pg_catalog."default" NOT NULL,
    delete numeric(1,0) NOT NULL,
    create numeric(1,0) NOT NULL,
    alter numeric(1,0) NOT NULL,
    reading numeric(1,0) NOT NULL,
    CONSTRAINT roles_objetos_pk PRIMARY KEY (idowner, idrol, idobject)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.roles_objects
    OWNER to postgres;