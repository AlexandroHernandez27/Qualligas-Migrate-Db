-- Table: public.ventas_items

-- DROP TABLE IF EXISTS public.ventas_items;

CREATE TABLE IF NOT EXISTS public.sales_items
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idsale numeric(10,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    idproduct character varying(30) COLLATE pg_catalog."default" NOT NULL,
    description character varying(100) COLLATE pg_catalog."default",
    unidad character varying(15) COLLATE pg_catalog."default",
    ammount numeric(16,6) NOT NULL,
    price numeric(16,6) NOT NULL,
    importe numeric(16,6) NOT NULL,
    disccount numeric(16,6) NOT NULL,
    CONSTRAINT sales_items_pk PRIMARY KEY (idowner, idcompany, idstation, idsale, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sales_items
    OWNER to postgres;