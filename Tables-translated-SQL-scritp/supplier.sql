-- Table: public.proveedor

-- DROP TABLE IF EXISTS public.proveedor;

CREATE TABLE IF NOT EXISTS public.supplier
(
    id numeric(2,0) NOT NULL,
    name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    type character(1) COLLATE pg_catalog."default" NOT NULL,
    rfc character varying(13) COLLATE pg_catalog."default",
    permiso character varying(30) COLLATE pg_catalog."default",
    deleted character(1) COLLATE pg_catalog."default",
    CONSTRAINT supplier_pk PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.supplier
    OWNER to postgres;