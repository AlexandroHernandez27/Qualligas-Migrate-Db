-- Table: quallicfdweb.qg_ticket

-- DROP TABLE IF EXISTS quallicfdweb.qg_ticket;

CREATE TABLE IF NOT EXISTS quallicfdweb.qg_ticket
(
    station character(6) COLLATE pg_catalog."default" NOT NULL,
    id numeric(10,0) NOT NULL,
    dig_seguro numeric(4,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    state numeric(2,0) NOT NULL,
    upd numeric(2,0) NOT NULL,
    total numeric(16,6) NOT NULL,
    cfd_id character(36) COLLATE pg_catalog."default",
    cfd_uuid character(36) COLLATE pg_catalog."default",
    CONSTRAINT qg_ticket_pk PRIMARY KEY (station, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS quallicfdweb.qg_ticket
    OWNER to postgres;