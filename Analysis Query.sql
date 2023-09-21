use Shark_tank

-- Print all the data from content table
Select * from content

-- total episodes conducted
Select count(distinct(EP_no))as total_episode_conducted from content

-- pitches that got fundings
Select distinct(Brand),Amount_Invested_lakhs from content
where Amount_Invested_lakhs>0

-- were the pitches converted or not 
Select Brand, 
(case when Amount_Invested_lakhs >0 then 'Yes' else 'No' end )as pitches_converted_or_not
from content

-- how much percent people got fundings from sharks
Select cast(SUM(a.converted_or_not)as float)/cast(count(*)as float)
from(
Select Amount_Invested_lakhs, case when Amount_Invested_lakhs>0 then 1 else 0 end as converted_or_not
from content)a


-- total number of male participants
Select * from content

Select sum(Male) as number_of_male from content

-- total female participants
Select sum(female) as number_of_feamle from content

-- gender ratio
Select cast(sum(female)as float)/cast(sum(Male)as float) from content

-- total amount invested
Select sum(Amount_Invested_lakhs)as total_amount_invested from content

-- avg equity taken
Select avg(Equity_Taken) from content

-- highest deal taken
Select MAX(Amount_invested_lakhs) from content

-- how many participant teams had atleast one women 
Select * from content

Select Count(Brand) from content
where Female>0 and male>0

--  avg team members
Select avg(Team_members)as average_members_in_a_team from content

-- amount invested per deal
Select * from content

Select avg(Amount_Invested_lakhs)
from content
where Deal <> 'No Deal'

-- which age group is seen to come more at sharktank

Select * from content

Select Top 1 Avg_age,count(*)as number_of_people
from content
group by Avg_age
order by 2 desc

-- location group of contestants from where more contestants are coming

Select Location,count(*) total from content
group by Location
order by total desc

-- which sector has most startups coming from
Select Sector,count(*)as total
from content
group by Sector
order by 2 desc

-- partner deals (max deals together)
Select * from content

select partners as investor,count(partners) as countt 
from content 
where partners is not null 
group by partners 
order by countt desc;

-- making the matrix
-- total number of deals in which ashneer was present
Select Count(Deal)as number_of_deal_by_Ashneer from content
where Ashneer_Amount_Invested <>0

