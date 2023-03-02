-- Table: public.cfdi_request

-- DROP TABLE IF EXISTS public.cfdi_request;

CREATE TABLE IF NOT EXISTS public.cfdi_request
(
    id character(36) COLLATE pg_catalog."default" NOT NULL,
    date timestamp without time zone NOT NULL,
    state character(1) COLLATE pg_catalog."default" NOT NULL,
    ticket numeric(10,0) NOT NULL,
    dig_seg numeric(4,0) NOT NULL,
    receiver_email character varying(100) COLLATE pg_catalog."default" NOT NULL,
    receiver_name character varying(200) COLLATE pg_catalog."default" NOT NULL,
    receiver_rfc character varying(13) COLLATE pg_catalog."default" NOT NULL,
    receiver_uso_cfdi character varying(3) COLLATE pg_catalog."default" NOT NULL,
    receiver_regimen_fiscal character varying(3) COLLATE pg_catalog."default" NOT NULL,
    receiver_postal_code character varying(5) COLLATE pg_catalog."default" NOT NULL,
    cfdi character(36) COLLATE pg_catalog."default",
    cfdi_error character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT cfdi_request_pk PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cfdi_request
    OWNER to postgres;
-- Index: cfdi_request_idx_estado

-- DROP INDEX IF EXISTS public.cfdi_request_idx_estado;

CREATE INDEX IF NOT EXISTS cfdi_request_idx_state
    ON public.cfdi_request USING btree
    (estado COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;