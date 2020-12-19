-- View: public.no_of_last_name

-- DROP VIEW public.no_of_last_name;

CREATE OR REPLACE VIEW public.no_of_last_name
 AS
 SELECT employees.last_name,
    count(*) AS count
   FROM employees
  GROUP BY employees.last_name
  ORDER BY employees.last_name;

ALTER TABLE public.no_of_last_name
    OWNER TO postgres;

