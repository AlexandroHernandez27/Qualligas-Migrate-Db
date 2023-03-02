-- Table: public.alarmas

-- DROP TABLE IF EXISTS public.alarmas;

CREATE TABLE IF NOT EXISTS public.alarms
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstaion numeric(2,0) NOT NULL,
    type character varying(1) COLLATE pg_catalog."default" NOT NULL,
    date timestamp without time zone NOT NULL,
    idisland numeric(2,0),
    iddispensario numeric(2,0),
    idposicioncarga numeric(2,0),
    idhose numeric(2,0),
    idtank numeric(2,0),
    status character varying(2) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT alarms_pk PRIMARY KEY (idowner, idcompany, idstation, type, date),
    CONSTRAINT alarms_fk_stations FOREIGN KEY (idcompany, idstation, idowner)
        REFERENCES public.stations (idcompany, id, idowner) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT alarms_fk_hoses FOREIGN KEY (idcompany, idhose, idstation, iddispensario, idisland, idowner, idposicioncarga)
        REFERENCES public.hoses (idcompany, id, idstation, iddispensario, idisland, idowner, idposicioncarga) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT alarms_fk_tanks FOREIGN KEY (idowner, idcompany, idtank, idstation)
        REFERENCES public.tanks (idowner, idcompany, id, idstation) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.alarms
    OWNER to postgres;