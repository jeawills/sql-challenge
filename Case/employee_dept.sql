-- View: public.employee_dept

-- DROP VIEW public.employee_dept;

CREATE OR REPLACE VIEW public.employee_dept
 AS
 SELECT e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name,
    de.dept_no
   FROM ((employees e
     LEFT JOIN dept_emp de ON (((e.emp_no)::text = (de.emp_no)::text)))
     LEFT JOIN departments d ON (((de.dept_no)::text = (d.dept_no)::text)));

ALTER TABLE public.employee_dept
    OWNER TO postgres;

