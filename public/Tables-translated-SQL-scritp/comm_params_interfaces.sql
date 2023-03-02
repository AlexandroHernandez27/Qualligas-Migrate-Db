-- Table: public.interfases_com_params

-- DROP TABLE IF EXISTS public.interfases_com_params;

CREATE TABLE IF NOT EXISTS public.comm_params_interfaces
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idinterface numeric(2,0) NOT NULL,
    name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    value character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT comm_params_interfaces_pk PRIMARY KEY (idowner, idcompany, idstation, idinterface, name)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.comm_params_interfaces
    OWNER to postgres;