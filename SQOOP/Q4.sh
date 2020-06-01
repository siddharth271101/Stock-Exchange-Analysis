sqoop import --connect 
jdbc:mysql://ip-10-0-1-10.ec2.internal/
BDHS_PROJECT --username labuser 
--password simplilearn 
--table STOCK_COMPANIES 
–hive-import -hive-database 
stock_db --m 1  