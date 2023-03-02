-- Table: public.lecturas_detalles

-- DROP TABLE IF EXISTS public.lecturas_detalles;

CREATE TABLE IF NOT EXISTS public.detail_readings
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idreading numeric(10,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarga numeric(2,0) NOT NULL,
    idhose numeric(2,0) NOT NULL,
    volume_e_reading numeric(16,6),
    lectura_e_importe numeric(16,6),
    volume_m_reading numeric(16,6),
    lectura_m_importe numeric(16,6),
    CONSTRAINT detail_readings_pk PRIMARY KEY (idowner, idcompany, idstation, idreading, idisland, iddispensario, idposicioncarga, idhose)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.detail_readings
    OWNER to postgres;