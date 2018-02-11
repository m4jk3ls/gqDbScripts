DROP TABLE question_content CASCADE CONSTRAINTS;
DROP TABLE question_attributes CASCADE CONSTRAINTS;
DROP TABLE active_question CASCADE CONSTRAINTS;
DROP TABLE archives CASCADE CONSTRAINTS;

-------------------------------------------------------------------------------------------------

CREATE TABLE question_content (
	id NUMBER(10) NOT NULL,
	content VARCHAR2(255) NOT NULL,
    	CONSTRAINT question_content_pk PRIMARY KEY (id),
		CONSTRAINT question_content_unique UNIQUE (content)
);

CREATE TABLE question_attributes (
	id NUMBER(10) NOT NULL,
    question_content_id NUMBER(10) NOT NULL,
	question_attribute VARCHAR2(50) NOT NULL,
	attribute_position NUMBER(2) NOT NULL,
	question_about_api VARCHAR2(50) NOT NULL,
	question_context_api VARCHAR2(50) NOT NULL,
    	CONSTRAINT question_attributes_pk PRIMARY KEY (id),
        CONSTRAINT question_unique UNIQUE (question_content_id, question_about_api, question_context_api),
        CONSTRAINT content_in_attributes_fk FOREIGN KEY (question_content_id) REFERENCES question_content(id) ON DELETE CASCADE
);

CREATE TABLE active_question (
	token VARCHAR2(100) NOT NULL,
    question_attributes_id NUMBER(10) NOT NULL,
    answer VARCHAR2(1000) NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    	CONSTRAINT active_question_pk PRIMARY KEY (token),
        CONSTRAINT question_in_active_question_fk FOREIGN KEY (question_attributes_id) REFERENCES question_attributes(id) ON DELETE CASCADE
);

CREATE TABLE archives (
	question_attributes_id NUMBER(10) NOT NULL,
    good_answers NUMBER(10) DEFAULT 0 NOT NULL,
    bad_answers NUMBER(10) DEFAULT 0 NOT NULL,
    	CONSTRAINT question_in_archives_unique UNIQUE (question_attributes_id),
    	CONSTRAINT question_in_archives_fk FOREIGN KEY (question_attributes_id) REFERENCES question_attributes(id) ON DELETE CASCADE
);