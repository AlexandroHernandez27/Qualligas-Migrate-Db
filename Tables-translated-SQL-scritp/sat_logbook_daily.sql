-- Table: public.sat_bitacora_diario

-- DROP TABLE IF EXISTS public.sat_bitacora_diario;

CREATE TABLE IF NOT EXISTS public.sat_logbook_daily
(
    date timestamp without time zone NOT NULL,
    status character(1) COLLATE pg_catalog."default",
    generation timestamp without time zone,
    file character varying(250) COLLATE pg_catalog."default",
    CONSTRAINT sat_logbook_daily_pk PRIMARY KEY (fecha)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sat_logbook_daily
    OWNER to postgres;