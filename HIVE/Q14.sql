select x.sector,x.trading_year,round(x.growth,0) from stock_table4 x, 
(select sector,round(avg(growth),0) growth from stock_table4                  group by sector) y where x.sector=y.sector and  x.growth=y.growth; 
