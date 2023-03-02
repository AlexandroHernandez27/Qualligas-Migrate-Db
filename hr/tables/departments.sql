-- Table: hr.departments

-- DROP TABLE IF EXISTS hr.departments;

CREATE TABLE IF NOT EXISTS hr.departments
(
    department_id numeric(4,0) NOT NULL,
    department_name character varying(30) COLLATE pg_catalog."default" NOT NULL,
    manager_id numeric(6,0),
    location_id numeric(4,0),
    CONSTRAINT dept_id_pk PRIMARY KEY (department_id),
    CONSTRAINT dept_loc_fk FOREIGN KEY (location_id)
        REFERENCES hr.locations (location_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT dept_mgr_fk FOREIGN KEY (manager_id)
        REFERENCES hr.employees (employee_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS hr.departments
    OWNER to postgres;
-- Index: dept_location_ix

-- DROP INDEX IF EXISTS hr.dept_location_ix;

CREATE INDEX IF NOT EXISTS dept_location_ix
    ON hr.departments USING btree
    (location_id ASC NULLS LAST)
    TABLESPACE pg_default;