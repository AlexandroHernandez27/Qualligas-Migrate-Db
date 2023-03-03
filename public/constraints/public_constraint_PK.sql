--
-- Name: alarmas alarmas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- ALTER TABLE ONLY public.alarmas
ALTER TABLE ONLY public.alarms
    -- ADD CONSTRAINT alarmas_pk PRIMARY KEY (idowner, idempresa, idestacion, tipo, fecha);
    ADD CONSTRAINT alarms_pk PRIMARY KEY (idowner, idcompany, idstation, type, date)


--
-- Name: anticipos_items anticipos_items_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_advance_paymments
    ADD CONSTRAINT item_advance_paymments_pk PRIMARY KEY (idowner, idcompany, idstation, idturnoinicio, idisland, iddispensario, idposicioncarga, date, id);


--
-- Name: anticipos_limites anticipos_limites_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.limit_advance_paymments
    ADD CONSTRAINT limit_advance_paymments_pk PRIMARY KEY (paymentmethod);


--
-- Name: anticipos anticipos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advance_paymments
    ADD CONSTRAINT advance_paymments_pk PRIMARY KEY (idowner, idcompany, idstation, idturnoinicio, idisland, iddispensario, idposicioncarga, date);


--
-- Name: bitacora bitacora_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logbook
    ADD CONSTRAINT logbook_pk PRIMARY KEY (id);


--
-- Name: cargas cargas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargas
    ADD CONSTRAINT cargas_pk PRIMARY KEY (idowner, idcompany, idstation, id);


--
-- Name: catalogos catalogos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalogs
    ADD CONSTRAINT catalogs_pk PRIMARY KEY (idowner, catalog, catalogaccess, access, code);


--
-- Name: cfdi cfdi_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cfdi
    ADD CONSTRAINT cfdi_pk PRIMARY KEY (id);


--
-- Name: cfdi_request cfdi_request_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cfdi_request
    ADD CONSTRAINT cfdi_request_pk PRIMARY KEY (id);


--
-- Name: cfdsign cfdsign_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cfdsign
    ADD CONSTRAINT cfdsign_pk PRIMARY KEY (venta);


--
-- Name: cmt_param cmt_param_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cmt_param
    ADD CONSTRAINT cmt_param_pk PRIMARY KEY (idowner, idcompany, idstation, cmt, name);


--
-- Name: cmts cmts_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cmts
    ADD CONSTRAINT cmts_pk PRIMARY KEY (idowner, idcompany, idstation, id);


--
-- Name: contactos contactos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pk PRIMARY KEY (idowner, idaddress);


--
-- Name: cre_bitacora cre_bitacora_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cre_logbook
    ADD CONSTRAINT cre_logbook_pk PRIMARY KEY (report, date);


--
-- Name: cv_archivo cv_archivo_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cv_file
    ADD CONSTRAINT cv_file_pk PRIMARY KEY (name);


--
-- Name: cv_bitacora cv_bitacora_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cv_logbook
    ADD CONSTRAINT cv_logbook_pk PRIMARY KEY (idowner, idcompany, idstation, date);


--
-- Name: cv_iniop cv_iniop_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cv_iniop
    ADD CONSTRAINT cv_iniop_pk PRIMARY KEY (idowner, idcompany, idstation, filename);


--
-- Name: despachadores despachadores_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.despachadores
    ADD CONSTRAINT despachadores_pk PRIMARY KEY (idowner, idcompany, id);


--
-- Name: dispensarios dispensarios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dispensarios
    ADD CONSTRAINT dispensarios_pk PRIMARY KEY (idowner, idcompany, idstation, idisland, id);


--
-- Name: domicilios domicilios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT domicilios_pk PRIMARY KEY (idowner, id);


--
-- Name: emails emails_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emails
    ADD CONSTRAINT emails_pk PRIMARY KEY (idowner, idaddres, id);


--
-- Name: empresas empresas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pk PRIMARY KEY (idowner, id);


--
-- Name: empresas_pricing empresas_pricing_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresas_pricing
    ADD CONSTRAINT empresas_pricing_pk PRIMARY KEY (idowner, idcompany);


