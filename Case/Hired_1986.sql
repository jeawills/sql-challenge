-- View: public.hired_1986

-- DROP VIEW public.hired_1986;

CREATE OR REPLACE VIEW public.hired_1986
 AS
 SELECT employees.first_name,
    employees.last_name,
    employees.hire_date
   FROM employees
  WHERE ((employees.hire_date >= '1986-01-01'::date) AND (employees.hire_date <= '1986-12-31'::date));

ALTER TABLE public.hired_1986
    OWNER TO postgres;

