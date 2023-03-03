--
-- Name: countries countr_reg_fk; Type: FK CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.countries
    ADD CONSTRAINT countr_reg_fk FOREIGN KEY (region_id) REFERENCES hr.regions(region_id);


--
-- Name: departments dept_loc_fk; Type: FK CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.departments
    ADD CONSTRAINT dept_loc_fk FOREIGN KEY (location_id) REFERENCES hr.locations(location_id);


--
-- Name: departments dept_mgr_fk; Type: FK CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.departments
    ADD CONSTRAINT dept_mgr_fk FOREIGN KEY (manager_id) REFERENCES hr.employees(employee_id);


--
-- Name: employees emp_dept_fk; Type: FK CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.employees
    ADD CONSTRAINT emp_dept_fk FOREIGN KEY (department_id) REFERENCES hr.departments(department_id);


--
-- Name: employees emp_job_fk; Type: FK CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.employees
    ADD CONSTRAINT emp_job_fk FOREIGN KEY (job_id) REFERENCES hr.jobs(job_id);


--
-- Name: employees emp_manager_fk; Type: FK CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.employees
    ADD CONSTRAINT emp_manager_fk FOREIGN KEY (manager_id) REFERENCES hr.employees(employee_id);


--
-- Name: job_history jhist_dept_fk; Type: FK CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.job_history
    ADD CONSTRAINT jhist_dept_fk FOREIGN KEY (department_id) REFERENCES hr.departments(department_id);


--
-- Name: job_history jhist_emp_fk; Type: FK CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.job_history
    ADD CONSTRAINT jhist_emp_fk FOREIGN KEY (employee_id) REFERENCES hr.employees(employee_id);


--
-- Name: job_history jhist_job_fk; Type: FK CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.job_history
    ADD CONSTRAINT jhist_job_fk FOREIGN KEY (job_id) REFERENCES hr.jobs(job_id);


--
-- Name: locations loc_c_id_fk; Type: FK CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.locations
    ADD CONSTRAINT loc_c_id_fk FOREIGN KEY (country_id) REFERENCES hr.countries(country_id);

