-- Table: hr.employees

-- DROP TABLE IF EXISTS hr.employees;

CREATE TABLE IF NOT EXISTS hr.employees
(
    employee_id numeric(6,0) NOT NULL,
    first_name character varying(20) COLLATE pg_catalog."default",
    last_name character varying(25) COLLATE pg_catalog."default" NOT NULL,
    email character varying(25) COLLATE pg_catalog."default" NOT NULL,
    phone_number character varying(20) COLLATE pg_catalog."default",
    hire_date timestamp without time zone NOT NULL,
    job_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    salary numeric(8,2),
    commission_pct numeric(2,2),
    manager_id numeric(6,0),
    department_id numeric(4,0),
    CONSTRAINT emp_emp_id_pk PRIMARY KEY (employee_id),
    CONSTRAINT emp_dept_fk FOREIGN KEY (department_id)
        REFERENCES hr.departments (department_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT emp_job_fk FOREIGN KEY (job_id)
        REFERENCES hr.jobs (job_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT emp_manager_fk FOREIGN KEY (manager_id)
        REFERENCES hr.employees (employee_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS hr.employees
    OWNER to postgres;
-- Index: emp_department_ix

-- DROP INDEX IF EXISTS hr.emp_department_ix;

CREATE INDEX IF NOT EXISTS emp_department_ix
    ON hr.employees USING btree
    (department_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: emp_email_uk

-- DROP INDEX IF EXISTS hr.emp_email_uk;

CREATE UNIQUE INDEX IF NOT EXISTS emp_email_uk
    ON hr.employees USING btree
    (email COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: emp_job_ix

-- DROP INDEX IF EXISTS hr.emp_job_ix;

CREATE INDEX IF NOT EXISTS emp_job_ix
    ON hr.employees USING btree
    (job_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: emp_manager_ix

-- DROP INDEX IF EXISTS hr.emp_manager_ix;

CREATE INDEX IF NOT EXISTS emp_manager_ix
    ON hr.employees USING btree
    (manager_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: emp_name_ix

-- DROP INDEX IF EXISTS hr.emp_name_ix;

CREATE INDEX IF NOT EXISTS emp_name_ix
    ON hr.employees USING btree
    (last_name COLLATE pg_catalog."default" ASC NULLS LAST, first_name COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;