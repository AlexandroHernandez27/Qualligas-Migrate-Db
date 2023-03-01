-- Table: public.recepcion_registro

-- DROP TABLE IF EXISTS public.recepcion_registro;

CREATE TABLE IF NOT EXISTS public.register_reception
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    checkinRegister numeric(2,0) NOT NULL,
    product character varying(30) COLLATE pg_catalog."default" NOT NULL,
    ignore character(1) COLLATE pg_catalog."default",
    date timestamp without time zone NOT NULL,
    init_date timestamp without time zone NOT NULL,
    fin_date timestamp without time zone NOT NULL,
    totalizador_ini numeric(16,6) NOT NULL,
    totalizador_fin numeric(16,6) NOT NULL,
    ammount numeric(16,6) NOT NULL,
    despachador numeric(3,0),
    temperature numeric(5,2),
    ammount_ct numeric(16,6),
    CONSTRAINT register_reception_pk PRIMARY KEY (idowner, idcompany, idstation, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.register_reception
    OWNER to postgres;