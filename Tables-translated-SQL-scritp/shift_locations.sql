-- Table: public.ubicaciones_turnos

-- DROP TABLE IF EXISTS public.ubicaciones_turnos;

CREATE TABLE IF NOT EXISTS public.locations_shift,u6
(
    owner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    company numeric(2,0) NOT NULL,
    station numeric(2,0) NOT NULL,
    shift numeric(10,0) NOT NULL,
    location numeric(2,0) NOT NULL,
    date_inv timestamp without time zone NOT NULL,
    CONSTRAINT locations_shifts_pk PRIMARY KEY (owner, company, station, shift, location)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.location_shift
    OWNER to postgres;