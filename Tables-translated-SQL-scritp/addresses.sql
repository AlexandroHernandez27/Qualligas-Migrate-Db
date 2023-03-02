-- Table: public.domicilios

-- DROP TABLE IF EXISTS public.domicilios;

CREATE TABLE IF NOT EXISTS public.addresses
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    id numeric(10,0) NOT NULL,
    sreet character varying(100) COLLATE pg_catalog."default" NOT NULL,
    ext_num character varying(15) COLLATE pg_catalog."default" NOT NULL,
    int_num character varying(15) COLLATE pg_catalog."default" NOT NULL,
    colonia character varying(50) COLLATE pg_catalog."default" NOT NULL,
    localidad character varying(50) COLLATE pg_catalog."default" NOT NULL,
    reference character varying(100) COLLATE pg_catalog."default" NOT NULL,
    city character varying(50) COLLATE pg_catalog."default" NOT NULL,
    state character varying(50) COLLATE pg_catalog."default" NOT NULL,
    country character varying(50) COLLATE pg_catalog."default" NOT NULL,
    postalcode character varying(10) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT addresses_pk PRIMARY KEY (idowner, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.addresses_pk
    OWNER to postgres;