--
-- Name: dept_location_ix; Type: INDEX; Schema: hr; Owner: postgres
--

CREATE INDEX dept_location_ix ON hr.departments USING btree (location_id);


--
-- Name: emp_department_ix; Type: INDEX; Schema: hr; Owner: postgres
--

CREATE INDEX emp_department_ix ON hr.employees USING btree (department_id);


--
-- Name: emp_email_uk; Type: INDEX; Schema: hr; Owner: postgres
--

CREATE UNIQUE INDEX emp_email_uk ON hr.employees USING btree (email);


--
-- Name: emp_job_ix; Type: INDEX; Schema: hr; Owner: postgres
--

CREATE INDEX emp_job_ix ON hr.employees USING btree (job_id);


--
-- Name: emp_manager_ix; Type: INDEX; Schema: hr; Owner: postgres
--

CREATE INDEX emp_manager_ix ON hr.employees USING btree (manager_id);


--
-- Name: emp_name_ix; Type: INDEX; Schema: hr; Owner: postgres
--

CREATE INDEX emp_name_ix ON hr.employees USING btree (last_name, first_name);


--
-- Name: jhist_department_ix; Type: INDEX; Schema: hr; Owner: postgres
--

CREATE INDEX jhist_department_ix ON hr.job_history USING btree (department_id);


--
-- Name: jhist_employee_ix; Type: INDEX; Schema: hr; Owner: postgres
--

CREATE INDEX jhist_employee_ix ON hr.job_history USING btree (employee_id);


--
-- Name: jhist_job_ix; Type: INDEX; Schema: hr; Owner: postgres
--

CREATE INDEX jhist_job_ix ON hr.job_history USING btree (job_id);


--
-- Name: loc_city_ix; Type: INDEX; Schema: hr; Owner: postgres
--

CREATE INDEX loc_city_ix ON hr.locations USING btree (city);


--
-- Name: loc_country_ix; Type: INDEX; Schema: hr; Owner: postgres
--

CREATE INDEX loc_country_ix ON hr.locations USING btree (country_id);


--
-- Name: loc_state_province_ix; Type: INDEX; Schema: hr; Owner: postgres
--

CREATE INDEX loc_state_province_ix ON hr.locations USING btree (state_province);
