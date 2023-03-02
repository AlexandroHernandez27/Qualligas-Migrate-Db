-- Table: public.ventas

-- DROP TABLE IF EXISTS public.ventas;

CREATE TABLE IF NOT EXISTS public.sales
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    subtotal numeric(16,6) NOT NULL,
    discounts numeric(16,6) NOT NULL,
    totalimpret numeric(16,6) NOT NULL,
    totalimptras numeric(16,6) NOT NULL,
    total numeric(16,6) NOT NULL,
    state numeric(1,0) NOT NULL,
    cfdi character(36) COLLATE pg_catalog."default",
    total_payment numeric(16,6),
    dig_seg numeric(4,0),
    CONSTRAINT sales_pk PRIMARY KEY (idowner, idcompany, idstation, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sales
    OWNER to postgres;
-- Index: ventas_idx_fecha

-- DROP INDEX IF EXISTS public.ventas_idx_fecha;

CREATE INDEX IF NOT EXISTS sales_idx_date
    ON public.sales USING btree
    (dates ASC NULLS LAST)
    TABLESPACE pg_default;