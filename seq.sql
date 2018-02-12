DROP SEQUENCE question_content_seq;
DROP SEQUENCE question_attributes_seq;
DROP SEQUENCE archives_seq;

---------------------------------------------

CREATE SEQUENCE question_content_seq
	MINVALUE 1
	START WITH 1
	INCREMENT BY 1;
    
CREATE SEQUENCE question_attributes_seq
	MINVALUE 1
	START WITH 1
	INCREMENT BY 1;
	
CREATE SEQUENCE archives_seq
	MINVALUE 1
	START WITH 1
	INCREMENT BY 1;