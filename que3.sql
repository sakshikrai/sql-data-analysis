-- Question- Find the cost per customer for each advertising channel and year combination . Include only channels that are advertised via public transport (advertising channel includes "bus" substring).
-- The cost per customer is equal to the total spent money divided by the total number of acquired customers through that advertising channel. Output advertising channel, year and its cost per customer.

-- Table
-- uber_advertising
-- link- https://platform.stratascratch.com/coding/10001-find-the-cost-per-customer-for-advertising-via-public-transport?code_type=5

SELECT 
    advertising_channel, 
    year, 
    money_spent / customers_acquired AS cost_per_customer
FROM uber_advertising
WHERE advertising_channel LIKE '%bus%';