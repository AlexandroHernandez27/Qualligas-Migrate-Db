-- Table: quallicfdweb.qg_ticket_pago

-- DROP TABLE IF EXISTS quallicfdweb.qg_ticket_pago;

CREATE TABLE IF NOT EXISTS quallicfdweb.qg_ticket_payment
(
    station character(6) COLLATE pg_catalog."default" NOT NULL,
    ticket numeric(10,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    paymentmethod character varying(2) COLLATE pg_catalog."default" NOT NULL,
    sat_code character varying(2) COLLATE pg_catalog."default",
    importe numeric(16,6) NOT NULL,
    CONSTRAINT qg_ticket_pago_pk PRIMARY KEY (station, ticket, id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS quallicfdweb.qg_ticket_payment
    OWNER to postgres;