-- Table: hr.job_history

-- DROP TABLE IF EXISTS hr.job_history;

CREATE TABLE IF NOT EXISTS hr.job_history
(
    employee_id numeric(6,0) NOT NULL,
    start_date timestamp without time zone NOT NULL,
    end_date timestamp without time zone NOT NULL,
    job_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    department_id numeric(4,0),
    CONSTRAINT jhist_emp_id_st_date_pk PRIMARY KEY (employee_id, start_date),
    CONSTRAINT jhist_dept_fk FOREIGN KEY (department_id)
        REFERENCES hr.departments (department_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT jhist_emp_fk FOREIGN KEY (employee_id)
        REFERENCES hr.employees (employee_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT jhist_job_fk FOREIGN KEY (job_id)
        REFERENCES hr.jobs (job_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS hr.job_history
    OWNER to postgres;
-- Index: jhist_department_ix

-- DROP INDEX IF EXISTS hr.jhist_department_ix;

CREATE INDEX IF NOT EXISTS jhist_department_ix
    ON hr.job_history USING btree
    (department_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: jhist_employee_ix

-- DROP INDEX IF EXISTS hr.jhist_employee_ix;

CREATE INDEX IF NOT EXISTS jhist_employee_ix
    ON hr.job_history USING btree
    (employee_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: jhist_job_ix

-- DROP INDEX IF EXISTS hr.jhist_job_ix;

CREATE INDEX IF NOT EXISTS jhist_job_ix
    ON hr.job_history USING btree
    (job_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;