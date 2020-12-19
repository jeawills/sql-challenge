CREATE OR REPLACE VIEW public.list_the_manager
 AS
 SELECT dm.dept_no,
    d.dept_name,
    dm.emp_no,
    e.last_name,
    e.first_name
   FROM ((employees e
     RIGHT JOIN dept_manager dm ON (((e.emp_no)::text = (dm.emp_no)::text)))
     LEFT JOIN departments d ON (((dm.dept_no)::text = (d.dept_no)::text)));

ALTER TABLE public.list_the_manager
    OWNER TO postgres;