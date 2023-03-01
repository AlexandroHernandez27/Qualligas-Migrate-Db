-- Table: public.productos_adicional

-- DROP TABLE IF EXISTS public.productos_adicional;

CREATE TABLE IF NOT EXISTS public.additional_products
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idproduct character varying(30) COLLATE pg_catalog."default" NOT NULL,
    barcode character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT additional_products_pk PRIMARY KEY (idowner, idcompany, idproduct)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.additional_products
    OWNER to postgres;