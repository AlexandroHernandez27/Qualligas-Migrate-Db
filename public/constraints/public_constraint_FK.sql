
--
-- Name: alarmas alarmas_fk_estaciones; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alarms
    ADD CONSTRAINT alarms_fk_stations FOREIGN KEY (idowner, idcompany, idstation) REFERENCES public.stations(idowner, idcompany, id);


--
-- Name: alarmas alarmas_fk_mangueras; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alarms
    ADD CONSTRAINT alarms_fk_fuel_hoses FOREIGN KEY (idowner, idcompany, idstation, idisland, iddispensario, idposicioncarga, idfuelhose) REFERENCES public.fuel_hoses(idowner, idcompany, idstation, idisland, iddispensario, idposicioncarga, id);


--
-- Name: alarmas alarmas_fk_tanques; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alarms
    ADD CONSTRAINT alarms_fk_tanks FOREIGN KEY (idowner, idcompany, idstation, idtank) REFERENCES public.tanks(idowner, idcompany, idstation, id);


--
-- Name: anticipos anticipos_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advance_paymments
    ADD CONSTRAINT advance_paymments_fk1 FOREIGN KEY (idowner, idcompany, idstation, idturnoinicio, idisland, iddispensario, idposicioncarga) REFERENCES public.turnos_cortes(idowner, idcompany, idstation, idturnoinicio, idisland, iddispensario, idposicioncarga);


--
-- Name: anticipos_items anticipos_items_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_advance_paymments
    ADD CONSTRAINT item_advance_paymments_fk1 FOREIGN KEY (idowner, idcompany, idstation, idturnoinicio, idisland, iddispensario, idposicioncarga, date) REFERENCES public.advance_paymments(idowner, idcompany, idstation, idturnoinicio, idisland, iddispensario, idposicioncarga, date);


--
-- Name: anticipos_items anticipos_items_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_advance_paymments
    ADD CONSTRAINT item_advance_paymments_fk2 FOREIGN KEY (paymentmethod) REFERENCES public.payment_methods(id);


--
-- Name: anticipos_limites anticipos_limites_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.limit_advance_paymments
    ADD CONSTRAINT limit_advance_paymments_fk1 FOREIGN KEY (paymentmethod) REFERENCES public.payment_methods(id);


--
-- Name: cargas cargas_fk_despachador; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargas
    ADD CONSTRAINT cargas_fk_despachador FOREIGN KEY (idowner, idcompany, despachador) REFERENCES public.despachadores(idowner, idcompany, id) ON DELETE SET NULL;


--
-- Name: cargas cargas_fk_mangueras; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargas
    ADD CONSTRAINT cargas_fk_fuel_hoses FOREIGN KEY (idowner, idcompany, idstation, idisland, iddispensario, idposicioncarga, idfuelhose) REFERENCES public.mangueras(idowner, idcompany, idstation, idisland, iddispensario, idposicioncarga, id);


--
-- Name: cargas cargas_fk_productos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargas
    ADD CONSTRAINT cargas_fk_products FOREIGN KEY (idowner, idcompany, idproduct) REFERENCES public.products(idowner, idcompany, id);


--
-- Name: cargas cargas_fk_turnos_cortes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargas
    ADD CONSTRAINT cargas_fk_turnos_cortes FOREIGN KEY (idowner, idcompany, idstation, turno_inicio, idisland, iddispensario, idposicioncarga) REFERENCES public.turnos_cortes(idowner, idcompany, idstation, idturnoinicio, idisland, iddispensario, idposicioncarga);


--
-- PostgreSQL database dump complete
--
