create table stock_data as select trading_year, trading_month, sc.symbol, company_name, trim(split(headquarter,”\;”)[1]) state, sector, sub_industry, open, close, low, high, volume from stock_companies sc, 
(select symbol, year(trading_date) trading_year, month(trading_date) trading_month, round(avg(open),2) open, round(avg(close),2) close, round(avg(low),2) low, round(avg(high),2) high, round(avg(volume),2) volume from stock_prices group by symbol, month(trading_date),year(trading_date)) sp where sc.symbol=sp.symbol; 
 select * from stock_data limit 5;  
