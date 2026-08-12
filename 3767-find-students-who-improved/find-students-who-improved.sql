WITH x AS (
    SELECT DISTINCT
        student_id,
        subject,
     FIRST_VALUE(score) OVER (
            PARTITION BY student_id, subject
            ORDER BY exam_date
        ) AS first_score,
    FIRST_VALUE(score) OVER (
            PARTITION BY student_id, subject
            ORDER BY exam_date DESC
        ) AS latest_score,
    COUNT(*) OVER (
            PARTITION BY student_id, subject
        ) AS exam_count
    FROM Scores
)
SELECT student_id, subject, first_score, latest_score
FROM x
WHERE exam_count >= 2
  AND latest_score > first_score
ORDER BY student_id, subject;