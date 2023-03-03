-- Table: public.ventas_impuestos

-- DROP TABLE IF EXISTS public.ventas_impuestos;

CREATE TABLE IF NOT EXISTS public.sale_taxes
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idsale numeric(10,0) NOT NULL,
    idsalesitem numeric(10,0) NOT NULL,
    type character(1) COLLATE pg_catalog."default" NOT NULL,
    tax character varying(10) COLLATE pg_catalog."default" NOT NULL,
    tasa numeric(7,4) NOT NULL,
    importe numeric(16,6) NOT NULL,
    CONSTRAINT ventas_impuestos_pk PRIMARY KEY (idowner, idcompany, idstation, idsale, idsalesitem, type, tax)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sale_taxes
    OWNER to postgres;