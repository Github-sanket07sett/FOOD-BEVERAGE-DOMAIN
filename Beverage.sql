create database beverage;
use beverage;
select * from dim_cities;
select * from dim_repondents;
select * from fact_survey_responses;

#Who prefers energy drink more?  (male/female/non-binary?)
select r.Gender As Gender,count(r.Gender) As Count_gender
from dim_repondents r
inner join fact_survey_responses f 
using(Respondent_ID)
group by r.Gender
order by count(r.Gender);

# Which age group prefers energy drinks more? 
select r.Age As Age_group,count(r.Age) As Count_age
from dim_repondents r
inner join fact_survey_responses f 
using(Respondent_ID)
group by r.Age
order by count(r.Age);






#Which type of marketing reaches the most Youth (15-30)?
select f.Marketing_channels,count(f.Marketing_channels) As Count_channels
from fact_survey_responses f 
inner join
dim_repondents r
using (Respondent_ID)
where r.Age between'15-18' and '19-30'
group by f.Marketing_channels
order by count(f.Marketing_channels) desc
;

# What are the preferred ingredients of energy drinks among respondents?
select Ingredients_expected,count(Ingredients_expected) AS preferred_ingredients
from
fact_survey_responses
group by Ingredients_expected
order by count(Ingredients_expected) desc;

#What packaging preferences do respondents have for energy drinks? 
select Packaging_preference,count(Packaging_preference) AS preferred_packaging
from
fact_survey_responses
group by Packaging_preference
order by count(Packaging_preference) desc;

#What are the primary reasons consumers prefer those brands over ours? 
select Reasons_for_choosing_brands,count(Reasons_for_choosing_brands) AS preferred_packaging
from
fact_survey_responses
group by Reasons_for_choosing_brands
order by count(Reasons_for_choosing_brands) desc;

#Reasons for preventing trying
select Reasons_preventing_trying,count(Reasons_preventing_trying) AS preferred_packaging
from
fact_survey_responses
group by Reasons_preventing_trying
order by count(Reasons_preventing_trying) desc;

#current market leaders
select Current_brands,count(Respondent_ID) as Current_users from fact_survey_responses
group by  Current_brands
order by count(Respondent_ID) desc;







#Taste experince of codex
select count(Taste_experience) as Count_rating,
case
	when Taste_experience=5 then 'great'
    when Taste_experience=4 then 'good'
    when Taste_experience=3 then 'average'
    when Taste_experience=2 then 'Below avg'
    else 'bad'
    end as rating
from fact_survey_responses
Where Current_brands='CodeX'
group by Taste_experience
order by count(Taste_experience) desc
;


#Which cities do we need to focus more on? 
SELECT 
    r.City_ID,
    c.City,
    COUNT(r.Respondent_ID) AS Respondent_Count
FROM 
    dim_repondents r
INNER JOIN 
    fact_survey_responses f
USING (Respondent_ID)
INNER JOIN 
    dim_cities c
USING (City_ID)
WHERE 
    f.Current_brands = 'CodeX'
GROUP BY 
    r.City_ID, c.City
ORDER BY 
    Respondent_Count;


#Where do respondents prefer to purchase energy drinks? 
select Purchase_location, count(Respondent_ID) 
from fact_survey_responses

group by Purchase_location
order by count(Respondent_ID) desc;

#What are the typical consumption situations for energy drinks among respodants
select Typical_consumption_situations, count(Respondent_ID) 
from fact_survey_responses

group by Typical_consumption_situations
order by count(Respondent_ID) desc;

#What factors influence respondents' purchase decisions, such as price range and limited edition packaging?
select Price_range, count(Respondent_ID) 
from fact_survey_responses
group by Price_range
order by count(Respondent_ID) desc;


# Consume Time Distribution
select Consume_time,count(Respondent_ID) 
from fact_survey_responses
group by Consume_time
order by count(Respondent_ID) desc;

#Reason for not trying
select Reasons_preventing_trying,count(Respondent_ID)
from fact_survey_responses
group by Reasons_preventing_trying
order by count(Respondent_ID) desc;