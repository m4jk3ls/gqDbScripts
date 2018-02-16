DELETE FROM question_content;
DELETE FROM question_attributes;
DELETE FROM active_question;
DELETE FROM archives;

-----------------------------------------------

INSERT INTO question_content VALUES (question_content_seq.NEXTVAL, 'What is the <?> of <?>?');
INSERT INTO question_attributes VALUES (question_attributes_seq.NEXTVAL, question_content_seq.CURRVAL, 'capital', 1, 'capital');
INSERT INTO archives (id, question_attributes_id) VALUES (archives_seq.NEXTVAL, question_attributes_seq.CURRVAL);

INSERT INTO question_attributes VALUES (question_attributes_seq.NEXTVAL, question_content_seq.CURRVAL, 'currency', 1, 'currencies|name');
INSERT INTO archives (id, question_attributes_id) VALUES (archives_seq.NEXTVAL, question_attributes_seq.CURRVAL);

INSERT INTO question_attributes VALUES (question_attributes_seq.NEXTVAL, question_content_seq.CURRVAL, 'language', 1, 'languages|name');
INSERT INTO archives (id, question_attributes_id) VALUES (archives_seq.NEXTVAL, question_attributes_seq.CURRVAL);

INSERT INTO question_attributes VALUES (question_attributes_seq.NEXTVAL, question_content_seq.CURRVAL, 'population', 1, 'population');
INSERT INTO archives (id, question_attributes_id) VALUES (archives_seq.NEXTVAL, question_attributes_seq.CURRVAL);

INSERT INTO question_attributes VALUES (question_attributes_seq.NEXTVAL, question_content_seq.CURRVAL, 'demonym', 1, 'demonym');
INSERT INTO archives (id, question_attributes_id) VALUES (archives_seq.NEXTVAL, question_attributes_seq.CURRVAL);

INSERT INTO question_attributes VALUES (question_attributes_seq.NEXTVAL, question_content_seq.CURRVAL, 'native name', 1, 'nativeName');
INSERT INTO archives (id, question_attributes_id) VALUES (archives_seq.NEXTVAL, question_attributes_seq.CURRVAL);

INSERT INTO question_attributes VALUES (question_attributes_seq.NEXTVAL, question_content_seq.CURRVAL, 'numeric code', 1, 'numericCode');
INSERT INTO archives (id, question_attributes_id) VALUES (archives_seq.NEXTVAL, question_attributes_seq.CURRVAL);

INSERT INTO question_attributes VALUES (question_attributes_seq.NEXTVAL, question_content_seq.CURRVAL, 'area', 1, 'area');
INSERT INTO archives (id, question_attributes_id) VALUES (archives_seq.NEXTVAL, question_attributes_seq.CURRVAL);

INSERT INTO question_content VALUES (question_content_seq.NEXTVAL, 'Which <?> does <?> belong to?');
INSERT INTO question_attributes VALUES (question_attributes_seq.NEXTVAL, question_content_seq.CURRVAL, 'regional block', 1, 'regionalBlocs|name');
INSERT INTO archives (id, question_attributes_id) VALUES (archives_seq.NEXTVAL, question_attributes_seq.CURRVAL);

INSERT INTO question_content VALUES (question_content_seq.NEXTVAL, 'Which of the listed <?> borders <?>?');
INSERT INTO question_attributes VALUES (question_attributes_seq.NEXTVAL, question_content_seq.CURRVAL, 'countries', 1, 'borders');
INSERT INTO archives (id, question_attributes_id) VALUES (archives_seq.NEXTVAL, question_attributes_seq.CURRVAL);

INSERT INTO question_content VALUES (question_content_seq.NEXTVAL, 'Which of the listed <?> is related to <?>?');
INSERT INTO question_attributes VALUES (question_attributes_seq.NEXTVAL, question_content_seq.CURRVAL, 'time zones', 1, 'timezones');
INSERT INTO archives (id, question_attributes_id) VALUES (archives_seq.NEXTVAL, question_attributes_seq.CURRVAL);

COMMIT;