--Populate questions table
INSERT INTO questions (question_id, question, template_name)
VALUES 
  (DEFAULT, "Question 1", "Template 1"),
  (DEFAULT, "Question 2", "Template 2"),
  (DEFAULT, "Question 3", "Template 3"),
  (DEFAULT, "Question 4", "Template 4"),
  (DEFAULT, "Question 5", "Template 5")
;

--Populate dbUser table
INSERT INTO dbUser (user_id, user_name)
VALUES 
  (DEFAULT, "Name 1"),
  (DEFAULT, "Name 2"),
  (DEFAULT, "Name 3"),
  (DEFAULT, "Name 4"),
  (DEFAULT, "Name 5")
;

--Populate responses table
INSERT INTO responses (response_id, question_id, response, survey_all_id)
VALUES 
  (DEFAULT, 1, "Yes", 1),
  (DEFAULT, 1, "No", 1),
  (DEFAULT, 1, "No", 1),
  (DEFAULT, 2, "John", 2),
  (DEFAULT, 1, "No", 1)
;

--Populate surveyAll table
INSERT INTO surveyAll (survey_all_id, survey_name)
VALUES
  (DEFAULT, "Survey 1"),
  (DEFAULT, "Survey 2"),
  (DEFAULT, "Survey 3"),
  (DEFAULT, "Survey 4"),
  (DEFAULT, "Survey 5"),
 ;
