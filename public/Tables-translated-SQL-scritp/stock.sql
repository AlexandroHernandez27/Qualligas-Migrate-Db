-- Table: public.inventarios

-- DROP TABLE IF EXISTS public.inventarios;

CREATE TABLE IF NOT EXISTS public.stock
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idlocation numeric(2,0) NOT NULL,
    idproduct character varying(30) COLLATE pg_catalog."default" NOT NULL,
    date timestamp without time zone NOT NULL,
    cantidad numeric(16,6) NOT NULL,
    CONSTRAINT stock_pk PRIMARY KEY (idowner, idcompany, idstation, idlocation, idproduct, date)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.stock
    OWNER to postgres;