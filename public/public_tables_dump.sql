--
-- Name: alarmas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alarms (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    type character varying(1) NOT NULL,
    date timestamp without time zone NOT NULL,
    idislandnd numeric(2,0),
    iddispensario numeric(2,0),
    idposicioncarga numeric(2,0),
    idfuelhose numeric(2,0),
    idtank numeric(2,0),
    status character varying(2) NOT NULL
);


ALTER TABLE public.alarms OWNER TO postgres;

--
-- Name: anticipos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.advance_paymments (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idturnoinicio numeric(10,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarga numeric(2,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    total numeric(16,6) NOT NULL
);


ALTER TABLE public.advance_paymments OWNER TO postgres;

--
-- Name: anticipos_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item_advance_paymments (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idturnoinicio numeric(10,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarga numeric(2,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    id numeric(2,0) NOT NULL,
    paymentmethod character(1) NOT NULL,
    importe numeric(16,6) NOT NULL
);


ALTER TABLE public.item_advance_paymments OWNER TO postgres;

--
-- Name: anticipos_limites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.limit_advance_paymments (
    paymentmethod character(1) NOT NULL,
    min numeric(16,6),
    max numeric(16,6)
);


ALTER TABLE public.limit_advance_paymments OWNER TO postgres;

--
-- Name: logbook; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logbook (
    id numeric(10,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    type character varying(2) NOT NULL,
    message character varying(4) NOT NULL,
    user character varying(15),
    data character varying(250),
    component character varying(250)
);


ALTER TABLE public.logbook OWNER TO postgres;

--
-- Name: cargas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cargas (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarga numeric(2,0) NOT NULL,
    idfuelhose numeric(2,0) NOT NULL,
    type character varying(1) NOT NULL,
    date timestamp without time zone NOT NULL,
    idproduct character varying(30) NOT NULL,
    cantidad numeric(16,6) NOT NULL,
    saleprice numeric(16,6) NOT NULL,
    importe numeric(16,6) NOT NULL,
    state numeric(1,0) NOT NULL,
    idsale numeric(10,0),
    iditemsale numeric(5,0),
    importe_r numeric(16,6) NOT NULL,
    paymentmethod character varying(1) NOT NULL,
    formapago character varying(2) NOT NULL,
    despachador numeric(3,0),
    vol_ct numeric(16,6),
    temperature numeric(5,2),
    turno_inicio numeric(10,0)
);


ALTER TABLE public.cargas OWNER TO postgres;

--
-- Name: catalogos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.catalogs (
    idowner character varying(4) NOT NULL,
    catalogs character varying(15) NOT NULL,
    catalogaccess character varying(15) NOT NULL,
    access character varying(30) NOT NULL,
    code character varying(10) NOT NULL,
    text character varying(50) NOT NULL
);


ALTER TABLE public.catalogs OWNER TO postgres;

--
-- Name: cfdi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cfdi (
    id character(36) NOT NULL,
    folio_fiscal character(36),
    serie character varying(40),
    folio character varying(40),
    aplication_ant character(36),
    paymentmethod character(2),
    date timestamp without time zone,
    global character(1),
    cancel character(1),
    rfc character varying(13),
    name character varying(250),
    created timestamp without time zone
);


ALTER TABLE public.cfdi OWNER TO postgres;

--
-- Name: cfdi_request; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cfdi_request (
    id character(36) NOT NULL,
    date timestamp without time zone NOT NULL,
    state character(1) NOT NULL,
    ticket numeric(10,0) NOT NULL,
    dig_seg numeric(4,0) NOT NULL,
    receiver_email character varying(100) NOT NULL,
    receiver_name character varying(200) NOT NULL,
    receiver_rfc character varying(13) NOT NULL,
    receiver_uso_cfdi character varying(3) NOT NULL,
    receiver_regimen_fiscal character varying(3) NOT NULL,
    receiver_postal_code character varying(5) NOT NULL,
    cfdi character(36),
    cfdi_error character varying(255)
);


ALTER TABLE public.cfdi_request OWNER TO postgres;

--
-- Name: cfdsign; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cfdsign (
    sale numeric(10,0) NOT NULL,
    cfdi character(36)
);


ALTER TABLE public.cfdsign OWNER TO postgres;

--
-- Name: cmt_param; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cmt_param (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    cmt numeric(2,0) NOT NULL,
    name character varying(20) NOT NULL,
    value character varying(50) NOT NULL
);


ALTER TABLE public.cmt_param OWNER TO postgres;

--
-- Name: cmts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cmts (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    brand character varying(30) NOT NULL,
    model character varying(30) NOT NULL,
    idperiferico numeric(2,0)
);


ALTER TABLE public.cmts OWNER TO postgres;

--
-- Name: contactos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacts (
    idowner character varying(4) NOT NULL,
    idaddress numeric(10,0) NOT NULL,
    phone character varying(50) NOT NULL,
    fax character varying(50) NOT NULL,
    web character varying(100) NOT NULL
);


ALTER TABLE public.contacts OWNER TO postgres;

--
-- Name: cre_logbook; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cre_logbook (
    report character varying(30) NOT NULL,
    date timestamp without time zone NOT NULL,
    generation timestamp without time zone
);


ALTER TABLE public.cre_logbook OWNER TO postgres;

--
-- Name: cv_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cv_file (
    name character varying(60) NOT NULL,
    md5 character varying(32) NOT NULL
);


ALTER TABLE public.cv_file OWNER TO postgres;

--
-- Name: cv_logbook; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cv_logbook (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    generation timestamp without time zone,
    shipment timestamp without time zone,
    process timestamp without time zone,
    response character varying(200),
    file character varying(48)
);


ALTER TABLE public.cv_logbook OWNER TO postgres;

--
-- Name: cv_iniop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cv_iniop (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    filename character varying(3) NOT NULL
);


ALTER TABLE public.cv_iniop OWNER TO postgres;

--
-- Name: despachadores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.despachadores (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    id numeric(3,0) NOT NULL,
    user character varying(15),
    name character varying(100) NOT NULL
);


ALTER TABLE public.despachadores OWNER TO postgres;

--
-- Name: dispensarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dispensarios (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    number character varying(15) NOT NULL,
    idintcomunica numeric(2,0),
    key_identification character varying(30),
    sismed numeric(3,0),
    desc_identification character varying(250),
    diameter numeric(6,3)
);


ALTER TABLE public.dispensarios OWNER TO postgres;

--
-- Name: domicilios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addresses (
    idowner character varying(4) NOT NULL,
    id numeric(10,0) NOT NULL,
    street character varying(100) NOT NULL,
    ext_num character varying(15) NOT NULL,
    int_num character varying(15) NOT NULL,
    colonia character varying(50) NOT NULL,
    localidad character varying(50) NOT NULL,
    reference character varying(100) NOT NULL,
    municipio character varying(50) NOT NULL,
    state character varying(50) NOT NULL,
    country character varying(50) NOT NULL,
    postalcode character varying(10) NOT NULL
);


ALTER TABLE public.addresses OWNER TO postgres;

--
-- Name: emails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emails (
    idowner character varying(4) NOT NULL,
    idaddress numeric(10,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(100) NOT NULL
);


ALTER TABLE public.emails OWNER TO postgres;

--
-- Name: empresas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.companies (
    idowner character varying(4) NOT NULL,
    id numeric(2,0) NOT NULL,
    rfc character varying(13) NOT NULL,
    idaddres numeric(10,0),
    name character varying(100) NOT NULL,
    rfc_rep_legal character varying(13)
);


ALTER TABLE public.companies OWNER TO postgres;

--
-- Name: empresas_pricing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.companies_pricing (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idpricing character varying(5) NOT NULL
);


ALTER TABLE public.companies_pricing OWNER TO postgres;

--
-- Name: estaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stations (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    number character varying(10) NOT NULL,
    keypemex character varying(10),
    idaddres numeric(10,0),
    name character varying(100) NOT NULL,
    permiso_cre character varying(30) NOT NULL,
    permiso_importacion character varying(30),
    caracter_regulatorio character varying(30),
    key_installation character varying(30),
    desc_installation character varying(250)
);


ALTER TABLE public.stations OWNER TO postgres;

--
-- Name: estaciones_params; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stations_params (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    name character varying(20) NOT NULL,
    value character varying(200) NOT NULL
);


ALTER TABLE public.stations_params OWNER TO postgres;

--
-- Name: existencias_tanques; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.existencias_tanques (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idtank numeric(2,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    watervol numeric(12,6) NOT NULL,
    dispvol numeric(12,6) NOT NULL,
    recvol numeric(12,6) NOT NULL,
    temperature numeric(5,2) NOT NULL,
    idrec numeric(5,0),
    height numeric(12,3),
    water_height numeric(12,3),
    dispvol_ct numeric(12,6)
);


ALTER TABLE public.existencias_tanques OWNER TO postgres;

--
-- Name: tax; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tax (
    id character(5) NOT NULL,
    type character(1) NOT NULL,
    factor_type character(1) NOT NULL,
    tax character varying(5) NOT NULL,
    description character varying(50) NOT NULL,
    desglosar character(1) NOT NULL,
    causa_iva character(1) NOT NULL,
    en_precio character(1) NOT NULL
);


ALTER TABLE public.tax OWNER TO postgres;

--
-- Name: tax_value; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tax_value (
    tax character(5) NOT NULL,
    _from timestamp without time zone NOT NULL,
    value numeric(16,6) NOT NULL
);


ALTER TABLE public.tax_value OWNER TO postgres;

--
-- Name: interfaces_com_params; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comm_params_interfaces (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idinterface numeric(2,0) NOT NULL,
    name character varying(20) NOT NULL,
    value character varying(50) NOT NULL
);


ALTER TABLE public.comm_params_interfaces OWNER TO postgres;

--
-- Name: interfaces_comunicacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.communication_interfaces (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    brand character varying(30) NOT NULL,
    model character varying(30) NOT NULL,
    idperiferico numeric(2,0)
);


ALTER TABLE public.communication_interfaces OWNER TO postgres;

--
-- Name: inventarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stock (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idlocation numeric(2,0) NOT NULL,
    idproduct character varying(30) NOT NULL,
    date timestamp without time zone NOT NULL,
    cantidad numeric(16,6) NOT NULL
);


ALTER TABLE public.stock OWNER TO postgres;

--
-- Name: inventarios_doctos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventarios_doctos (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    date timestamp without time zone NOT NULL
);


ALTER TABLE public.inventarios_doctos OWNER TO postgres;

--
-- Name: inventarios_doctos_mvtos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventarios_doctos_mvtos (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    iddocto numeric(10,0) NOT NULL,
    id numeric(3,0) NOT NULL,
    type character varying(1) NOT NULL,
    idproduct character varying(30) NOT NULL,
    idlocation numeric(2,0) NOT NULL,
    cantidad numeric(16,6) NOT NULL
);


ALTER TABLE public.inventarios_doctos_mvtos OWNER TO postgres;

--
-- Name: islas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.islands (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    name character varying(25) NOT NULL
);


ALTER TABLE public.islands OWNER TO postgres;

--
-- Name: readings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.readings (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    date timestamp without time zone NOT NULL
);


ALTER TABLE public.readings OWNER TO postgres;

--
-- Name: readings_detalles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detail_readings (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idreading numeric(10,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarga numeric(2,0) NOT NULL,
    idhose numeric(2,0) NOT NULL,
    volume_e_reading numeric(16,6),
    lectura_e_importe numeric(16,6),
    volume_m_reading numeric(16,6),
    lectura_m_importe numeric(16,6)
);


ALTER TABLE public.detail_readings OWNER TO postgres;

--
-- Name: readings_parciales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partial_readings (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarga numeric(2,0) NOT NULL,
    idhose numeric(2,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    volume_reading numeric(16,0),
    lectura_importe numeric(16,0)
);


ALTER TABLE public.partial_readings OWNER TO postgres;

--
-- Name: licenses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.licenses (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    name character varying(30) NOT NULL,
    license character varying(175) NOT NULL
);


ALTER TABLE public.licenses OWNER TO postgres;

--
-- Name: mangueras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fuel_hoses (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarga numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    number character varying(2) NOT NULL,
    idproduct character varying(30),
    tank numeric(2,0),
    reading numeric(16,6),
    reading_date timestamp without time zone,
    key_identification character varying(30)
);


ALTER TABLE public.fuel_hoses OWNER TO postgres;

--
-- Name: messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.messages (
    msgnr character varying(4) NOT NULL,
    text character varying(100) NOT NULL,
    type character(1) NOT NULL
);


ALTER TABLE public.messages OWNER TO postgres;

--
-- Name: metodos_pago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_methods (
    id character(1) NOT NULL,
    name character varying(50) NOT NULL,
    formapago character(1),
    module character varying(50),
    visible character(1) NOT NULL,
    cambio character(1),
    sat_key character(2),
    order numeric(2,0),
    monedero character(1),
    sat99 character(2),
    vta_publico character(1)
);


ALTER TABLE public.payment_methods OWNER TO postgres;

--
-- Name: objetos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.objects (
    idowner character varying(4) NOT NULL,
    id character varying(10) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.objetos OWNER TO postgres;

--
-- Name: owners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.owners (
    id character varying(4) NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.owners OWNER TO postgres;

--
-- Name: pemex_flota_entrega; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pemex_flota_entrega (
    id numeric(10,0) NOT NULL,
    transaction numeric(10,0) NOT NULL
);


ALTER TABLE public.pemex_flota_entrega OWNER TO postgres;

--
-- Name: pemex_flota_recepcion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pemex_flota_recepcion (
    id numeric(10,0) NOT NULL,
    restitucion numeric(12,3) NOT NULL
);


ALTER TABLE public.pemex_flota_recepcion OWNER TO postgres;

--
-- Name: perifericos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.perifericos (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    host character varying(50) NOT NULL,
    portname character varying(30) NOT NULL,
    baudrate numeric(6,0) NOT NULL,
    databits numeric(1,0) NOT NULL,
    parity numeric(1,0) NOT NULL,
    stopbits numeric(1,0) NOT NULL,
    flowcontrol numeric(1,0) NOT NULL,
    type character varying(1) NOT NULL,
    readtimeout numeric(4,0) NOT NULL,
    opentimeout numeric(4,0) NOT NULL,
    dtr numeric(1,0) NOT NULL,
    classification numeric(1,0) NOT NULL
);


ALTER TABLE public.perifericos OWNER TO postgres;

--
-- Name: posiciones_carga; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posiciones_carga (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    posicion character varying(2) NOT NULL,
    lado character varying(1) NOT NULL,
    modoventa numeric(1,0) NOT NULL,
    code character varying(2),
    status character varying(10)
);


ALTER TABLE public.posiciones_carga OWNER TO postgres;

--
-- Name: posiciones_carga_params; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posiciones_carga_params (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarga numeric(2,0) NOT NULL,
    name character varying(20) NOT NULL,
    value character varying(50) NOT NULL
);


ALTER TABLE public.posiciones_carga_params OWNER TO postgres;

--
-- Name: pricing_as; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pricing_as (
    idowner character varying(4) NOT NULL,
    id character varying(4) NOT NULL,
    description character varying(100) NOT NULL,
    column1 character varying(30) NOT NULL,
    column1d character varying(30) NOT NULL,
    column1p numeric(4,0),
    column2 character varying(30),
    column2d character varying(30),
    column2p numeric(4,0),
    column3 character varying(30),
    column3d character varying(30),
    column3p numeric(4,0),
    column4 character varying(30),
    column4d character varying(30),
    column4p numeric(4,0),
    column5 character varying(30),
    column5d character varying(30),
    column5p numeric(4,0),
    column6 character varying(30),
    column6d character varying(30),
    column6p numeric(4,0),
    column7 character varying(30),
    column7d character varying(30),
    column7p numeric(4,0),
    column8 character varying(30),
    column8d character varying(30),
    column8p numeric(4,0),
    column9 character varying(30),
    column9d character varying(30),
    column9p numeric(4,0)
);


ALTER TABLE public.pricing_as OWNER TO postgres;

--
-- Name: pricing_as_c; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pricing_as_c (
    idowner character varying(4) NOT NULL,
    idas character varying(4) NOT NULL,
    id numeric(4,0) NOT NULL,
    idcond character varying(5) NOT NULL,
    column1 character varying(30) NOT NULL,
    column2 character varying(30),
    column3 character varying(30),
    column4 character varying(30),
    column5 character varying(30),
    column6 character varying(30),
    column7 character varying(30),
    column8 character varying(30),
    column9 character varying(30)
);


ALTER TABLE public.pricing_as_c OWNER TO postgres;

--
-- Name: pricing_as_cv; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pricing_as_cv (
    idowner character varying(4) NOT NULL,
    idas character varying(4) NOT NULL,
    idasc numeric(4,0) NOT NULL,
    validfrom timestamp without time zone NOT NULL,
    validto timestamp without time zone NOT NULL,
    condvalue numeric(16,6) NOT NULL,
    condbase character(1) NOT NULL
);


ALTER TABLE public.pricing_as_cv OWNER TO postgres;

--
-- Name: pricing_cond; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pricing_cond (
    idowner character varying(4) NOT NULL,
    id character varying(5) NOT NULL,
    description character varying(50) NOT NULL,
    classification character(1) NOT NULL,
    inprice character(1)
);


ALTER TABLE public.pricing_cond OWNER TO postgres;

--
-- Name: pricing_cond_tax; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pricing_cond_tax (
    idowner character varying(4) NOT NULL,
    idcond character varying(5) NOT NULL,
    code character varying(10) NOT NULL,
    display character(1) NOT NULL
);


ALTER TABLE public.pricing_cond_tax OWNER TO postgres;

--
-- Name: pricing_proc_assign; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pricing_proc_assign (
    idowner character varying(4) NOT NULL,
    idproc character varying(5) NOT NULL,
    secuence numeric(3,0) NOT NULL,
    idcond character varying(5) NOT NULL,
    idas character varying(4) NOT NULL
);


ALTER TABLE public.pricing_proc_assign OWNER TO postgres;

--
-- Name: pricing_procedure; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pricing_procedure (
    idowner character varying(4) NOT NULL,
    id character varying(5) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.pricing_procedure OWNER TO postgres;

--
-- Name: pricing_tax_class; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pricing_tax_class (
    idowner character varying(4) NOT NULL,
    idcond character varying(5) NOT NULL,
    classification character(1) NOT NULL,
    description character varying(50) NOT NULL
);


ALTER TABLE public.pricing_tax_class OWNER TO postgres;

--
-- Name: product_tax; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_tax (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    product character varying(30) NOT NULL,
    tax character(5) NOT NULL,
    usar_value character(1) NOT NULL
);


ALTER TABLE public.product_tax OWNER TO postgres;

--
-- Name: product_tax_value; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_tax_value (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    product character varying(30) NOT NULL,
    tax character(5) NOT NULL,
    _from timestamp without time zone NOT NULL,
    value numeric(16,6) NOT NULL
);


ALTER TABLE public.product_tax_value OWNER TO postgres;

--
-- Name: product_precio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_price (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    product character varying(30) NOT NULL,
    _from timestamp without time zone NOT NULL,
    value numeric(16,6) NOT NULL
);


ALTER TABLE public.product_price OWNER TO postgres;

--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    id character varying(30) NOT NULL,
    unidad character varying(15) NOT NULL,
    category character varying(20) NOT NULL,
    description character varying(100) NOT NULL,
    deleted character(1)
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_adicional; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.additional_products (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idproduct character varying(30) NOT NULL,
    barcode character varying(50) NOT NULL
);


ALTER TABLE public.additional_products OWNER TO postgres;

--
-- Name: products_cre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cre_products (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idproduct character varying(30) NOT NULL,
    key_product character(2) NOT NULL,
    key_subproduct character(1) NOT NULL,
    key_brand character varying(3) NOT NULL,
    name_brand character varying(100) NOT NULL,
    octane_fuel numeric(3,0),
    octane_ethanol character(1),
    octane_comp_fuel numeric(5,3),
    other character varying(30),
    cet numeric(8,8),
    sat_key_product character varying(4),
    sat_key_subproduct character varying(4)
);


ALTER TABLE public.cre_products_cre OWNER TO postgres;

--
-- Name: products_taxes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_taxes (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idproduct character varying(30) NOT NULL,
    idcond character varying(5) NOT NULL,
    classification character(1) NOT NULL
);


ALTER TABLE public.products_taxes OWNER TO postgres;

--
-- Name: proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supplier (
    id numeric(2,0) NOT NULL,
    name character varying(100) NOT NULL,
    type character(1) NOT NULL,
    rfc character varying(13),
    permiso character varying(30),
    deleted character(1)
);


ALTER TABLE public.supplier OWNER TO postgres;

--
-- Name: recepcion_record; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.record_receipt (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    record_entrada numeric(2,0) NOT NULL,
    product character varying(30) NOT NULL,
    ignore character(1),
    date timestamp without time zone NOT NULL,
    date_ini timestamp without time zone NOT NULL,
    date_fin timestamp without time zone NOT NULL,
    totalizador_ini numeric(16,6) NOT NULL,
    totalizador_fin numeric(16,6) NOT NULL,
    cantidad numeric(16,6) NOT NULL,
    despachador numeric(3,0),
    temperature numeric(5,2),
    cantidad_ct numeric(16,6)
);


ALTER TABLE public.record_receipt OWNER TO postgres;

--
-- Name: recepcion_record_doc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.record_receipt_doc (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    record_receipt numeric(10,0) NOT NULL,
    record_doc numeric(10,0) NOT NULL
);


ALTER TABLE public.record_receipt_doc OWNER TO postgres;

--
-- Name: recepciones_documentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.documents_receipt (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    type character varying(2) NOT NULL,
    folio character varying(30) NOT NULL,
    keyvehiculo character varying(20) NOT NULL,
    tad character varying(3),
    voldoc numeric(12,6) NOT NULL,
    importe numeric(16,6),
    record timestamp without time zone NOT NULL,
    price numeric(12,6),
    permiso_transporte character varying(30),
    supplier numeric(2,0),
    carrier numeric(2,0),
    temperature numeric(5,2),
    vol_ct numeric(12,6),
    cfdi_timbre character(36),
    cfdi_type character(1),
    cfdi_precio numeric(13,6),
    cfdi_volumen numeric(12,6),
    cfdi_date timestamp without time zone,
    usr_created character varying(15),
    usr_modificacion character varying(15),
    modification timestamp without time zone
);


ALTER TABLE public.documents_receipt OWNER TO postgres;

--
-- Name: recepciones_tanq_doc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tank_receipt_docs (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idtank numeric(2,0) NOT NULL,
    idrece numeric(10,0) NOT NULL,
    iddoc numeric(10,0) NOT NULL
);


ALTER TABLE public.recepciones_tanq_doc OWNER TO postgres;

--
-- Name: recepciones_tanks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tank_receipts (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idtank numeric(2,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    initDate timestamp without time zone NOT NULL,
    endDate timestamp without time zone NOT NULL,
    initvol numeric(12,6) NOT NULL,
    finvol numeric(12,6) NOT NULL,
    initwatervol numeric(12,6) NOT NULL,
    endwatervol numeric(12,6) NOT NULL,
    inittemp numeric(5,2) NOT NULL,
    fintemp numeric(5,2) NOT NULL,
    ignore character(1),
    cvfolio numeric(10,0),
    initvol_ct numeric(12,6),
    finvol_ct numeric(12,6)
);


ALTER TABLE public.tank_receipts OWNER TO postgres;

--
-- Name: record_entrada; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.registro_entrada (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    name character varying(15) NOT NULL,
    number character varying(2) NOT NULL,
    code character varying(2) NOT NULL,
    interface_comm numeric(2,0) NOT NULL,
    product character varying(30),
    key_identification character varying(30),
    desc_identification character varying(250),
    diameter numeric(6,3),
    sismed numeric(3,0)
);


ALTER TABLE public.registro_entrada OWNER TO postgres;

--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    idowner character varying(4) NOT NULL,
    id numeric(2,0) NOT NULL,
    name character varying(50) NOT NULL,
    module character varying(50)
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_estaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles_stations (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    user character varying(15) NOT NULL
);


ALTER TABLE public.roles_stations OWNER TO postgres;

--
-- Name: roles_objetos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles_objects (
    idowner character varying(4) NOT NULL,
    idrol numeric(4,0) NOT NULL,
    idobject character varying(10) NOT NULL,
    _delete numeric(1,0) NOT NULL,
    _create numeric(1,0) NOT NULL,
    _alter numeric(1,0) NOT NULL,
    reading numeric(1,0) NOT NULL
);


ALTER TABLE public.roles_objects OWNER TO postgres;

--
-- Name: roles_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles_users (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    user character varying(15) NOT NULL,
    idrol numeric(4,0) NOT NULL
);


ALTER TABLE public.roles_users OWNER TO postgres;

--
-- Name: sat_logbook_diario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sat_logbook_daily (
    date timestamp without time zone NOT NULL,
    status character(1),
    generation timestamp without time zone,
    file character varying(250)
);


ALTER TABLE public.sat_logbook_daily OWNER TO postgres;

--
-- Name: sat_logbook_mensual; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sat_logbook_monthly (
    date timestamp without time zone NOT NULL,
    status character(1),
    generation timestamp without time zone,
    file character varying(250)
);


ALTER TABLE public.sat_logbook_monthly OWNER TO postgres;

--
-- Name: sistema_medicion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.measuremenet_system (
    id numeric(3,0) NOT NULL,
    key character varying(30),
    description character varying(250),
    vig_cal timestamp without time zone,
    doubt numeric(5,3)
);


ALTER TABLE public.measuremenet_system OWNER TO postgres;

--
-- Name: surtido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.assortmen (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    location numeric(2,0) NOT NULL,
    product character varying(30) NOT NULL,
    cantidad numeric(10,0) NOT NULL,
    origin numeric(2,0)
);


ALTER TABLE public.assortmen OWNER TO postgres;

--
-- Name: tad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tad (
    id character varying(3) NOT NULL,
    name character varying(50),
    permission character varying(30),
    deleted character(1)
);


ALTER TABLE public.tad OWNER TO postgres;

--
-- Name: tanks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tanks (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    number character varying(2) NOT NULL,
    totalcapacity numeric(12,6) NOT NULL,
    capacidadoperativa numeric(12,6) NOT NULL,
    usefulcapacity numeric(12,6) NOT NULL,
    capacidadfondaje numeric(12,6) NOT NULL,
    volumenminopera numeric(12,6) NOT NULL,
    idproduct character varying(30),
    idcmt numeric(2,0),
    cmtcode character varying(2) NOT NULL,
    state character varying(1) NOT NULL,
    key_identification character varying(30),
    desc_identification character varying(250),
    gauged_validity_period timestamp without time zone,
    sismed numeric(3,0)
);


ALTER TABLE public.tanks OWNER TO postgres;

--
-- Name: transportista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrier (
    id numeric(2,0) NOT NULL,
    name character varying(100) NOT NULL,
    permission character varying(30) NOT NULL,
    deleted character(1)
);


ALTER TABLE public.carrier OWNER TO postgres;

--
-- Name: turnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shifts (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(1,0) NOT NULL,
    name character varying(30) NOT NULL,
    horainicio timestamp without time zone NOT NULL
);


ALTER TABLE public.shifts OWNER TO postgres;

--
-- Name: turnos_cortes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.turnos_cortes (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idturnoinicio numeric(10,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarga numeric(2,0) NOT NULL,
    dateinicio timestamp without time zone NOT NULL,
    datefin timestamp without time zone,
    iddespachador numeric(3,0),
    importe numeric(16,6) NOT NULL,
    sign character varying(200) NOT NULL
);


ALTER TABLE public.turnos_cortes OWNER TO postgres;

--
-- Name: turnos_inicio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.turnos_inicio (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    idturno numeric(1,0) NOT NULL,
    dateinicio timestamp without time zone NOT NULL,
    datefin timestamp without time zone,
    idreading numeric(10,0)
);


ALTER TABLE public.turnos_inicio OWNER TO postgres;

--
-- Name: locationes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.locations (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    name character varying(50) NOT NULL,
    position numeric(2,0)
);


ALTER TABLE public.locations OWNER TO postgres;

--
-- Name: locationes_asignaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.assignments_locations (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idlocation numeric(2,0) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarca numeric(2,0) NOT NULL
);


ALTER TABLE public.locationes_asignaciones OWNER TO postgres;

--
-- Name: locationes_turnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.locations_shift (
    owner character varying(4) NOT NULL,
    company numeric(2,0) NOT NULL,
    station numeric(2,0) NOT NULL,
    shift numeric(10,0) NOT NULL,
    location numeric(2,0) NOT NULL,
    date_inv timestamp without time zone NOT NULL
);


ALTER TABLE public.locations_shift OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    user character varying(15) NOT NULL,
    name character varying(100) NOT NULL,
    passwd character varying(40),
    email character varying(100) NOT NULL,
    rfid character varying(30)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    subtotal numeric(16,6) NOT NULL,
    discounts numeric(16,6) NOT NULL,
    totalimpret numeric(16,6) NOT NULL,
    totalimptras numeric(16,6) NOT NULL,
    total numeric(16,6) NOT NULL,
    state numeric(1,0) NOT NULL,
    cfdi character(36),
    total_payment numeric(16,6),
    dig_seg numeric(4,0)
);


ALTER TABLE public.sales OWNER TO postgres;

--
-- Name: sales_taxs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sale_taxes (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idsale numeric(10,0) NOT NULL,
    iditemsale numeric(10,0) NOT NULL,
    type character(1) NOT NULL,
    tax character varying(10) NOT NULL,
    tasa numeric(7,4) NOT NULL,
    importe numeric(16,6) NOT NULL
);


ALTER TABLE public.sale_taxes OWNER TO postgres;

--
-- Name: sales_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sale_items (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idsale numeric(10,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    idproduct character varying(30) NOT NULL,
    description character varying(100),
    unidad character varying(15),
    cantidad numeric(16,6) NOT NULL,
    price numeric(16,6) NOT NULL,
    importe numeric(16,6) NOT NULL,
    disccount numeric(16,6) NOT NULL
);


ALTER TABLE public.sale_items OWNER TO postgres;

--
-- Name: sales_pagos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sale_payments (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    idsale numeric(10,0) NOT NULL,
    id numeric(2,0) NOT NULL,
    paymentmethod character(1) NOT NULL,
    formapago character varying(2) NOT NULL,
    importe numeric(16,6) NOT NULL,
    reference character varying(20),
    cfdi character(36)
);


ALTER TABLE public.sale_payments OWNER TO postgres;

--
-- Name: sales_varios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sale_various (
    idowner character varying(4) NOT NULL,
    idcompany numeric(2,0) NOT NULL,
    idstation numeric(2,0) NOT NULL,
    id numeric(10,0) NOT NULL,
    idlocation numeric(2,0) NOT NULL,
    date timestamp without time zone NOT NULL,
    idproduct character varying(30) NOT NULL,
    cantidad numeric(16,6) NOT NULL,
    salesprice numeric(16,6) NOT NULL,
    importe numeric(16,6) NOT NULL,
    state numeric(1,0) NOT NULL,
    idsale numeric(10,0),
    idsaleitem numeric(5,0),
    paymentmethod character varying(1) NOT NULL,
    formapago character varying(2) NOT NULL,
    idisland numeric(2,0) NOT NULL,
    iddispensario numeric(2,0) NOT NULL,
    idposicioncarga numeric(2,0) NOT NULL,
    despachador numeric(3,0),
    turno_inicio numeric(10,0)
);


ALTER TABLE public.sale_various OWNER TO postgres;

--
-- Name: versiones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.versions (
    file character varying(50) NOT NULL,
    ver character varying(30) NOT NULL
);


ALTER TABLE public.versions OWNER TO postgres;

