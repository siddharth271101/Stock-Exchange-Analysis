create table stock_table4 as select open.sector, open.trading_year,
(close-open) growth from (select sector,trading_year,avg(open) open from stock_data where trading_month = 1 group by sector,trading_year) open,          (select sector,trading_year,avg(close) close from stock_data 
where trading_month=12 group by sector,trading_year) close 
where open.sector = close.sector and open.trading_year = close.trading_year; 
 
select * from stock_table4 limit 5; 
