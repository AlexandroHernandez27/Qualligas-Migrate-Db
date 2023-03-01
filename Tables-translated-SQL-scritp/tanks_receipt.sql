-- Table: public.recepciones_tanques

-- DROP TABLE IF EXISTS public.recepciones_tanques;

CREATE TABLE IF NOT EXISTS public.tanks_receipt
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idtank numeric(2,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    initDate timestamp without time zone NOT NULL,
    endDate timestamp without time zone NOT NULL,
    initvol numeric(12,6) NOT NULL,
    finvol numeric(12,6) NOT NULL,
    initwatervol numeric(12,6) NOT NULL,
    endwatervol numeric(12,6) NOT NULL,
    inittemp numeric(5,2) NOT NULL,
    fintemp numeric(5,2) NOT NULL,
    ignore character(1) COLLATE pg_catalog."default",
    cvfolio numeric(10,0),
    initvol_ct numeric(12,6),
    finvol_ct numeric(12,6),
    CONSTRAINT tanks_receipt_pk PRIMARY KEY (idowner, idcompany, idstation, idtank, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tanks_receipt
    OWNER to postgres;