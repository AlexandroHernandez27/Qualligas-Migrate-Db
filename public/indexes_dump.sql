--
-- Name: cargas_idx_fecha; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cargas_idx_fecha ON public.cargas USING btree (fecha);


--
-- Name: cargas_idx_fecha_tipo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cargas_idx_fecha_tipo ON public.cargas USING btree (fecha, tipo);


--
-- Name: cargas_idx_tipo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cargas_idx_tipo ON public.cargas USING btree (tipo);


--
-- Name: cargas_idx_ventas; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cargas_idx_ventas ON public.cargas USING btree (idventa, idestacion, idempresa, idowner);


--
-- Name: cfdi_request_idx_estado; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cfdi_request_idx_estado ON public.cfdi_request USING btree (estado);


--
-- Name: rec_doc_idx_fecha; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rec_doc_idx_fecha ON public.recepciones_documentos USING btree (fecha);


--
-- Name: turnos_cortes_idx_fechas; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX turnos_cortes_idx_fechas ON public.turnos_cortes USING btree (fechainicio, fechafin, idposicioncarga, iddispensario, idisla, idestacion, idempresa, idowner);


--
-- Name: turnos_cortes_idx_turnoinicio; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX turnos_cortes_idx_turnoinicio ON public.turnos_cortes USING btree (idturnoinicio, fechainicio, fechafin, idposicioncarga, iddispensario, idisla, idestacion, idempresa, idowner);


--
-- Name: usuarios_idx_rfid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX usuarios_idx_rfid ON public.usuarios USING btree (rfid);


--
-- Name: ventas_idx_fecha; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ventas_idx_fecha ON public.ventas USING btree (fecha);


--
-- Name: ventas_varios_idx_estado; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ventas_varios_idx_estado ON public.ventas_varios USING btree (estado);


--
-- Name: ventas_varios_idx_fecha; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ventas_varios_idx_fecha ON public.ventas_varios USING btree (fecha);


--
-- Name: ventas_varios_idx_ventas; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ventas_varios_idx_ventas ON public.ventas_varios USING btree (idventa, idestacion, idempresa, idowner);
