-- View: public.sales_dept

-- DROP VIEW public.sales_dept;

CREATE OR REPLACE VIEW public.sales_dept
 AS
 SELECT e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name,
    de.dept_no
   FROM ((employees e
     LEFT JOIN dept_emp de ON (((e.emp_no)::text = (de.emp_no)::text)))
     LEFT JOIN departments d ON (((de.dept_no)::text = (d.dept_no)::text)))
  WHERE ((d.dept_no)::text = 'd007'::text);

ALTER TABLE public.sales_dept
    OWNER TO postgres;

