-- Table: public.recepcion_registro_doc

-- DROP TABLE IF EXISTS public.recepcion_registro_doc;

CREATE TABLE IF NOT EXISTS public.documents_register_reception
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    register_reception numeric(10,0) NOT NULL,
    document_reception numeric(10,0) NOT NULL,
    CONSTRAINT documents_register_reception_pk PRIMARY KEY (idowner, idempresa, idestacion, recepcion_registro, recepcion_documento)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.documents_register_reception
    OWNER to postgres;