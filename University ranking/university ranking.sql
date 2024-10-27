Create Database World_University;

Use university_ranking;

-- import table
select * from university_ranking;

/* Data Exploration Using SQL
Explore the structure of the dataset using basic SQL queries 
(e.g., SELECT, COUNT(), GROUP BY, etc.).*/

-- View the structure of the table
describe university_ranking;

-- Check the total number of record
select count(*) from university_ranking;

-- 3. Analysis Questions
-- i. Top Universities by Overall Score

Create view Top10_uni as
select university, Overall from university_ranking order by overall desc
limit 10;


-- ii. Top Countries by Research Performance
Create view Top10_countryR as
select country, avg(Research) as avg_research_score from university_ranking
group by country order by avg_research_score desc
limit 10;



# iii. Impact of International Outlook on Rankings
select University,Ranking ,International_outlook from university_ranking
where International_Outlook > 90;

select * from university_ranking;
select university, max(teaching) from university_ranking
group by university order by max(teaching) desc
limit 1;

# iv. Correlation Between Industry Income and Rankings
select University,Ranking ,Industry_Income from university_ranking
where Industry_Income > 90;

/* 5. Conclusion and Insights
From the SQL queries, we can derive the following insights:
•	Top Universities:
The top 10 universities by overall score typically belong to countries with strong research and teaching performances.
•	Research Performance:
Countries such as the US and the UK tend to dominate research performance metrics, correlating with their high university rankings.
•	International Outlook Influence:
A high international outlook score generally correlates with better university rankings, though some universities may rank highly with moderate outlook scores due to strong research or teaching metrics.
•	Industry Income:
High industry income can be found among top universities, but it is not always a decisive factor in overall ranking compared to research and citations.
*/