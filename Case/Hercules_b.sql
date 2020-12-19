-- View: public.hercules_b

-- DROP VIEW public.hercules_b;

CREATE OR REPLACE VIEW public.hercules_b
 AS
 SELECT e.first_name,
    e.last_name,
    e.sex
   FROM employees e
  WHERE (((e.first_name)::text = 'Hercules'::text) AND ((e.last_name)::text ~~ 'B%'::text));

ALTER TABLE public.hercules_b
    OWNER TO postgres;


