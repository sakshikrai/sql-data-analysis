-- problem link- https://datalemur.com/questions/sql-histogram-tweets

SELECT 
    tweet_count AS tweet_bucket, 
    COUNT(user_id) AS users_num
FROM (
    /* Step 1: Count tweets per user in 2022 */
    SELECT 
        user_id, 
        COUNT(tweet_id) AS tweet_count
    FROM tweets
    WHERE tweet_date >= '2022-01-01' 
      AND tweet_date < '2023-01-01'
    GROUP BY user_id
) AS user_tweet_totals
GROUP BY tweet_count
ORDER BY tweet_bucket;