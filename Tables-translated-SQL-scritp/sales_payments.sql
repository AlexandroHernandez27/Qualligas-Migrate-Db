-- Table: public.ventas_pagos

-- DROP TABLE IF EXISTS public.ventas_pagos;

CREATE TABLE IF NOT EXISTS public.ventas_payments
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idsale numeric(10,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    paymentmethod character(1) COLLATE pg_catalog."default" NOT NULL,
    formapago character varying(2) COLLATE pg_catalog."default" NOT NULL,
    importe numeric(16,6) NOT NULL,
    reference character varying(20) COLLATE pg_catalog."default",
    cfdi character(36) COLLATE pg_catalog."default",
    CONSTRAINT sales_pays_pk PRIMARY KEY (idowner, idcompany, idestation, idsale, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sales_payments
    OWNER to postgres;