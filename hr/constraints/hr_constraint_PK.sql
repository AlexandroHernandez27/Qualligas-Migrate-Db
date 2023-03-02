--
-- Name: countries country_c_id_pk; Type: CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.countries
    ADD CONSTRAINT country_c_id_pk PRIMARY KEY (country_id);


--
-- Name: departments dept_id_pk; Type: CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.departments
    ADD CONSTRAINT dept_id_pk PRIMARY KEY (department_id);


--
-- Name: employees emp_emp_id_pk; Type: CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.employees
    ADD CONSTRAINT emp_emp_id_pk PRIMARY KEY (employee_id);


--
-- Name: job_history jhist_emp_id_st_date_pk; Type: CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.job_history
    ADD CONSTRAINT jhist_emp_id_st_date_pk PRIMARY KEY (employee_id, start_date);


--
-- Name: jobs job_id_pk; Type: CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.jobs
    ADD CONSTRAINT job_id_pk PRIMARY KEY (job_id);


--
-- Name: locations loc_id_pk; Type: CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.locations
    ADD CONSTRAINT loc_id_pk PRIMARY KEY (location_id);


--
-- Name: regions reg_id_pk; Type: CONSTRAINT; Schema: hr; Owner: postgres
--

ALTER TABLE ONLY hr.regions
    ADD CONSTRAINT reg_id_pk PRIMARY KEY (region_id);


