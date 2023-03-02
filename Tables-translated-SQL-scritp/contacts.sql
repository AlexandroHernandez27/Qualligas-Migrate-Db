-- Table: public.contactos

-- DROP TABLE IF EXISTS public.contactos;

CREATE TABLE IF NOT EXISTS public.contacts
(
    idowner character varying(4) COLLATE pg_catalog."default" NOT NULL,
    idaddress numeric(10,0) NOT NULL,
    phone character varying(50) COLLATE pg_catalog."default" NOT NULL,
    fax character varying(50) COLLATE pg_catalog."default" NOT NULL,
    web character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT contacts_pk PRIMARY KEY (idowner, idaddres)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.contacts
    OWNER to postgres;