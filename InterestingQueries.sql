-- Counts how many questions are classified under a template --
SELECT template_name AS "Template", COUNT(*)
FROM questions
GROUP BY template_name;

-- Counts how many responses a single survey received --
SELECT survey_name AS "Survey Title", COUNT(*)
FROM responses JOIN surveyAll
ON responses.survey_all_id = surveyAll.survey_all_id
GROUP BY survey_name;

-- Gives number of responses to a specific question --
SELECT question as "Question", COUNT(*)
FROM responses JOIN questions
ON responses.question_id = questions.question_id
GROUP BY question;

-- Gives list of names of people who responded to any of the surveys --
SELECT DISTINCT response AS "Names of People Who Responded"
FROM responses
WHERE question_id IN
(SELECT question_id
 FROM questions
 WHERE question = "What is your name?")
ORDER BY response;

-- Gives list of questions that have not been responded to --
SELECT question AS "Questions Not Answered"
FROM questions
WHERE question_id NOT IN
(SELECT q.question_id
 FROM responses r JOIN questions q
ON r.question_id = q.question_id
);

-- Gives list of surveys that have not been responded to --
SELECT survey_name AS "Surveys That No One Responded To"
FROM surveyAll
WHERE survey_all_id NOT IN
(SELECT r.survey_all_id
 FROM responses r JOIN surveyAll s
ON r.survey_all_id = s.survey_all_id
);

-- Gives number of questions in a single survey --
SELECT survey_name, r.survey_all_id, COUNT(DISTINCT question_id)
FROM surveyAll s JOIN responses r
ON s.survey_all_id = r.survey_all_id
GROUP BY r.survey_all_id;
