-- Table: public.metodos_pago

-- DROP TABLE IF EXISTS public.metodos_pago;

CREATE TABLE IF NOT EXISTS public.payment_methods
(
    id character(1) COLLATE pg_catalog."default" NOT NULL,
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    paymentmethod character(1) COLLATE pg_catalog."default",
    module character varying(50) COLLATE pg_catalog."default",
    visible character(1) COLLATE pg_catalog."default" NOT NULL,
    cambio character(1) COLLATE pg_catalog."default",
    sat_key character(2) COLLATE pg_catalog."default",
    orden numeric(2,0),
    monedero character(1) COLLATE pg_catalog."default",
    sat99 character(2) COLLATE pg_catalog."default",
    public_sale character(1) COLLATE pg_catalog."default",
    CONSTRAINT payment_methods_pk PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.payment_methods
    OWNER to postgres;