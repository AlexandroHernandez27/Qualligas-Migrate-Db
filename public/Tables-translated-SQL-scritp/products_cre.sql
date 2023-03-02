-- Table: public.productos_cre

-- DROP TABLE IF EXISTS public.productos_cre;

CREATE TABLE IF NOT EXISTS public.products_cre
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idproduct character varying(30) COLLATE pg_catalog."default" NOT NULL,
    productKey character(2) COLLATE pg_catalog."default" NOT NULL,
    subproductKey character(1) COLLATE pg_catalog."default" NOT NULL,
    brandKey character varying(3) COLLATE pg_catalog."default" NOT NULL,
    brandName character varying(100) COLLATE pg_catalog."default" NOT NULL,
    gasOctaneLevel numeric(3,0),
    gasEthanol character(1) COLLATE pg_catalog."default",
    gasolina_comp_etanol numeric(5,3),
    other character varying(30) COLLATE pg_catalog."default",
    cet numeric(8,8),
    productSatKey character varying(4) COLLATE pg_catalog."default",
    subProductSatKey character varying(4) COLLATE pg_catalog."default",
    CONSTRAINT products_cre_pk PRIMARY KEY (idowner, idcompany, idproduct)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.products_cre
    OWNER to postgres;