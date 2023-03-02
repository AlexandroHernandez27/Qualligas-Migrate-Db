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

ALTER TABLE ONLY public.anticipos_items
    ADD CONSTRAINT anticipos_items_pk PRIMARY KEY (idowner, idempresa, idestacion, idturnoinicio, idisla, iddispensario, idposicioncarga, fecha, id);


--
-- Name: anticipos_limites anticipos_limites_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anticipos_limites
    ADD CONSTRAINT anticipos_limites_pk PRIMARY KEY (metodopago);


--
-- Name: anticipos anticipos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anticipos
    ADD CONSTRAINT anticipos_pk PRIMARY KEY (idowner, idempresa, idestacion, idturnoinicio, idisla, iddispensario, idposicioncarga, fecha);


--
-- Name: bitacora bitacora_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT bitacora_pk PRIMARY KEY (id);


--
-- Name: cargas cargas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargas
    ADD CONSTRAINT cargas_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: catalogos catalogos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalogos
    ADD CONSTRAINT catalogos_pk PRIMARY KEY (idowner, catalogo, accesocatalogo, acceso, codigo);


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
    ADD CONSTRAINT cmt_param_pk PRIMARY KEY (idowner, idempresa, idestacion, cmt, nombre);


--
-- Name: cmts cmts_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cmts
    ADD CONSTRAINT cmts_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: contactos contactos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contactos
    ADD CONSTRAINT contactos_pk PRIMARY KEY (idowner, iddomicilio);


--
-- Name: cre_bitacora cre_bitacora_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cre_bitacora
    ADD CONSTRAINT cre_bitacora_pk PRIMARY KEY (reporte, fecha);


--
-- Name: cv_archivo cv_archivo_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cv_archivo
    ADD CONSTRAINT cv_archivo_pk PRIMARY KEY (nombre);


--
-- Name: cv_bitacora cv_bitacora_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cv_bitacora
    ADD CONSTRAINT cv_bitacora_pk PRIMARY KEY (idowner, idempresa, idestacion, fecha);


--
-- Name: cv_iniop cv_iniop_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cv_iniop
    ADD CONSTRAINT cv_iniop_pk PRIMARY KEY (idowner, idempresa, idestacion, filename);


--
-- Name: despachadores despachadores_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.despachadores
    ADD CONSTRAINT despachadores_pk PRIMARY KEY (idowner, idempresa, id);


--
-- Name: dispensarios dispensarios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dispensarios
    ADD CONSTRAINT dispensarios_pk PRIMARY KEY (idowner, idempresa, idestacion, idisla, id);


--
-- Name: domicilios domicilios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domicilios
    ADD CONSTRAINT domicilios_pk PRIMARY KEY (idowner, id);


--
-- Name: emails emails_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emails
    ADD CONSTRAINT emails_pk PRIMARY KEY (idowner, iddomicilio, id);


--
-- Name: empresas empresas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresas
    ADD CONSTRAINT empresas_pk PRIMARY KEY (idowner, id);


--
-- Name: empresas_pricing empresas_pricing_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresas_pricing
    ADD CONSTRAINT empresas_pricing_pk PRIMARY KEY (idowner, idempresa);


--
-- Name: estaciones_params estaciones_params_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estaciones_params
    ADD CONSTRAINT estaciones_params_pk PRIMARY KEY (idowner, idempresa, idestacion, nombre);


--
-- Name: estaciones estaciones_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estaciones
    ADD CONSTRAINT estaciones_pk PRIMARY KEY (idowner, idempresa, id);


--
-- Name: existencias_tanques existencias_tanques_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.existencias_tanques
    ADD CONSTRAINT existencias_tanques_pk PRIMARY KEY (idowner, idempresa, idestacion, idtanque, fecha);


--
-- Name: impuesto impuesto_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.impuesto
    ADD CONSTRAINT impuesto_pk PRIMARY KEY (id);


--
-- Name: impuesto_valor impuesto_valor_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.impuesto_valor
    ADD CONSTRAINT impuesto_valor_pk PRIMARY KEY (impuesto, desde);


--
-- Name: interfases_com_params interfases_com_params_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interfases_com_params
    ADD CONSTRAINT interfases_com_params_pk PRIMARY KEY (idowner, idempresa, idestacion, idinterfase, nombre);


