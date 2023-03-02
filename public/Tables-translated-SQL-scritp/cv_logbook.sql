-- Table: public.cv_bitacora

-- DROP TABLE IF EXISTS public.cv_bitacora;

CREATE TABLE IF NOT EXISTS public.cv_logbook
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    generation timestamp without time zone,
    shipment timestamp without time zone,
    process timestamp without time zone,
    response character varying(200) COLLATE pg_catalog."default",
    file character varying(48) COLLATE pg_catalog."default",
    CONSTRAINT cv_logbook_pk PRIMARY KEY (idowner, idcompany, idstation, date)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cv_logbook
    OWNER to postgres;