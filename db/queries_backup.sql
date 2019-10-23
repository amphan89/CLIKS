/* 1st query */
(SELECT *
FROM scores s1
LEFT JOIN (SELECT *
FROM scores s2) t2
ON t2.question_id = s1.question_id);

/* 2nd */
SELECT *, (answer-t2answer) AS answer_difference FROM
(SELECT *
FROM scores s1
LEFT JOIN (SELECT question_id AS t2question_id,
user_id AS t2user_id, answer AS t2answer
FROM scores s2) t2
ON t2question_id = s1.question_id) t3;

/* 3rd */
SELECT user_id, t2user_id, answer_difference FROM
(SELECT *, (answer-t2answer) AS answer_difference FROM
(SELECT *
FROM scores s1
LEFT JOIN (SELECT question_id AS t2question_id,
user_id AS t2user_id, answer AS t2answer
FROM scores s2) t2
ON t2question_id = s1.question_id) t3) t4;
