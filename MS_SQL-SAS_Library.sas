
options set=EASYSOFT_UNICODE=YES;

proc sql;
   connect to odbc as mycon(datasrc="MS_SQL");

   create table work.myproducts as
   select * from connection to mycon
      (select * from products);

   disconnect from mycon;
quit;

