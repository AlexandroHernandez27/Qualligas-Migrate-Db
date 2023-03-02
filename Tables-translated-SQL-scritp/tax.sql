-- Table: public.impuesto

-- DROP TABLE IF EXISTS public.impuesto;

CREATE TABLE IF NOT EXISTS public.impuesto
(
    id character(5) COLLATE pg_catalog."default" NOT NULL,
    type character(1) COLLATE pg_catalog."default" NOT NULL,
    factor_type character(1) COLLATE pg_catalog."default" NOT NULL,
    tax character varying(5) COLLATE pg_catalog."default" NOT NULL,
    description character varying(50) COLLATE pg_catalog."default" NOT NULL,
    desglosar character(1) COLLATE pg_catalog."default" NOT NULL,
    causa_iva character(1) COLLATE pg_catalog."default" NOT NULL,
    en_precio character(1) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tax_pk PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tax
    OWNER to postgres;