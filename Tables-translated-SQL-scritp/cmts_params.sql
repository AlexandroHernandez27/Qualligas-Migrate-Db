-- Table: public.cmt_param

-- DROP TABLE IF EXISTS public.cmt_param;

CREATE TABLE IF NOT EXISTS public.cmt_params
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idempresa numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    cmt numeric(2,0) NOT NULL,
    name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    value character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT cmt_params_pk PRIMARY KEY (idowner, idcompany, idstation, cmt, name)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cmt_params
    OWNER to postgres;