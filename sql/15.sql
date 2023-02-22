/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT
   category.name,
    count(film_id) AS sum
    FROM category
    INNER JOIN film_category USING (category_id)
    INNER JOIN film USING (film_id)
    INNER JOIN language USING(language_id)
    WHERE language.name IN ('English')
    GROUP BY category.name
    ;