--
-- Name: estaciones_params estaciones_params_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stations_params
    ADD CONSTRAINT stations_params_pk PRIMARY KEY (idowner, idcompany, idstation, name);


--
-- Name: estaciones estaciones_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stations
    ADD CONSTRAINT stations_pk PRIMARY KEY (idowner, idcompany, id);


--
-- Name: existencias_tanques existencias_tanques_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.existencias_tanques
    ADD CONSTRAINT existencias_tanques_pk PRIMARY KEY (idowner, idcompany, idstation, idtank, date);


--
-- Name: impuesto impuesto_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tax
    ADD CONSTRAINT tax_pk PRIMARY KEY (id);


--
-- Name: impuesto_valor impuesto_valor_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tax_value
    ADD CONSTRAINT tax_value_pk PRIMARY KEY (tax, _from);


--
-- Name: interfases_com_params interfases_com_params_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comm_params_interfaces
    ADD CONSTRAINT comm_params_interfaces_pk PRIMARY KEY (idowner, idcompany, idstation, idinterface, name);


--
-- Name: interfases_comunicacion interfases_comunicacion_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.communication_interfaces
    ADD CONSTRAINT communication_interfaces_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: inventarios_doctos_mvtos inventarios_doctos_mvtos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventarios_doctos_mvtos
    ADD CONSTRAINT inventarios_doctos_mvtos_pk PRIMARY KEY (idowner, idcompany, idstation, iddocto, id);


--
-- Name: inventarios_doctos inventarios_doctos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventarios_doctos
    ADD CONSTRAINT inventarios_doctos_pk PRIMARY KEY (idowner, idcompany, idstation, id);


--
-- Name: inventarios inventarios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pk PRIMARY KEY (idowner, idcompany, idstation, idlocation, idproduct, date);


--
-- Name: islas islas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.islands
    ADD CONSTRAINT islands_pk PRIMARY KEY (idowner, idcompany, idstation, id);


--
-- Name: lecturas_detalles lecturas_detalles_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detail_readings
    ADD CONSTRAINT detail_readings_pk PRIMARY KEY (idowner, idcompany, idstation, idreading, idisland, iddispensario, idposicioncarga, idmanguera);


--
-- Name: lecturas_parciales lecturas_parciales_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partial_readings
    ADD CONSTRAINT partial_readings_pk PRIMARY KEY (idowner, idcomapny, idstation, idisland, iddispensario, idposicioncarga, idmanguera);


--
-- Name: lecturas lecturas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.readings
    ADD CONSTRAINT readings_pk PRIMARY KEY (idowner, idcompany, idstation, id);


--
-- Name: licenses licenses_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licenses
    ADD CONSTRAINT licenses_pk PRIMARY KEY (idowner, idcompany, idstation, name);


--
-- Name: mangueras mangueras_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fuel_hoses
    ADD CONSTRAINT fuel_hoses_pk PRIMARY KEY (idowner, idcompany, idstation, idisland, iddispensario, idposicioncarga, id);


--
-- Name: messages messages_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pk PRIMARY KEY (msgnr);


--
-- Name: metodos_pago metodos_pago_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_methods
    ADD CONSTRAINT payment_methods_pk PRIMARY KEY (id);


--
-- Name: objetos objetos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objects
    ADD CONSTRAINT objects_pk PRIMARY KEY (idowner, id);


--
-- Name: owners owners_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.owners
    ADD CONSTRAINT owners_pk PRIMARY KEY (id);


--
-- Name: pemex_flota_entrega pemex_flota_entrega_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pemex_flota_entrega
    ADD CONSTRAINT pemex_flota_entrega_pk PRIMARY KEY (id);


--
-- Name: pemex_flota_recepcion pemex_flota_recepcion_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pemex_flota_recepcion
    ADD CONSTRAINT pemex_flota_recepcion_pk PRIMARY KEY (id);


--
-- Name: perifericos perifericos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perifericos
    ADD CONSTRAINT perifericos_pk PRIMARY KEY (idowner, idcompany, idstation, id);


--
-- Name: posiciones_carga_params posiciones_carga_params_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posiciones_carga_params
    ADD CONSTRAINT posiciones_carga_params_pk PRIMARY KEY (idowner, idcompany, idstation, idisland, iddispensario, idposicioncarga, name);


