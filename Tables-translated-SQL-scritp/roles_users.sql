-- Table: public.roles_usuarios

-- DROP TABLE IF EXISTS public.roles_usuarios;

CREATE TABLE IF NOT EXISTS public.roles_users
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    user character varying(15) COLLATE pg_catalog."default" NOT NULL,
    idrol numeric(4,0) NOT NULL,
    CONSTRAINT roles_usuarios_pk PRIMARY KEY (idowner, idcompany, user, idrol)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.roles_users
    OWNER to postgres;