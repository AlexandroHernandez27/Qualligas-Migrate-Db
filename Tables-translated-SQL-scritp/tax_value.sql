-- Table: public.impuesto_valor

-- DROP TABLE IF EXISTS public.impuesto_valor;

CREATE TABLE IF NOT EXISTS public.tax_value
(
    tax character(5) COLLATE pg_catalog."default" NOT NULL,
    _from timestamp without time zone NOT NULL,
    value numeric(16,6) NOT NULL,
    CONSTRAINT tax_value_pk PRIMARY KEY (tax, _from)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tax_value
    OWNER to postgres;