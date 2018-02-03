INSERT INTO question VALUES (question_seq.NEXTVAL, 'What is the <question_about> of <question_context>?', 'currencies-name', 'name');
INSERT INTO archives (question_id) VALUES (question_seq.CURRVAL);