-- Table: public.messages

-- DROP TABLE IF EXISTS public.messages;

CREATE TABLE IF NOT EXISTS public.messages
(
    msgnr character varying(4) COLLATE pg_catalog."default" NOT NULL,
    text character varying(100) COLLATE pg_catalog."default" NOT NULL,
    type character(1) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT messages_pk PRIMARY KEY (msgnr)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.messages
    OWNER to postgres;