-- Table: public.pricing_cond

-- DROP TABLE IF EXISTS public.pricing_cond;

CREATE TABLE IF NOT EXISTS public.pricing_cond
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    id character varying(5) COLLATE pg_catalog."default" NOT NULL,
    description character varying(50) COLLATE pg_catalog."default" NOT NULL,
    classification character(1) COLLATE pg_catalog."default" NOT NULL,
    inprice character(1) COLLATE pg_catalog."default",
    CONSTRAINT pricing_cond_pk PRIMARY KEY (idowner, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pricing_cond
    OWNER to postgres;