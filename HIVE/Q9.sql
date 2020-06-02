create table stock_table3 as select state,sub_industry, avg(growth_percent)ind_growth from stock_table2 group by state, sub_industry having count(sub_industry>=2); 

 Select * from stock_table3 limit 10; 
