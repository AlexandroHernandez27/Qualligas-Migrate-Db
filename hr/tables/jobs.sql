-- Table: hr.jobs

-- DROP TABLE IF EXISTS hr.jobs;

CREATE TABLE IF NOT EXISTS hr.jobs
(
    job_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    job_title character varying(35) COLLATE pg_catalog."default" NOT NULL,
    min_salary numeric(6,0),
    max_salary numeric(6,0),
    CONSTRAINT job_id_pk PRIMARY KEY (job_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS hr.jobs
    OWNER to postgres;