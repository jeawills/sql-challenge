-- View: public.sales_dev_dept

-- DROP VIEW public.sales_dev_dept;

CREATE OR REPLACE VIEW public.sales_dev_dept
 AS
 SELECT e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name,
    de.dept_no
   FROM ((employees e
     LEFT JOIN dept_emp de ON (((e.emp_no)::text = (de.emp_no)::text)))
     LEFT JOIN departments d ON (((de.dept_no)::text = (d.dept_no)::text)))
  WHERE ((d.dept_no)::text = ANY ((ARRAY['d007'::character varying, 'd005'::character varying])::text[]));

ALTER TABLE public.sales_dev_dept
    OWNER TO postgres;

