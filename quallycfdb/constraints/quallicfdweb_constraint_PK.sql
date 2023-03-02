--
-- Name: qg_estacion_param qg_estacion_param_pk; Type: CONSTRAINT; Schema: quallicfdweb; Owner: postgres
--

ALTER TABLE ONLY quallicfdweb.qg_estacion_param
    ADD CONSTRAINT qg_estacion_param_pk PRIMARY KEY (estacion, nombre);


--
-- Name: qg_estacion qg_estacion_pk; Type: CONSTRAINT; Schema: quallicfdweb; Owner: postgres
--

ALTER TABLE ONLY quallicfdweb.qg_estacion
    ADD CONSTRAINT qg_estacion_pk PRIMARY KEY (estacion);


--
-- Name: qg_licencia qg_licencia_pk; Type: CONSTRAINT; Schema: quallicfdweb; Owner: postgres
--

ALTER TABLE ONLY quallicfdweb.qg_licencia
    ADD CONSTRAINT qg_licencia_pk PRIMARY KEY (estacion, nombre);


--
-- Name: qg_ticket_item qg_ticket_item_pk; Type: CONSTRAINT; Schema: quallicfdweb; Owner: postgres
--

ALTER TABLE ONLY quallicfdweb.qg_ticket_item
    ADD CONSTRAINT qg_ticket_item_pk PRIMARY KEY (estacion, ticket, id);


--
-- Name: qg_ticket_pago qg_ticket_pago_pk; Type: CONSTRAINT; Schema: quallicfdweb; Owner: postgres
--

ALTER TABLE ONLY quallicfdweb.qg_ticket_pago
    ADD CONSTRAINT qg_ticket_pago_pk PRIMARY KEY (estacion, ticket, id);


--
-- Name: qg_ticket qg_ticket_pk; Type: CONSTRAINT; Schema: quallicfdweb; Owner: postgres
--

ALTER TABLE ONLY quallicfdweb.qg_ticket
    ADD CONSTRAINT qg_ticket_pk PRIMARY KEY (estacion, id);


--
-- Name: qg_webservice qg_webservice_pk; Type: CONSTRAINT; Schema: quallicfdweb; Owner: postgres
--

ALTER TABLE ONLY quallicfdweb.qg_webservice
    ADD CONSTRAINT qg_webservice_pk PRIMARY KEY (estacion);
