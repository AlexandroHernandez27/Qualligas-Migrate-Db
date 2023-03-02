-- Table: public.surtido

-- DROP TABLE IF EXISTS public.surtido;

CREATE TABLE IF NOT EXISTS public.assortmen
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    location numeric(2,0) NOT NULL,
    product character varying(30) COLLATE pg_catalog."default" NOT NULL,
    ammount numeric(10,0) NOT NULL,
    origin numeric(2,0),
    CONSTRAINT assortmen_pk PRIMARY KEY (idowner, idcompany, idestation, location, product)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.assortmen
    OWNER to postgres;