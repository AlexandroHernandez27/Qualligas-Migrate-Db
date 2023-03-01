-- Table: public.sat_bitacora_mensual

-- DROP TABLE IF EXISTS public.sat_bitacora_mensual;

CREATE TABLE IF NOT EXISTS public.sat_logbook_monthly
(
    date timestamp without time zone NOT NULL,
    status character(1) COLLATE pg_catalog."default",
    generation timestamp without time zone,
    file character varying(250) COLLATE pg_catalog."default",
    CONSTRAINT sat_logbook_monthly_pk PRIMARY KEY (date)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sat_logbook_monthly
    OWNER to postgres;