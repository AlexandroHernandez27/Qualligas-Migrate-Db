-- Table: public.ubicaciones_asignaciones

-- DROP TABLE IF EXISTS public.ubicaciones_asignaciones;

CREATE TABLE IF NOT EXISTS public.locations_assignments
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idlocation numeric(2,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarca numeric(2,0) NOT NULL,
    CONSTRAINT locations_assignments_pk PRIMARY KEY (idowner, idcompany, idstation, idisland, iddispensario, idposicioncarca)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.locations_assignments
    OWNER to postgres;