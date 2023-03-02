-- Table: public.cfdi

-- DROP TABLE IF EXISTS public.cfdi;

CREATE TABLE IF NOT EXISTS public.cfdi
(
    id character(36) COLLATE pg_catalog."default" NOT NULL,
    folio_fiscal character(36) COLLATE pg_catalog."default",
    serial character varying(40) COLLATE pg_catalog."default",
    folio character varying(40) COLLATE pg_catalog."default",
    aplication_ant character(36) COLLATE pg_catalog."default",
    payment_method character(2) COLLATE pg_catalog."default",
    date timestamp without time zone,
    global character(1) COLLATE pg_catalog."default",
    cancel character(1) COLLATE pg_catalog."default",
    rfc character varying(13) COLLATE pg_catalog."default",
    name character varying(250) COLLATE pg_catalog."default",
    creation timestamp without time zone,
    CONSTRAINT cfdi_pk PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cfdi
    OWNER to postgres;