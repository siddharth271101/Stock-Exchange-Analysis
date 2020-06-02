create table stock_table2 as select 
state, sub_industry, stock_start.company_name, ((stock_end.close-stock_start.open)/stock_start.open)*100 growth_percent 
from (select t1.company_name,open
            from stock_data sd, stock_table1 t1
            where sd.trading_year=t1.min and
                        sd.trading_month=t1.min_month and
                        sd.company_name=t1.company_name)stock_start,
         (select t1.company_name, close
           from stock_data sd, stock_table1 t1
            where sd.trading_year=t1.max and
                        sd.trading_month=t1.max_month and
                        sd.company_name=t1.company_name)stock_end,
          (select company_name, state, sub_industry
            from stock_data
            group by company_name,state,sub_industry)sd
where (stock_end.close-stock_start.open)>0 and
           stock_start.company_name=stock_end.company_name and
           sd.company_name=stock_start.company_name;
  
select * from stock_table2 limit 5; 
