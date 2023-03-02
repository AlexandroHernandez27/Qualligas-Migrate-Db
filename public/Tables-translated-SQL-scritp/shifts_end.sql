-- Table: public.turnos_cortes

-- DROP TABLE IF EXISTS public.turnos_cortes;

CREATE TABLE IF NOT EXISTS public.shifts_end
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idstartshift numeric(10,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarga numeric(2,0) NOT NULL,
    startdate timestamp without time zone NOT NULL,
    enddate timestamp without time zone,
    iddespachador numeric(3,0),
    importe numeric(16,6) NOT NULL,
    sign character varying(200) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT shifts_start_pk PRIMARY KEY (idowner, idcompany, idstation, idstartdate, idisland, iddispensario, idposicioncarga)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.shifts_end
    OWNER to postgres;
-- Index: turnos_cortes_idx_fechas

-- DROP INDEX IF EXISTS public.turnos_cortes_idx_fechas;

CREATE INDEX IF NOT EXISTS shifts_end_idx_dates
    ON public.shifts_end USING btree
    (startdate ASC NULLS LAST, enddate ASC NULLS LAST, idposicioncarga ASC NULLS LAST, iddispensario ASC NULLS LAST, idisland ASC NULLS LAST, idstation ASC NULLS LAST, idcompany ASC NULLS LAST, idowner COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: turnos_cortes_idx_turnoinicio

-- DROP INDEX IF EXISTS public.turnos_cortes_idx_turnoinicio;

CREATE INDEX IF NOT EXISTS shifts_end_idx_startshift
    ON public.shifts_end USING btree
    (idstartshift ASC NULLS LAST, startdate ASC NULLS LAST, enddate ASC NULLS LAST, idposicioncarga ASC NULLS LAST, iddispensario ASC NULLS LAST, idisland ASC NULLS LAST, idstation ASC NULLS LAST, idcompany ASC NULLS LAST, idowner COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;