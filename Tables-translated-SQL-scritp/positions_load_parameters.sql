-- Table: public.posiciones_carga_params

-- DROP TABLE IF EXISTS public.posiciones_carga_params;

CREATE TABLE IF NOT EXISTS public.positions_load_parameters
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarga numeric(2,0) NOT NULL,
    name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    value character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT positions_load_parameters_pk PRIMARY KEY (idowner, idcompany, idstation, idisland, iddispensario, idposicioncarga, name)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.posiciones_carga_params
    OWNER to postgres;