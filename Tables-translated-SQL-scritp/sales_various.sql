-- Table: public.sales_various

-- DROP TABLE IF EXISTS public.sales_various;

CREATE TABLE IF NOT EXISTS public.sales_various
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    idlocation numeric(2,0) NOT NULL,
    data timestamp without time zone NOT NULL,
    idproduct character varying(30) COLLATE pg_catalog."default" NOT NULL,
    ammount numeric(16,6) NOT NULL,
    salesprice numeric(16,6) NOT NULL,
    importe numeric(16,6) NOT NULL,
    state numeric(1,0) NOT NULL,
    idsale numeric(10,0),
    idsalesitem numeric(5,0),
    paymentmethod character varying(1) COLLATE pg_catalog."default" NOT NULL,
    formapago character varying(2) COLLATE pg_catalog."default" NOT NULL,
    idisla numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarga numeric(2,0) NOT NULL,
    despachador numeric(3,0),
    turno_inicio numeric(10,0),
    CONSTRAINT sales_various_pk PRIMARY KEY (idowner, idcompany, idestation, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sales_various
    OWNER to postgres;
-- Index: sales_various_idx_estado

-- DROP INDEX IF EXISTS public.sales_various_idx_estado;

CREATE INDEX IF NOT EXISTS sales_various_idx_state
    ON public.sales_various USING btree
    (estado ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: sales_various_idx_fecha

-- DROP INDEX IF EXISTS public.sales_various_idx_fecha;

CREATE INDEX IF NOT EXISTS sales_various_idx_date
    ON public.sales_various USING btree
    (date ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: sales_various_idx_ventas

-- DROP INDEX IF EXISTS public.sales_various_idx_ventas;

CREATE INDEX IF NOT EXISTS sales_various_idx_sales
    ON public.sales_various USING btree
    (idsale ASC NULLS LAST, idstation ASC NULLS LAST, idcompany ASC NULLS LAST, idowner COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;