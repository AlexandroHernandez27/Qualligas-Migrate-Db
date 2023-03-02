-- Table: public.cfdsign

-- DROP TABLE IF EXISTS public.cfdsign;

CREATE TABLE IF NOT EXISTS public.cfdsign
(
    sales numeric(10,0) NOT NULL,
    cfdi character(36) COLLATE pg_catalog."default",
    CONSTRAINT cfdsign_pk PRIMARY KEY (sales)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cfdsign
    OWNER to postgres;