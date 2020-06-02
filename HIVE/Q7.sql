create table stock_table1 as select company_name, min(trading_year) min_year, max(trading_year) max_year, min(trading_month) min_month, max(trading_month) max_month from stock_data group by company_name; 


select stock_start.company_name, ((close-open)/open)*100 growth_percent 
from(select t1.company_name, open from stock_data sd, stock_table1 t1 
 where sd.trading_year = t1.min_year  and sd.trading_month = t1.min_month  	and sd.company_name = t1.company_name) stock_start, (select t1.company_name,
close from stock_data sd, stock_table1 t1 
where sd.trading_year = t1.max_year and sd.trading_month = t1.max_month  	and sd.company_name = t1.company_name) stock_end where stock_start.company_name = stock_end.company_name sort by growth_percent desc limit 5; 
