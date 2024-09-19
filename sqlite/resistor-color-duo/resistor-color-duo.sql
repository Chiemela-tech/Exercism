-- Schema: CREATE TABLE "color_code" ("color1" TEXT, "color2" TEXT, "result" INT);
-- Task: update the color_code table and set the result based on the two colors.
UPDATE color_code
SET result = 
    (CASE color1
        WHEN 'black' THEN '0'
        WHEN 'brown' THEN '1'
        WHEN 'red' THEN '2'
        WHEN 'orange' THEN '3'
        WHEN 'yellow' THEN '4'
        WHEN 'green' THEN '5'
        WHEN 'blue' THEN '6'
        WHEN 'violet' THEN '7'
        WHEN 'grey' THEN '8'
        WHEN 'white' THEN '9'
     END || 
     CASE color2
        WHEN 'black' THEN '0'
        WHEN 'brown' THEN '1'
        WHEN 'red' THEN '2'
        WHEN 'orange' THEN '3'
        WHEN 'yellow' THEN '4'
        WHEN 'green' THEN '5'
        WHEN 'blue' THEN '6'
        WHEN 'violet' THEN '7'
        WHEN 'grey' THEN '8'
        WHEN 'white' THEN '9'
     END);
-- The CASE statement is used to map each color to its corresponding numeric value
-- I concatenated the results of color1 and color2 using ||