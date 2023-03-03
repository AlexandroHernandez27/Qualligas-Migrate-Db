--
-- Name: countries; Type: TABLE; Schema: hr; Owner: postgres
--

CREATE TABLE hr.countries (
    country_id character(2) NOT NULL,
    country_name character varying(40),
    region_id numeric(38,0)
);


ALTER TABLE hr.countries OWNER TO postgres;

--
-- Name: departments; Type: TABLE; Schema: hr; Owner: postgres
--

CREATE TABLE hr.departments (
    department_id numeric(4,0) NOT NULL,
    department_name character varying(30) NOT NULL,
    manager_id numeric(6,0),
    location_id numeric(4,0)
);


ALTER TABLE hr.departments OWNER TO postgres;

--
-- Name: employees; Type: TABLE; Schema: hr; Owner: postgres
--

CREATE TABLE hr.employees (
    employee_id numeric(6,0) NOT NULL,
    first_name character varying(20),
    last_name character varying(25) NOT NULL,
    email character varying(25) NOT NULL,
    phone_number character varying(20),
    hire_date timestamp without time zone NOT NULL,
    job_id character varying(10) NOT NULL,
    salary numeric(8,2),
    commission_pct numeric(2,2),
    manager_id numeric(6,0),
    department_id numeric(4,0)
);


ALTER TABLE hr.employees OWNER TO postgres;

--
-- Name: job_history; Type: TABLE; Schema: hr; Owner: postgres
--

CREATE TABLE hr.job_history (
    employee_id numeric(6,0) NOT NULL,
    start_date timestamp without time zone NOT NULL,
    end_date timestamp without time zone NOT NULL,
    job_id character varying(10) NOT NULL,
    department_id numeric(4,0)
);


ALTER TABLE hr.job_history OWNER TO postgres;

--
-- Name: jobs; Type: TABLE; Schema: hr; Owner: postgres
--

CREATE TABLE hr.jobs (
    job_id character varying(10) NOT NULL,
    job_title character varying(35) NOT NULL,
    min_salary numeric(6,0),
    max_salary numeric(6,0)
);


ALTER TABLE hr.jobs OWNER TO postgres;

--
-- Name: locations; Type: TABLE; Schema: hr; Owner: postgres
--

CREATE TABLE hr.locations (
    location_id numeric(4,0) NOT NULL,
    street_address character varying(40),
    postal_code character varying(12),
    city character varying(30) NOT NULL,
    state_province character varying(25),
    country_id character(2)
);


ALTER TABLE hr.locations OWNER TO postgres;

--
-- Name: regions; Type: TABLE; Schema: hr; Owner: postgres
--

CREATE TABLE hr.regions (
    region_id numeric(38,0) NOT NULL,
    region_name character varying(25)
);


ALTER TABLE hr.regions OWNER TO postgres;
