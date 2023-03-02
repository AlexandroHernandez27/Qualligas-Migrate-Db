-- Table: public.productos_taxes

-- DROP TABLE IF EXISTS public.productos_taxes;

CREATE TABLE IF NOT EXISTS public.products_taxes
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idproduct character varying(30) COLLATE pg_catalog."default" NOT NULL,
    idcond character varying(5) COLLATE pg_catalog."default" NOT NULL,
    classification character(1) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT productos_taxes_pk PRIMARY KEY (idowner, idcompany, idproduct, idcond)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.productos_taxes
    OWNER to postgres;