--
-- Name: alarmas alarmas_fk_estaciones; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alarms
    -- ADD CONSTRAINT alarmas_fk_estaciones FOREIGN KEY (idowner, idempresa, idestacion) REFERENCES public.estaciones(idowner, idempresa, id);
    ADD CONSTRAINT alarms_fk_stations FOREIGN KEY (idcompany, idstation, idowner)
        REFERENCES public.stations (idcompany, id, idowner) MATCH SIMPLE


--
-- Name: alarmas alarmas_fk_mangueras; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alarms
    -- ADD CONSTRAINT alarmas_fk_mangueras FOREIGN KEY (idowner, idempresa, idestacion, idisla, iddispensario, idposicioncarga, idmanguera) REFERENCES public.mangueras(idowner, idempresa, idestacion, idisla, iddispensario, idposicioncarga, id);
    ADD CONSTRAINT alarms_fk_hoses FOREIGN KEY (idcompany, idhose, idstation, iddispensario, idisland, idowner, idposicioncarga)
        REFERENCES public.hoses (idcompany, id, idstation, iddispensario, idisland, idowner, idposicioncarga) MATCH SIMPLE
    

--
-- Name: alarmas alarmas_fk_tanques; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alarmas
    ADD CONSTRAINT alarmas_fk_tanques FOREIGN KEY (idowner, idempresa, idestacion, idtanque) REFERENCES public.tanques(idowner, idempresa, idestacion, id);


--
-- Name: anticipos anticipos_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anticipos
    ADD CONSTRAINT anticipos_fk1 FOREIGN KEY (idowner, idempresa, idestacion, idturnoinicio, idisla, iddispensario, idposicioncarga) REFERENCES public.turnos_cortes(idowner, idempresa, idestacion, idturnoinicio, idisla, iddispensario, idposicioncarga);


--
-- Name: anticipos_items anticipos_items_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anticipos_items
    ADD CONSTRAINT anticipos_items_fk1 FOREIGN KEY (idowner, idempresa, idestacion, idturnoinicio, idisla, iddispensario, idposicioncarga, fecha) REFERENCES public.anticipos(idowner, idempresa, idestacion, idturnoinicio, idisla, iddispensario, idposicioncarga, fecha);


--
-- Name: anticipos_items anticipos_items_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anticipos_items
    ADD CONSTRAINT anticipos_items_fk2 FOREIGN KEY (metodopago) REFERENCES public.metodos_pago(id);


--
-- Name: anticipos_limites anticipos_limites_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anticipos_limites
    ADD CONSTRAINT anticipos_limites_fk1 FOREIGN KEY (metodopago) REFERENCES public.metodos_pago(id);


--
-- Name: cargas cargas_fk_despachador; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargas
    ADD CONSTRAINT cargas_fk_despachador FOREIGN KEY (idowner, idempresa, despachador) REFERENCES public.despachadores(idowner, idempresa, id) ON DELETE SET NULL;


--
-- Name: cargas cargas_fk_mangueras; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargas
    ADD CONSTRAINT cargas_fk_mangueras FOREIGN KEY (idowner, idempresa, idestacion, idisla, iddispensario, idposicioncarga, idmanguera) REFERENCES public.mangueras(idowner, idempresa, idestacion, idisla, iddispensario, idposicioncarga, id);


--
-- Name: cargas cargas_fk_productos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargas
    ADD CONSTRAINT cargas_fk_productos FOREIGN KEY (idowner, idempresa, idproducto) REFERENCES public.productos(idowner, idempresa, id);


--
-- Name: cargas cargas_fk_turnos_cortes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargas
    ADD CONSTRAINT cargas_fk_turnos_cortes FOREIGN KEY (idowner, idempresa, idestacion, turno_inicio, idisla, iddispensario, idposicioncarga) REFERENCES public.turnos_cortes(idowner, idempresa, idestacion, idturnoinicio, idisla, iddispensario, idposicioncarga);

