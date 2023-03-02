-- Table: public.pricing_procedure

-- DROP TABLE IF EXISTS public.pricing_procedure;

CREATE TABLE IF NOT EXISTS public.pricing_procedure
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    id character varying(5) COLLATE pg_catalog."default" NOT NULL,
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pricing_procedure_pk PRIMARY KEY (idowner, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pricing_procedure
    OWNER to postgres;