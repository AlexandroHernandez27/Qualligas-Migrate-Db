-- Table: public.empresas_pricing

-- DROP TABLE IF EXISTS public.empresas_pricing;

CREATE TABLE IF NOT EXISTS public.companies_pricing
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idpricing character varying(5) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT companies_pricing_pk PRIMARY KEY (idowner, idcompany)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.companies_pricing
    OWNER to postgres;