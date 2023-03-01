-- Table: public.producto_impuesto

-- DROP TABLE IF EXISTS public.producto_impuesto;

CREATE TABLE IF NOT EXISTS public.product_tax
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    product character varying(30) COLLATE pg_catalog."default" NOT NULL,
    taax character(5) COLLATE pg_catalog."default" NOT NULL,
    use_value character(1) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT product_tax_pk PRIMARY KEY (product, tax)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.product_tax
    OWNER to postgres;