--
-- Name: cargas_idx_fecha; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cargas_idx_fecha ON public.cargas USING btree (date);


--
-- Name: cargas_idx_fecha_tipo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cargas_idx_fecha_tipo ON public.cargas USING btree (date, type);


--
-- Name: cargas_idx_tipo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cargas_idx_type ON public.cargas USING btree (type);


--
-- Name: cargas_idx_ventas; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cargas_idx_sales ON public.cargas USING btree (isale, idstation, idcompany, idowner);


--
-- Name: cfdi_request_idx_estado; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cfdi_request_idx_state ON public.cfdi_request USING btree (state);


--
-- Name: rec_doc_idx_fecha; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX docs_receipt_idx_dateON public.documents_receipt USING btree (date);


--
-- Name: turnos_cortes_idx_fechas; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX turnos_cortes_idx_dates ON public.turnos_cortes USING btree (fechainicio, fechafin, idposicioncarga, iddispensario, idisland, idstation, idcompany, idowner);


--
-- Name: turnos_cortes_idx_turnoinicio; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX turnos_cortes_idx_turnoinicio ON public.turnos_cortes USING btree (idturnoinicio, fechainicio, fechafin, idposicioncarga, iddispensario, idisland, idstation, idcompany, idowner);


--
-- Name: usuarios_idx_rfid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX users_idx_rfid ON public.users USING btree (rfid);


--
-- Name: ventas_idx_fecha; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ventas_idx_date ON public.sales USING btree (date);


--
-- Name: ventas_varios_idx_estado; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sale_various_idx_state ON public.sale_various USING btree (state);


--
-- Name: ventas_varios_idx_fecha; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_various_idx_date ON public.sales_various USING btree (state);


--
-- Name: ventas_varios_idx_ventas; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sale_various_idx_sales ON public.sale_various USING btree (idsale, idstation, idcompany, idowner);
