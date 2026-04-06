-- que- Find the advertising channel where Uber spent more than 100k USD in 2019
-- ID 10002
-- Find the advertising channel(s) where Uber spent more than 100k USD in 2019.
-- link-https://platform.stratascratch.com/coding/10002-find-the-advertising-channel-where-uber-spent-more-than-100k-usd-in-2019?code_type=5

SELECT advertising_channel
FROM uber_advertising
WHERE year = 2019 
  AND money_spent > 100000;