select a.sector,a.trading_year,a.growth from stock_table4 a, 
(select b.sector,max(growth) growth from stock_table4     group by sector) b where a.sector=b.sector and 
a.growth=b.growth; 