--
-- Name: posiciones_carga posiciones_carga_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posiciones_carga
    ADD CONSTRAINT posiciones_carga_pk PRIMARY KEY (idowner, idcompany, idstation, idisland, iddispensario, id);


--
-- Name: pricing_as_c pricing_as_c_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricing_as_c
    ADD CONSTRAINT pricing_as_c_pk PRIMARY KEY (idowner, idas, id);


--
-- Name: pricing_as_cv pricing_as_cv_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricing_as_cv
    ADD CONSTRAINT pricing_as_cv_pk PRIMARY KEY (idowner, idas, idasc, validfrom);


--
-- Name: pricing_as pricing_as_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricing_as
    ADD CONSTRAINT pricing_as_pk PRIMARY KEY (idowner, id);


--
-- Name: pricing_cond pricing_cond_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricing_cond
    ADD CONSTRAINT pricing_cond_pk PRIMARY KEY (idowner, id);


--
-- Name: pricing_cond_tax pricing_cond_tax_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricing_cond_tax
    ADD CONSTRAINT pricing_cond_tax_pk PRIMARY KEY (idowner, idcond);


--
-- Name: pricing_proc_assign pricing_proc_assign_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricing_proc_assign
    ADD CONSTRAINT pricing_proc_assign_pk PRIMARY KEY (idowner, idproc, sequence);


--
-- Name: pricing_procedure pricing_procedure_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricing_procedure
    ADD CONSTRAINT pricing_procedure_pk PRIMARY KEY (idowner, id);


--
-- Name: pricing_tax_class pricing_tax_class_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricing_tax_class
    ADD CONSTRAINT pricing_tax_class_pk PRIMARY KEY (idowner, idcond, classification);


--
-- Name: producto_impuesto producto_impuesto_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_tax
    ADD CONSTRAINT product_tax_pk PRIMARY KEY (product, tax);


--
-- Name: producto_impuesto_valor producto_impuesto_valor_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_tax_value
    ADD CONSTRAINT product_tax_value_pk PRIMARY KEY (product, tax, _from);


--
-- Name: producto_precio producto_precio_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_price
    ADD CONSTRAINT product_price_pk PRIMARY KEY (product, _from);


--
-- Name: productos_adicional productos_adicional_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.additional_products
    ADD CONSTRAINT additional_products_pk PRIMARY KEY (idowner, idcompany, idproduct);


--
-- Name: productos_cre productos_cre_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cre_products
    ADD CONSTRAINT cre_products_pk PRIMARY KEY (idowner, idcompany, idproduct);


--
-- Name: productos productos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pk PRIMARY KEY (idowner, idcompany, id);


--
-- Name: productos_taxes productos_taxes_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_taxes
    ADD CONSTRAINT productos_taxes_pk PRIMARY KEY (idowner, idcompany, idproduct, idcond);


--
-- Name: proveedor proveedor_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pk PRIMARY KEY (id);


--
-- Name: recepcion_registro_doc recepcion_registro_doc_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.record_receipt_doc
    ADD CONSTRAINT record_receipt_doc_pk PRIMARY KEY (idowner, idcompany, idstation, record_receipt, record_doc);


--
-- Name: recepcion_registro recepcion_registro_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.record_receipt
    ADD CONSTRAINT record_receipt PRIMARY KEY (idowner, idcompany, idstation, id);


--
-- Name: recepciones_documentos recepciones_documentos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documents_receipt
    ADD CONSTRAINT documents_receipt_pk PRIMARY KEY (idowner, idcompany, idstation, id);


--
-- Name: recepciones_tanq_doc recepciones_tanq_doc_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tank_receipt_docs
    ADD CONSTRAINT tank_receipt_docs_pk PRIMARY KEY (idowner, idcompany, idstation, idtank, idrece, iddoc);


--
-- Name: recepciones_tanques recepciones_tanques_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tank_receipts
    ADD CONSTRAINT tank_receipts_pk PRIMARY KEY (idowner, idcompany, idstation, idtank, id);


