-- View: public.question_1

-- DROP VIEW public.question_1;

CREATE OR REPLACE VIEW public.question_1
 AS
 SELECT s.emp_no,
    e.last_name,
    e.first_name,
    e.sex,
    s.salary
   FROM (employees e
     LEFT JOIN salaries s ON (((e.emp_no)::text = (s.emp_no)::text)));

ALTER TABLE public.question_1
    OWNER TO postgres;

