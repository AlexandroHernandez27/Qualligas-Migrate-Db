-- Table: public.anticipos

-- DROP TABLE IF EXISTS public.anticipos;

CREATE TABLE IF NOT EXISTS public.advances
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idstartshift numeric(10,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarga numeric(2,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    total numeric(16,6) NOT NULL,
    CONSTRAINT advances_pk PRIMARY KEY (idowner, idcompany, idstation, idstartshift, idisland, iddispensario, idposicioncarga, date),
    CONSTRAINT advances_fk1 FOREIGN KEY (idcompany, idstation, iddispensario, idisland, idstartshift, idowner, idposicioncarga)
        REFERENCES public.turnos_cortes (idcompany, idstation, iddispensario, idisland, idstartshift, idowner, idposicioncarga) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.advances
    OWNER to postgres;