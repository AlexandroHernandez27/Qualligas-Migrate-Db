-- Table: public.productos

-- DROP TABLE IF EXISTS public.productos;

CREATE TABLE IF NOT EXISTS public.products
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    id character varying(30) COLLATE pg_catalog."default" NOT NULL,
    unidad character varying(15) COLLATE pg_catalog."default" NOT NULL,
    category character varying(20) COLLATE pg_catalog."default" NOT NULL,
    description character varying(100) COLLATE pg_catalog."default" NOT NULL,
    deleted character(1) COLLATE pg_catalog."default",
    CONSTRAINT products_pk PRIMARY KEY (idowner, idcompany, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.products
    OWNER to postgres;