-- Table: public.recepciones_documentos

-- DROP TABLE IF EXISTS public.recepciones_documentos;

CREATE TABLE IF NOT EXISTS public.documents_receipt
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    type character varying(2) COLLATE pg_catalog."default" NOT NULL,
    folio character varying(30) COLLATE pg_catalog."default" NOT NULL,
    vehiclekey character varying(20) COLLATE pg_catalog."default" NOT NULL,
    tad character varying(3) COLLATE pg_catalog."default",
    voldoc numeric(12,6) NOT NULL,
    importe numeric(16,6),
    record timestamp without time zone NOT NULL,
    price numeric(12,6),
    permiso_transporte character varying(30) COLLATE pg_catalog."default",
    supplier numeric(2,0),
    carrier numeric(2,0),
    temperature numeric(5,2),
    vol_ct numeric(12,6),
    cfdi_timbre character(36) COLLATE pg_catalog."default",
    cfdi_type character(1) COLLATE pg_catalog."default",
    cfdi_price numeric(13,6),
    cfdi_volume numeric(12,6),
    cfdi_date timestamp without time zone,
    usr_creation character varying(15) COLLATE pg_catalog."default",
    usr_modification character varying(15) COLLATE pg_catalog."default",
    modification timestamp without time zone,
    CONSTRAINT recepciones_documentos_pk PRIMARY KEY (idowner, idempresa, idestacion, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.documents_receipt
    OWNER to postgres;
-- Index: rec_doc_idx_fecha

-- DROP INDEX IF EXISTS public.rec_doc_idx_fecha;

CREATE INDEX IF NOT EXISTS rec_doc_idx_fecha
    ON public.documents_receipt USING btree
    (fecha ASC NULLS LAST)
    TABLESPACE pg_default;