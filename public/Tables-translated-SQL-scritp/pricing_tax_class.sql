-- Table: public.pricing_tax_class

-- DROP TABLE IF EXISTS public.pricing_tax_class;

CREATE TABLE IF NOT EXISTS public.pricing_tax_class
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcond character varying(5) COLLATE pg_catalog."default" NOT NULL,
    classification character(1) COLLATE pg_catalog."default" NOT NULL,
    descripcion character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pricing_tax_class_pk PRIMARY KEY (idowner, idcond, classification)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pricing_tax_class
    OWNER to postgres;