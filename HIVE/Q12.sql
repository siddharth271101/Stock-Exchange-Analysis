select x.sector,x.trading_year,x.growth from stock_table4 x, 
(select sector,min(growth) growth from stock_table4            group by sector) y where x.sector=y.sector and x.growth=y.growth;
