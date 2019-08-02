
-- DROP TABLE IF EXISTS "questions";
-- CREATE TABLE questions
-- (
--     question_id integer NOT NULL,
--     product_id integer NOT NULL,
--     question_body character varying(1000) COLLATE pg_catalog."default" NOT NULL,
--     question_date date,
--     asker_name character varying(60) COLLATE pg_catalog."default" NOT NULL,
--     asker_email character varying(60) COLLATE pg_catalog."default" NOT NULL,
--     reported integer,
--     question_helpfulness integer NOT NULL,
--     CONSTRAINT "Questions_pkey" PRIMARY KEY (question_id)
-- )
-- WITH (
--     OIDS = FALSE
-- )
-- COPY answers FROM '/Users/admin/Desktop/answers.csv' DELIMITER ',' CSV HEADER;

-- DROP TABLE IF EXISTS public."answers";
-- CREATE TABLE public."answers"
-- (
--     answer_id integer NOT NULL,
--     question_id integer,
--     body character varying(1000) COLLATE pg_catalog."default",
--     date date,
--     answerer_name character varying(60) COLLATE pg_catalog."default",   
--     answerer_email character varying(60) COLLATE pg_catalog."default",
--     report integer,
--     helpfulness integer,
--     CONSTRAINT "Answers_pkey" PRIMARY KEY (answer_id)
-- )
-- WITH (
--     OIDS = FALSE
-- );

-- COPY answers FROM '/Users/admin/Desktop/answers.csv' DELIMITER ',' CSV HEADER;

-- ALTER TABLE answers
-- ADD COLUMN photos jsonb[] DEFAULT '{}'::jsonb[];