--
-- Name: interfases_comunicacion interfases_comunicacion_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interfases_comunicacion
    ADD CONSTRAINT interfases_comunicacion_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: inventarios_doctos_mvtos inventarios_doctos_mvtos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventarios_doctos_mvtos
    ADD CONSTRAINT inventarios_doctos_mvtos_pk PRIMARY KEY (idowner, idempresa, idestacion, iddocto, id);


--
-- Name: inventarios_doctos inventarios_doctos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventarios_doctos
    ADD CONSTRAINT inventarios_doctos_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: inventarios inventarios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventarios
    ADD CONSTRAINT inventarios_pk PRIMARY KEY (idowner, idempresa, idestacion, idubicacion, idproducto, fecha);


--
-- Name: islas islas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.islas
    ADD CONSTRAINT islas_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: lecturas_detalles lecturas_detalles_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lecturas_detalles
    ADD CONSTRAINT lecturas_detalles_pk PRIMARY KEY (idowner, idempresa, idestacion, idlectura, idisla, iddispensario, idposicioncarga, idmanguera);


--
-- Name: lecturas_parciales lecturas_parciales_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lecturas_parciales
    ADD CONSTRAINT lecturas_parciales_pk PRIMARY KEY (idowner, idempresa, idestacion, idisla, iddispensario, idposicioncarga, idmanguera);


--
-- Name: lecturas lecturas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lecturas
    ADD CONSTRAINT lecturas_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: licenses licenses_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licenses
    ADD CONSTRAINT licenses_pk PRIMARY KEY (idowner, idempresa, idestacion, name);


--
-- Name: mangueras mangueras_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mangueras
    ADD CONSTRAINT mangueras_pk PRIMARY KEY (idowner, idempresa, idestacion, idisla, iddispensario, idposicioncarga, id);


--
-- Name: messages messages_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pk PRIMARY KEY (msgnr);


--
-- Name: metodos_pago metodos_pago_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.metodos_pago
    ADD CONSTRAINT metodos_pago_pk PRIMARY KEY (id);


--
-- Name: objetos objetos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objetos
    ADD CONSTRAINT objetos_pk PRIMARY KEY (idowner, id);


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
    ADD CONSTRAINT perifericos_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: posiciones_carga_params posiciones_carga_params_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posiciones_carga_params
    ADD CONSTRAINT posiciones_carga_params_pk PRIMARY KEY (idowner, idempresa, idestacion, idisla, iddispensario, idposicioncarga, nombre);


--
-- Name: posiciones_carga posiciones_carga_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posiciones_carga
    ADD CONSTRAINT posiciones_carga_pk PRIMARY KEY (idowner, idempresa, idestacion, idisla, iddispensario, id);


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
    ADD CONSTRAINT pricing_proc_assign_pk PRIMARY KEY (idowner, idproc, secuencia);


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

ALTER TABLE ONLY public.producto_impuesto
    ADD CONSTRAINT producto_impuesto_pk PRIMARY KEY (producto, impuesto);


--
-- Name: producto_impuesto_valor producto_impuesto_valor_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto_impuesto_valor
    ADD CONSTRAINT producto_impuesto_valor_pk PRIMARY KEY (producto, impuesto, desde);


--
-- Name: producto_precio producto_precio_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto_precio
    ADD CONSTRAINT producto_precio_pk PRIMARY KEY (producto, desde);


--
-- Name: productos_adicional productos_adicional_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_adicional
    ADD CONSTRAINT productos_adicional_pk PRIMARY KEY (idowner, idempresa, idproducto);


--
-- Name: productos_cre productos_cre_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_cre
    ADD CONSTRAINT productos_cre_pk PRIMARY KEY (idowner, idempresa, idproducto);


--
-- Name: productos productos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pk PRIMARY KEY (idowner, idempresa, id);


--
-- Name: productos_taxes productos_taxes_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_taxes
    ADD CONSTRAINT productos_taxes_pk PRIMARY KEY (idowner, idempresa, idproducto, idcond);


--
-- Name: proveedor proveedor_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pk PRIMARY KEY (id);


--
-- Name: recepcion_registro_doc recepcion_registro_doc_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recepcion_registro_doc
    ADD CONSTRAINT recepcion_registro_doc_pk PRIMARY KEY (idowner, idempresa, idestacion, recepcion_registro, recepcion_documento);


--
-- Name: recepcion_registro recepcion_registro_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recepcion_registro
    ADD CONSTRAINT recepcion_registro_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: recepciones_documentos recepciones_documentos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recepciones_documentos
    ADD CONSTRAINT recepciones_documentos_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: recepciones_tanq_doc recepciones_tanq_doc_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recepciones_tanq_doc
    ADD CONSTRAINT recepciones_tanq_doc_pk PRIMARY KEY (idowner, idempresa, idestacion, idtanque, idrece, iddoc);


