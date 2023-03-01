-- Table: public.producto_impuesto_valor

-- DROP TABLE IF EXISTS public.producto_impuesto_valor;

CREATE TABLE IF NOT EXISTS public.product_tax_value
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    product character varying(30) COLLATE pg_catalog."default" NOT NULL,
    tax character(5) COLLATE pg_catalog."default" NOT NULL,
    from timestamp without time zone NOT NULL,
    value numeric(16,6) NOT NULL,
    CONSTRAINT product_tax_value_pk PRIMARY KEY (product, tax, from)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.product_tax_value
    OWNER to postgres;