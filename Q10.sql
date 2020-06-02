select t3.state, sub_industry, ind_growth from stock_table3 t3, 
(select state,max(ind_growth) max_growth from stock_table3           group by state) max_ind where max_ind.state = t3.state and 
            t3.ind_growth = max_ind.max_growth; 
