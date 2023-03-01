-- Table: public.pricing_as_cv

-- DROP TABLE IF EXISTS public.pricing_as_cv;

CREATE TABLE IF NOT EXISTS public.pricing_as_cv
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idas character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idasc numeric(4,0) NOT NULL,
    validfrom timestamp without time zone NOT NULL,
    validto timestamp without time zone NOT NULL,
    condvalue numeric(16,6) NOT NULL,
    condbase character(1) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pricing_as_cv_pk PRIMARY KEY (idowner, idas, idasc, validfrom)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pricing_as_cv
    OWNER to postgres;