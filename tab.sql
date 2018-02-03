/*First start PL/SQL block, then create tables*/

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE question CASCADE CONSTRAINTS';
	EXECUTE IMMEDIATE 'DROP TABLE active_question CASCADE CONSTRAINTS';
	EXECUTE IMMEDIATE 'DROP TABLE archives CASCADE CONSTRAINTS';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

-------------------------------------------------------------------------------------------------

CREATE TABLE question (
	id NUMBER(10) NOT NULL,
	content VARCHAR2(255) NOT NULL,
	question_about VARCHAR2(50) NOT NULL,
	question_context VARCHAR2(50) NOT NULL,
    	CONSTRAINT question_pk PRIMARY KEY (id),
		CONSTRAINT question_unique UNIQUE (content)
);

CREATE TABLE active_question (
	token VARCHAR2(100) NOT NULL,
    question_id NUMBER(10) NOT NULL,
    answer VARCHAR2(1000) NOT NULL,
    	CONSTRAINT active_question_pk PRIMARY KEY (token),
        CONSTRAINT question_in_active_question_fk FOREIGN KEY (question_id) REFERENCES question(id) ON DELETE CASCADE
);

CREATE TABLE archives (
	question_id NUMBER(10) NOT NULL,
    good_answers NUMBER(10) DEFAULT 0 NOT NULL,
    bad_answers NUMBER(10) DEFAULT 0 NOT NULL,
    	CONSTRAINT question_in_archives_unique UNIQUE (question_id),
    	CONSTRAINT question_in_archives_fk FOREIGN KEY (question_id) REFERENCES question(id) ON DELETE CASCADE
);