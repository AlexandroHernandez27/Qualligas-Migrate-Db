-- Table: public.producto_precio

-- DROP TABLE IF EXISTS public.producto_precio;

CREATE TABLE IF NOT EXISTS public.product_price
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    product character varying(30) COLLATE pg_catalog."default" NOT NULL,
    from timestamp without time zone NOT NULL,
    value numeric(16,6) NOT NULL,
    CONSTRAINT product_price_pk PRIMARY KEY (product, from)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.product_price
    OWNER to postgres;