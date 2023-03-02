-- Table: public.cre_bitacora

-- DROP TABLE IF EXISTS public.cre_bitacora;

CREATE TABLE IF NOT EXISTS public.cre_logbook
(
    report character varying(30) COLLATE pg_catalog."default" NOT NULL,
    date timestamp without time zone NOT NULL,
    generation timestamp without time zone,
    CONSTRAINT cre_logbook_pk PRIMARY KEY (report, date)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cre_logbook
    OWNER to postgres;