-- Table: public.pricing_proc_assign

-- DROP TABLE IF EXISTS public.pricing_proc_assign;

CREATE TABLE IF NOT EXISTS public.pricing_proc_assign
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idproc character varying(5) COLLATE pg_catalog."default" NOT NULL,
    sequence numeric(3,0) NOT NULL,
    idcond character varying(5) COLLATE pg_catalog."default" NOT NULL,
    idas character varying(4) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pricing_proc_assign_pk PRIMARY KEY (idowner, idproc, sequence)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pricing_proc_assign
    OWNER to postgres;