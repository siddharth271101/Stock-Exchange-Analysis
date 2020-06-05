# Stock-Exchange-Analysis



## Objective: 
To use hive features for data engineering or analysis and sharing the actionable insights

## Problem Statement:
NewYork stock exchange data of seven years, between 2010 to 2016, is captured for 500+ listed companies. The data set comprises of intra-day prices and volume traded for each listed company. The data serves both for machine learning and exploratory analysis projects, to automate the trading process and to predict the next trading-day winners or losers.. The scope of this project is limited to exploratory data analysis.


## Analysis to be done: 
Exploratory analysis to understand how MoM or YoY companies from different sectors or industries and states have progressed in a period of 7 years

## Content:
<b>Two datasets StockPrices.csv and Stockcompanies.csv files having the following features:</b>

<b>StockPrices.csv:</b>

Date: Trading date<br>
Symbol: Ticker code or listed company code on NY stock exchange<br>
Open: Intra-day opening price for each listed company<br>
Close: Intra-day closing price for each listed company<br>
Low: Intra-day lowest price for each listed company<br>
High: Intra-day highest price for each listed company<br>
Volume: Number of shares traded per day per company<br>

<b>Stockcompanies.csv:</b>

Ticker_Symbol: Country to which the customer belongs<br>
Security: Legal name of the listed com<br>
Sector: Business vertical of the listed company<br>
Sub_Industry: Business domain of the listed company within a Sector.<br>
Headquarter: Headquarters address<br>


## Steps Performed:

<b>1) Created a data pipeline using sqoop to pull the data from the tables(STOCK_COMPANIES AND STOCK_PRICES) from SQL server into Hive.</b>

<b>a. MYSQL DATABASE NAME: BDHS_PROJECT</b>

i. STOCK_PRICES<br>
ii.STOCK_COMPANIES<br>

<b>TABLE: STOCK_PRICES</b>

Column Name	Datatype<br>
Trading_date	Date<br>
Symbol	String<br>
Open	double<br>
Close	double<br>
Low	double<br>
High	double<br>
Volume	int<br>

<b>TABLE: STOCK_COMPANIES</b>

Column Name	Datatype<br>
Symbol	String<br>
Company_name	String<br>
Sector	String<br>
Sub_industry	String<br>
Headquarter	String<br>

<b>2) Created a new hive table with the following fields by joining the above two hive tables and used appropriate Hive built-in functions for columns (a,b,e and h to l).</b>

Trading_year: Should contain YYYY for each record<br>
Trading_month: Should contain MM or MMM for each record<br>
Symbol: Ticker code<br>
CompanyName: Legal name of the listed company<br>
State: State to be extracted from headquarters value.
Sector: Business vertical of the listed company<br>
Sub_Industry: Business domain of the listed company within a sector<br>
Open: Average of intra-day opening price by month and year for each listed company<br>
Close: Average of intra-day closing price by month and year for each listed company<br>
Low: Average of intra-day lowest price by month and year for each listed company<br>
High: Average of intra-day highest price by month and year for each listed company<br>
Volume: Average of number of shares traded by month and year for each listed company<br>


## Data Analysis Was Performed Using Hive To Solve The Following Tasks


<b>3) Find the top five companies that are good for investment<br>
4) Show the best-growing industry by each state, having at least two or more industries mapped.<br>
5) For each sector find the following.</b><br>
   a. Worst year<br>
   b. Best year<br><b>
