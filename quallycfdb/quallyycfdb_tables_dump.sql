--
-- Name: qg_estacion; Type: TABLE; Schema: quallicfdweb; Owner: postgres
--

CREATE TABLE quallicfdweb.qg_estacion (
    estacion character(6) NOT NULL,
    numero character varying(10) NOT NULL,
    clavesiic character varying(10) NOT NULL
);


ALTER TABLE quallicfdweb.qg_estacion OWNER TO postgres;

--
-- Name: qg_estacion_param; Type: TABLE; Schema: quallicfdweb; Owner: postgres
--

CREATE TABLE quallicfdweb.qg_estacion_param (
    estacion character(6) NOT NULL,
    nombre character varying(20) NOT NULL,
    valor character varying(200)
);


ALTER TABLE quallicfdweb.qg_estacion_param OWNER TO postgres;

--
-- Name: qg_licencia; Type: TABLE; Schema: quallicfdweb; Owner: postgres
--

CREATE TABLE quallicfdweb.qg_licencia (
    estacion character(6) NOT NULL,
    nombre character varying(30) NOT NULL,
    licencia character varying(175) NOT NULL
);


ALTER TABLE quallicfdweb.qg_licencia OWNER TO postgres;

--
-- Name: qg_ticket; Type: TABLE; Schema: quallicfdweb; Owner: postgres
--

CREATE TABLE quallicfdweb.qg_ticket (
    estacion character(6) NOT NULL,
    id numeric(10,0) NOT NULL,
    dig_seguro numeric(4,0) NOT NULL,
    fecha timestamp without time zone NOT NULL,
    estado numeric(2,0) NOT NULL,
    upd numeric(2,0) NOT NULL,
    total numeric(16,6) NOT NULL,
    cfd_id character(36),
    cfd_uuid character(36)
);


ALTER TABLE quallicfdweb.qg_ticket OWNER TO postgres;

--
-- Name: qg_ticket_item; Type: TABLE; Schema: quallicfdweb; Owner: postgres
--

CREATE TABLE quallicfdweb.qg_ticket_item (
    estacion character(6) NOT NULL,
    ticket numeric(10,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    producto character varying(30) NOT NULL,
    descripcion character varying(100) NOT NULL,
    cantidad numeric(16,6) NOT NULL,
    precio numeric(16,6) NOT NULL,
    importe numeric(16,6) NOT NULL,
    idcarga numeric(10,0)
);


ALTER TABLE quallicfdweb.qg_ticket_item OWNER TO postgres;

--
-- Name: qg_ticket_pago; Type: TABLE; Schema: quallicfdweb; Owner: postgres
--

CREATE TABLE quallicfdweb.qg_ticket_pago (
    estacion character(6) NOT NULL,
    ticket numeric(10,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    metodopago character varying(2) NOT NULL,
    codigo_sat character varying(2),
    importe numeric(16,6) NOT NULL
);


ALTER TABLE quallicfdweb.qg_ticket_pago OWNER TO postgres;

--
-- Name: qg_webservice; Type: TABLE; Schema: quallicfdweb; Owner: postgres
--

CREATE TABLE quallicfdweb.qg_webservice (
    estacion character(6) NOT NULL,
    api_key character(20) NOT NULL,
    api_secret character(40) NOT NULL,
    sucursal character(7) NOT NULL,
    suc_key character(20) NOT NULL,
    suc_secret character(40) NOT NULL
);


ALTER TABLE quallicfdweb.qg_webservice OWNER TO postgres;

