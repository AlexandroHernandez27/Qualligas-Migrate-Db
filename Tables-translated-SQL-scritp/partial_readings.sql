-- Table: public.lecturas_parciales

-- DROP TABLE IF EXISTS public.lecturas_parciales;

CREATE TABLE IF NOT EXISTS public.lecturas_parciales
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarga numeric(2,0) NOT NULL,
    idhose numeric(2,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    volume_reading numeric(16,0),
    lectura_importe numeric(16,0),
    CONSTRAINT partials_readings_pk PRIMARY KEY (idowner, idcompany, idstation, idisland, iddispensario, idposicioncarga, idhose)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.lecturas_parciales
    OWNER to postgres;