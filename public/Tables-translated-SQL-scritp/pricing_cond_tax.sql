-- Table: public.pricing_cond_tax

-- DROP TABLE IF EXISTS public.pricing_cond_tax;

CREATE TABLE IF NOT EXISTS public.pricing_cond_tax
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcond character varying(5) COLLATE pg_catalog."default" NOT NULL,
    codigo character varying(10) COLLATE pg_catalog."default" NOT NULL,
    display character(1) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pricing_cond_tax_pk PRIMARY KEY (idowner, idcond)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pricing_cond_tax
    OWNER to postgres;