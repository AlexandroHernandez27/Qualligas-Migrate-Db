-- Table: quallicfdweb.qg_ticket_item

-- DROP TABLE IF EXISTS quallicfdweb.qg_ticket_item;

CREATE TABLE IF NOT EXISTS quallicfdweb.qg_ticket_item
(
    station character(6) COLLATE pg_catalog."default" NOT NULL,
    ticket numeric(10,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    product character varying(30) COLLATE pg_catalog."default" NOT NULL,
    description character varying(100) COLLATE pg_catalog."default" NOT NULL,
    cantidad numeric(16,6) NOT NULL,
    price numeric(16,6) NOT NULL,
    importe numeric(16,6) NOT NULL,
    idcarga numeric(10,0),
    CONSTRAINT qg_ticket_item_pk PRIMARY KEY (estacion, ticket, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS quallicfdweb.qg_ticket_item
    OWNER to postgres;