--
-- Name: registro_entrada registro_entrada_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registro_entrada
    ADD CONSTRAINT registro_entrada_pk PRIMARY KEY (idowner, idcompany, idstation, id);


--
-- Name: roles_estaciones roles_estaciones_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_stations
    ADD CONSTRAINT roles_stations_pk PRIMARY KEY (idowner, idcompany, idstation, user);


--
-- Name: roles_objetos roles_objetos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_objects
    ADD CONSTRAINT roles_objects_pk PRIMARY KEY (idowner, idrol, idobject);


--
-- Name: roles roles_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pk PRIMARY KEY (idowner, id);


--
-- Name: roles_usuarios roles_usuarios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_users
    ADD CONSTRAINT roles_usuarios_pk PRIMARY KEY (idowner, idcompany, user, idrol);


--
-- Name: sat_bitacora_diario sat_bitacora_diario_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_logbook_daily
    ADD CONSTRAINT sat_logbook_daily_pk PRIMARY KEY (date);


--
-- Name: sat_bitacora_mensual sat_bitacora_mensual_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_logbook_monthly
    ADD CONSTRAINT sat_logbook_monthly_pk PRIMARY KEY (fecha);


--
-- Name: sistema_medicion sistema_medicion_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.measuremenet_system
    ADD CONSTRAINT measuremenet_system_pk PRIMARY KEY (id);


--
-- Name: surtido surtido_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assortmen
    ADD CONSTRAINT assortmen_pk PRIMARY KEY (idowner, idcompany, idstation, location, product);


--
-- Name: tad tad_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tad
    ADD CONSTRAINT tad_pk PRIMARY KEY (id);


--
-- Name: tanques tanques_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tanks
    ADD CONSTRAINT tanks_pk PRIMARY KEY (idowner, idcompany, idstation, id);


--
-- Name: transportista transportista_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrier
    ADD CONSTRAINT carrier_pk PRIMARY KEY (id);


--
-- Name: turnos_cortes turnos_cortes_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turnos_cortes
    ADD CONSTRAINT turnos_cortes_pk PRIMARY KEY (idowner, idcompany, idstation, idturnoinicio, idisland, iddispensario, idposicioncarga);


--
-- Name: turnos_inicio turnos_inicio_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turnos_inicio
    ADD CONSTRAINT turnos_inicio_pk PRIMARY KEY (idowner, idcompany, idstation, id);


--
-- Name: turnos turnos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shifts
    ADD CONSTRAINT shifts_pk PRIMARY KEY (idowner, idcompany, idstation, id);


--
-- Name: ubicaciones_asignaciones ubicaciones_asignaciones_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assignments_locations
    ADD CONSTRAINT assignments_locations_pk PRIMARY KEY (idowner, idcompany, idstation, idisland, iddispensario, idposicioncarca);


--
-- Name: ubicaciones ubicaciones_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pk PRIMARY KEY (idowner, idcompany, idstation, id);


--
-- Name: ubicaciones_turnos ubicaciones_turnos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locations_shift
    ADD CONSTRAINT ubicaciones_turnos_pk PRIMARY KEY (owner, company, station, shift, location);


--
-- Name: usuarios usuarios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pk PRIMARY KEY (idowner, idcompany, user);


--
-- Name: ventas_impuestos ventas_impuestos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale_taxes
    ADD CONSTRAINT sale_taxes_pk PRIMARY KEY (idowner, idcompany, idstation, idsale, idsalesitem, type, tax);


--
-- Name: ventas_items ventas_items_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale_items
    ADD CONSTRAINT sale_items_pk PRIMARY KEY (idowner, idempresa, idestacion, idventa, id);


--
-- Name: ventas_pagos ventas_pagos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale_payments
    ADD CONSTRAINT sale_payments_pk PRIMARY KEY (idowner, idcompany, idstation, idsale, id);


--
-- Name: ventas ventas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pk PRIMARY KEY (idowner, idcompany, idstation, id);


--
-- Name: ventas_varios ventas_varios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale_various
    ADD CONSTRAINT sale_various_pk PRIMARY KEY (idowner, idcompany, idstation, id);


--
-- Name: versiones versiones_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.versions
    ADD CONSTRAINT versions_pk PRIMARY KEY (file);
