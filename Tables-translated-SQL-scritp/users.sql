-- Table: public.usuarios

-- DROP TABLE IF EXISTS public.usuarios;

CREATE TABLE IF NOT EXISTS public.users
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    user character varying(15) COLLATE pg_catalog."default" NOT NULL,
    name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    passwd character varying(40) COLLATE pg_catalog."default",
    email character varying(100) COLLATE pg_catalog."default" NOT NULL,
    rfid character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT users_pk PRIMARY KEY (idowner, idcompany, user)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.users
    OWNER to postgres;
-- Index: usuarios_idx_rfid

-- DROP INDEX IF EXISTS public.usuarios_idx_rfid;

CREATE UNIQUE INDEX IF NOT EXISTS users_idx_rfid
    ON public.users USING btree
    (rfid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;