--
-- Name: recepciones_tanques recepciones_tanques_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recepciones_tanques
    ADD CONSTRAINT recepciones_tanques_pk PRIMARY KEY (idowner, idempresa, idestacion, idtanque, id);


--
-- Name: registro_entrada registro_entrada_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registro_entrada
    ADD CONSTRAINT registro_entrada_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: roles_estaciones roles_estaciones_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_estaciones
    ADD CONSTRAINT roles_estaciones_pk PRIMARY KEY (idowner, idempresa, idestacion, usuario);


--
-- Name: roles_objetos roles_objetos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_objetos
    ADD CONSTRAINT roles_objetos_pk PRIMARY KEY (idowner, idrol, idobjeto);


--
-- Name: roles roles_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pk PRIMARY KEY (idowner, id);


--
-- Name: roles_usuarios roles_usuarios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_usuarios
    ADD CONSTRAINT roles_usuarios_pk PRIMARY KEY (idowner, idempresa, usuario, idrol);


--
-- Name: sat_bitacora_diario sat_bitacora_diario_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_bitacora_diario
    ADD CONSTRAINT sat_bitacora_diario_pk PRIMARY KEY (fecha);


--
-- Name: sat_bitacora_mensual sat_bitacora_mensual_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_bitacora_mensual
    ADD CONSTRAINT sat_bitacora_mensual_pk PRIMARY KEY (fecha);


--
-- Name: sistema_medicion sistema_medicion_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sistema_medicion
    ADD CONSTRAINT sistema_medicion_pk PRIMARY KEY (id);


--
-- Name: surtido surtido_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.surtido
    ADD CONSTRAINT surtido_pk PRIMARY KEY (idowner, idempresa, idestacion, ubicacion, producto);


--
-- Name: tad tad_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tad
    ADD CONSTRAINT tad_pk PRIMARY KEY (id);


--
-- Name: tanques tanques_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tanques
    ADD CONSTRAINT tanques_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: transportista transportista_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transportista
    ADD CONSTRAINT transportista_pk PRIMARY KEY (id);


--
-- Name: turnos_cortes turnos_cortes_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turnos_cortes
    ADD CONSTRAINT turnos_cortes_pk PRIMARY KEY (idowner, idempresa, idestacion, idturnoinicio, idisla, iddispensario, idposicioncarga);


--
-- Name: turnos_inicio turnos_inicio_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turnos_inicio
    ADD CONSTRAINT turnos_inicio_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: turnos turnos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turnos
    ADD CONSTRAINT turnos_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: ubicaciones_asignaciones ubicaciones_asignaciones_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ubicaciones_asignaciones
    ADD CONSTRAINT ubicaciones_asignaciones_pk PRIMARY KEY (idowner, idempresa, idestacion, idisla, iddispensario, idposicioncarca);


--
-- Name: ubicaciones ubicaciones_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ubicaciones
    ADD CONSTRAINT ubicaciones_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: ubicaciones_turnos ubicaciones_turnos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ubicaciones_turnos
    ADD CONSTRAINT ubicaciones_turnos_pk PRIMARY KEY (owner, empresa, estacion, turno, ubicacion);


--
-- Name: usuarios usuarios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pk PRIMARY KEY (idowner, idempresa, usuario);


--
-- Name: ventas_impuestos ventas_impuestos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas_impuestos
    ADD CONSTRAINT ventas_impuestos_pk PRIMARY KEY (idowner, idempresa, idestacion, idventa, idventaitem, tipo, impuesto);


--
-- Name: ventas_items ventas_items_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas_items
    ADD CONSTRAINT ventas_items_pk PRIMARY KEY (idowner, idempresa, idestacion, idventa, id);


--
-- Name: ventas_pagos ventas_pagos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas_pagos
    ADD CONSTRAINT ventas_pagos_pk PRIMARY KEY (idowner, idempresa, idestacion, idventa, id);


--
-- Name: ventas ventas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: ventas_varios ventas_varios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas_varios
    ADD CONSTRAINT ventas_varios_pk PRIMARY KEY (idowner, idempresa, idestacion, id);


--
-- Name: versiones versiones_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.versiones
    ADD CONSTRAINT versiones_pk PRIMARY KEY (archivo);
