
Libname Feb_2017 'G:\SAS new class\a4.SAS';
Run;

/*Create my First programming in SAS*/

/*Lets talk about shortcut keys in SAS*/

/*To run sas program press: "F3"*/
/*To comment : "CTRL+?"*/
/*To Un-comment: "CTRL+SHIFT+?"*/
/*To Clean your windows: "CTRL+E"*/

/*to see all the shortcut keys: "F9"*/

Data Student;
Input Stu_ID $ stu_name $ Age Education $ Occupation $ DOE Course $ ;
Informat DOE MMDDYY10.;/* Reading data into sas format*/
Format DOE MMDDYY10.;/* Writing data inro sas format*/
Cards;
a1	AAA1	30	MBA	IT	01/01/1960	SAS
a2	AAA2	32	Btech	OPS	01/10/1960	Analytics
a3	AAA3	27	BSC	HR	01/01/1959	SAS
a4	AAA4	25	Mtech	MKT	08/29/2016	Analytics
a5	AAA5	32	MBA	IT	08/29/2016	SAS
a6	AAA6	26	Btech	OPS	08/29/2016	Analytics
a7	AAA7	25	BSC	HR	08/29/2016	SAS
a8	AAA8	25	Mtech	MKT	08/29/2016	Analytics
a9	AAA9	28	MBA	IT	08/29/2016	SAS
a10	AAA10	28	Btech	OPS	08/29/2016	Analytics
a11	AAA11	30	BSC	HR	08/29/2016	SAS
;
Run;

/*When we were writing sas programming , we used some statements.*/
/*Lets discuss the statements*/


Data Student;/* Data Statement to create dataset as Student here*/
Input Stu_ID $ stu_name $ Age Education $ Occupation $ DOE Course $ ;/* Input statement to define column input*/
Informat DOE MMDDYY10.;/* Informat statement is to Reading data into sas format*/
Format DOE MMDDYY10.;/* Format statementWriting data inro sas format*/
/* Cards statement is to put temporary data*/
Cards;
a1	AAA1	30	MBA	IT	01/01/1960	SAS
a2	AAA2	32	Btech	OPS	01/10/1960	Analytics
a3	AAA3	27	BSC	HR	01/01/1959	SAS
a4	AAA4	25	Mtech	MKT	08/29/2016	Analytics
a5	AAA5	32	MBA	IT	08/29/2016	SAS
a6	AAA6	26	Btech	OPS	08/29/2016	Analytics
a7	AAA7	25	BSC	HR	08/29/2016	SAS
a8	AAA8	25	Mtech	MKT	08/29/2016	Analytics
a9	AAA9	28	MBA	IT	08/29/2016	SAS
a10	AAA10	28	Btech	OPS	08/29/2016	Analytics
a11	AAA11	30	BSC	HR	08/29/2016	SAS
;
Run;/* To execute teh program*/ 

08067888777

/*How to print the output of my dataset- Student*/

Proc Print data=student;
run;

/*We will discuss about library, Dataset, Variable in depth now*/

/*Library*/

/*Libraries are two types:*/
/*Permanent Library- SASUSER and SASHELP*/
/*Temporary Library- WORK*/

/*Advantages of having Library- Like your own wallet*/
/*Disadvantages of work library- all dataset will be vanished post program close*/


/*Just to avoid such instance we have to create our own library*/

Libname < Libref> 'Path' ;
Run;

Libname Feb_2017 'F:\Sisters\a4.SAS';
Run;

/*Creating Library we have to follow some criterias*/
/*1. Library Name should not be more than 8 character Long*/
/*2. It should not be started with a number or any special character. */
/*3. It can be started with alphabets or an underscore only and followed by number or underscore only*/

/*Ex*/
/*Mar_2017==Correct*/
/*Mar 2017==Wrong*/
/*Mar@2017= wrong*/
/*Mar_2017_Analytics====Wrong*/

/*How to keep dataset intp my Library*/


Data Feb_2017.Student;
Input Stu_ID $ stu_name $ Age Education $ Occupation $ DOE Course $ ;
Informat DOE MMDDYY10.;/* Reading data into sas format*/
Format DOE MMDDYY10.;/* Writing data inro sas format*/
Cards;
a1	AAA1	30	MBA	IT	01/01/1960	SAS
a2	AAA2	32	Btech	OPS	01/10/1960	Analytics
a3	AAA3	27	BSC	HR	01/01/1959	SAS
a4	AAA4	25	Mtech	MKT	08/29/2016	Analytics
a5	AAA5	32	MBA	IT	08/29/2016	SAS
a6	AAA6	26	Btech	OPS	08/29/2016	Analytics
a7	AAA7	25	BSC	HR	08/29/2016	SAS
a8	AAA8	25	Mtech	MKT	08/29/2016	Analytics
a9	AAA9	28	MBA	IT	08/29/2016	SAS
a10	AAA10	28	Btech	OPS	08/29/2016	Analytics
a11	AAA11	30	BSC	HR	08/29/2016	SAS
;
Run;

Proc print data=Feb_2017.Student;
Run;

/*lets discuss about creating dataset and Variable Name*/

/*Creating dataset and Variable name we have to follow some criterias*/
/*1. Library Name should not be more than 32 character Long*/
/*2. It should not be started with a number or any special character. */
/*3. It can be started with alphabets or an underscore only and followed by number or underscore only*/

/*Ex:*/
/*Karnataka_South_Zone_Products_delivery_2017Feb--No*/
/*Karnataka@2017--No*/
/*Karnataka_2017--Yes*/
/*2017_Karnatak--No*/
/*_2017Karnataka--Yes*/

/*============================================*/

/*variable Values*/

/*Variables are two types:*/
/*Numeric- default 8 bytes, which is eual to 16-17 digits*/
/*Character- default 8 character, can be maximum upto 32,767*/

/*To justify lets have program*/

Data batch;
Input Name $ Course $ Age ;
Datalines;
DebendraDas Adv_analytics 34
Roshni SAS 23
Ravi Analytics 37
;
Run;

Proc print;
run;

Data batch;
Input Name : $15. Course : $15. Age ;
Datalines;
DebendraDas Adv_analytics 34
Roshni SAS 23
Ravi Analytics 37
;
Run;

Proc print;
run;


Data batch;
length name course $15.;
Input Name  $ Course  $ Age ;
Datalines;
DebendraDas Adv_analytics 34
Roshni SAS 23
Ravi Analytics 37
;
Run;

Proc print;
run;


Data batch;
Informat name $15.;
Informat course $15.;
Format name $15.;
Format course $15.;
Input Name  $ Course  $ Age ;
Datalines;
DebendraDas Adv_analytics 34
Roshni SAS 23
Ravi Analytics 37
;
Run;

Proc print;
run;

/*Discussion*/
/*How many statements we covered till now*/
/*Data statement*/
/*Input Statement*/
/*Format Statement*/
/*Informat Statement*/
/*Libname statement*/
/*Length statement*/
/*Run statement*/
/*Proc print statement*/

/*Remember Remember Remember*/
/*==================================*/

/*Every SAS  Programming based on two steps*/

/*Data step- Creating dataset*/
/*Proc step- Printing results*/

/*Data step- starts from data statement and ends with run statement*/
Data batch;
Informat name $15.;
Informat course $15.;
Format name $15.;
Format course $15.;
Input Name  $ Course  $ Age ;
Datalines;
DebendraDas Adv_analytics 34
Roshni SAS 23
Ravi Analytics 37
;
Run;

/*proc step*/
Proc print;
run;

/*It is also called Step Boundaries in SAS Programming*/


/*Below four things will always carry in sas programming*/
/*1.Programming steps in SAS*/
/*2.Statements in SAS*/
/*3.Options in SAS*/
/*4.Functions in SAS*/

/*Reading data from a standard format file*/

Data Feb_2017.Staff;
Infile 'F:\Sisters\a4.SAS\emplist.txt';
Input Last_Name $ 1-20 First_Name $ 21-30 Emp_Code $ 31-35 Jobtitle $ 36-43
DOJ Salary 54-59;
Informat DOJ MMDDYY10.;
Format DOJ Date9.;
run;

proc print data=Feb_2017.Staff;
Run;


/*How to Describe your dataset and library*/
/*===============================================*/

/*Descriptor portion of your libraray and dataset*/

proc contents data=feb_2017.Staff;
run;

proc contents data=feb_2017.Staff varnum;
run;

/*What if , I want see only headers*/

Proc contents data=Feb_2017.Staff varnum Short;
Run;

/* Last_Name First_Name Emp_Code Jobtitle DOJ Salary*/

/*Can we get the contents into a dataset*/

proc contents data=feb_2017.Staff varnum out=staff_content;
run;


/*Data Portion*/

Proc print data=Feb_2017.Staff;
Run;

Proc print data=Feb_2017.Staff;
Var Last_name First_Name Jobtitle Salary;
Run;


Proc print data=Feb_2017.Staff;
Var Last_name First_Name Jobtitle Salary;
Format Salary Dollar10.2;
Run;

Proc print data=Feb_2017.Staff (obs=10);
Var Last_name First_Name Jobtitle Salary;
Format Salary Dollar10.2;
Run;

Proc print data=Feb_2017.Staff (Firstobs=10 obs=15);
Var Last_name First_Name Jobtitle Salary;
Format Salary Dollar10.2;
Run;

Proc print data=Feb_2017.Staff (Firstobs=15 obs=15);
Var Last_name First_Name Jobtitle Salary;
Format Salary Dollar10.2;
Run;

Proc print data=Feb_2017.staff;
var Jobtitle Last_Name First_Name Salary;
run;


Proc sort data=Feb_2017.Staff Out=Feb_2017.Staff_sort;
By Jobtitle;
Run;

Proc print data=Feb_2017.staff_sort;
var Jobtitle Last_Name First_Name Salary;
By Jobtitle;
run;

Proc print data=Feb_2017.staff_sort;
var Jobtitle Last_Name First_Name Salary;
By Jobtitle;
ID Jobtitle;
Sum Salary;
Format Salary Dollar15.2;
run;

/*How can we create report of this above program*/

/*ODS=Output Delibvery System*/

ODS HTML FILE='F:\Sisters\a4.SAS\Staff.html';
Proc print data=Feb_2017.staff_sort;
var Jobtitle Last_Name First_Name Salary;
By Jobtitle;
ID Jobtitle;
Sum Salary;
Format Salary Dollar15.2;
run;
ODS HTML Close;

ODS PDF FILE='F:\Sisters\a4.SAS\Staff.pdf';
Proc print data=Feb_2017.staff_sort;
var Jobtitle Last_Name First_Name Salary;
By Jobtitle;
ID Jobtitle;
Sum Salary;
Format Salary Dollar15.2;
run;
ODS PDF Close;

ODS RTF FILE='F:\Sisters\a4.SAS\Staff.rtf';
Proc print data=Feb_2017.staff_sort;
var Jobtitle Last_Name First_Name Salary;
By Jobtitle;
ID Jobtitle;
Sum Salary;
Format Salary Dollar15.2;
run;
ODS RTF Close;

/*How to Describe your library*/

Proc contents data=Feb_2017._all_ ;
run;

Proc contents data=Feb_2017._all_  NODS;
run;

/*NODS= No Descriptions*/

/*How to create a new dataset from an existing dataset*/
/*=================================================*/

Data Staff_New;
set Feb_2017.Staff;
run;

/*Set statement is used here to create a new dataest from an existing dataset*/

Data Staff_New2;
set Staff_New;
Keep Last_name First_name Jobtitle Salary;
Run;

/*Keep as statement*/

Data Staff_New3 (Keep= Last_name First_name Jobtitle Salary);
set Staff_New;
Run;

Data Staff_New4 ;
set Staff_New (Keep= Last_name First_name Jobtitle Salary);
Run;

/*Drop as statement and as an option*/

Data Staff_new5;
Set Staff_New;
Drop Emp_Code DOJ;
Run;

Data Staff_new6 (Drop=Emp_Code DOJ);
Set Staff_New;
Run;

Data Staff_new6 ;
Set Staff_New (Drop=Emp_Code DOJ);
Run;

/*Rename as a statement or an an option*/

Data Staff_new7;
set Staff_New;
Rename Last_Name=LName;
Rename First_Name=FName;
Run;

Data Staff_new8;
set Staff_New;
Rename Last_Name=LName  First_Name=FName;
Run;

Data Staff_new9 (Rename=(Last_Name=LName  First_Name=FName));
set Staff_New;
Run;

/*Label*/

Data Staff_New10;
set Staff_New;
Label Last_Name=LName First_Name=FName;
Run;

Proc contents data=Staff_New10;
Run;

Proc contents data=Staff_New9;
Run;

Data Staff_11;
set Staff_New10;
run;

/*Where as a statement or where as an option*/

Data Staff_New12;
Set Staff_New;
Where Jobtitle='Pilot';
Run;

Data Staff_New12;
Set Staff_New;
Where Jobtitle='Pilot'  and Salary > 90000;
Run;

Data Staff_New12;
Set Staff_New;
Where Last_name like 'TO%';
Run;

Data Staff_New13 (Where= (Last_name like 'TO%'));
Set Staff_New;
Run;

Data Staff_New14 (Where=(Jobtitle='Pilot'  and Salary > 90000));
Set Staff_New;
Run;


/*Case Study on MED store data*/

/*Lets import the med store data*/

Proc import out=Feb_2017.MED
            datafile='F:\Sisters\a4.SAS\MED_New_2016.csv'
			dbms=csv replace;
Run;

/*How to see how many obervation and variables and variables data type*/

proc contents data=Feb_2017.Med;
run;

proc contents data=Feb_2017.Med Varnum;
run;


proc contents data=Feb_2017.Med Varnum Short;
run;

/*
CUSTOMER_ID Company CARD_REG_DATE CARD_ACTIVE FIRST_USE_DTE firstSTOR TITLE GENDER max_spent DOB
FTD Age STATE_CODE POST_CODE CUST_STAT Avgsize_spent CARD_STAT RGSTN_TYPE_IND NO_OF_TRIPS TOWN
EMAIL_IND CONTACT_PREF Average_Qty_PER_ACC Spent_amount
*/

Data Med_new;
set Feb_2017.MED;
Keep CUSTOMER_ID Company  GENDER Age STATE_CODE  NO_OF_TRIPS  Spent_amount ;
Run;

Data Med_new;
set Feb_2017.MED;
Keep CUSTOMER_ID Company  GENDER Age STATE_CODE  NO_OF_TRIPS  Spent_amount ;
Where company in ('APPOLO','CIPLA') and gender='Male' and age > 50;
Run;

Proc sql;
select count(*) as cnt from MED_new;
Quit;

Data Med_new2;
set feb_2017.Med;
Where Gender='Female' and Age between 30 and 70 and State_code='NSW';
Run;

/*Reading data into SAS*/
/*==============================*/

/*Importing Data from Excel File*/

Proc Import Out=Feb_2017.MED_APPOLO
            Datafile='F:\Sisters\a4.SAS\Raw Data\MED.xlsx'
			DBMS=Excel Replace;
			Sheet='APPOLO';
Run;


Proc Import Out=Feb_2017.MED_CIPLA
            Datafile='F:\Sisters\a4.SAS\Raw Data\MED.xlsx'
			DBMS=Excel Replace;
			Sheet='CIPLA';
Run;

Proc Import Out=Feb_2017.MED_GSK
            Datafile='F:\Sisters\a4.SAS\Raw Data\MED.xlsx'
			DBMS=Excel Replace;
			Sheet='GSK';
Run;

/*Exporting data to Excel*/

Proc Export data=Feb_2017.MED_APPOLO
            Outfile='F:\Sisters\a4.SAS\Raw Data\Export\MED_EXP.xlsx'
			DBMS=Excel Replace;
			Sheet='APPOLO';
Run;



Proc Export data=Feb_2017.MED_CIPLA
            Outfile='F:\Sisters\a4.SAS\Raw Data\Export\MED_EXP.xlsx'
			DBMS=Excel Replace;
			Sheet='CIPLA';
Run;

Proc Export data=Feb_2017.MED_GSK
            Outfile='F:\Sisters\a4.SAS\Raw Data\Export\MED_EXP.xlsx'
			DBMS=Excel Replace;
			Sheet='GSK';
Run;

/*Importing data from CSV file*/

Proc Import out=Feb_2017.MEd_CSV
            datafile='F:\Sisters\a4.SAS\Raw Data\MED_New_2016.csv'
			DBMS=CSV Replace;
Run;

/*Exporting into csv*/
Proc Export data=Feb_2017.MEd_CSV
            Outfile='F:\Sisters\a4.SAS\Raw Data\Export\MED_EXP.csv'
			DBMS=csv Replace;
Run;

/*Importing data from Text file*/

Proc Import out=Feb_2017.MEd_TXT
            datafile='F:\Sisters\a4.SAS\Raw Data\MED_New_2016.txt'
			DBMS=dlm Replace;
			Delimiter='09'x;
Run;

/*Exporting into csv*/
Proc Export data=Feb_2017.MEd_TXT
            Outfile='F:\Sisters\a4.SAS\Raw Data\Export\MED_EXP.txt'
			DBMS=dlm Replace;
			Delimiter='2c'x;
Run;

/*Importing data from Access database*/
Proc Import out=Feb_2017.MEd_Access
            datatable='MED'
			DBMS=Access Replace;            
            database='F:\Sisters\a4.SAS\Raw Data\MED.accdb';
Run;

/*Exporting access db*/

Proc Export data=Feb_2017.MEd_Access
            outtable='MED_new'
			DBMS=Access Replace;            
            database='F:\Sisters\a4.SAS\Raw Data\MED.accdb';
Run;

/*Reading data from text file*/

Data Student1;
Infile 'F:\Sisters\a4.SAS\Raw Data\Student.txt' dlm=',';
Input Stu_ID $	Stu_name $	Age	Course $	Education $	Occupation $ ;
Run;

Proc print;
run;

Data Student2;
Infile 'F:\Sisters\a4.SAS\Raw Data\Student1.txt' dlm=',' missover;
Input Stu_ID $	Stu_name $	Age	Course $	Education $	Occupation $ ;
Run;

Proc print;
run;

Data Student3;
Infile 'F:\Sisters\a4.SAS\Raw Data\Student2.txt' DSD dlm=',' missover;
Input Stu_ID $	Stu_name $	Age	Course $	Education $	Occupation $ ;
Run;

Proc print;
run;

/*DSD=Data Sensitive Delimeter*/
/*if there is consecutive delimiter , it will read value as missing while readinf data*/

Data Student4;
Infile 'F:\Sisters\a4.SAS\Raw Data\Student3.txt' DSD dlm=',' missover;
Input Stu_ID $	Stu_name $	Age	Course $	Education $	Occupation $  Address : $30.;
Run;

Proc print;
run;

/*DSD is also reading data from text qualifier as a single value*/


/*Reading data by defining length*/
Data Student5;
Infile 'F:\Sisters\a4.SAS\Raw Data\Student4.txt' dlm=',' ;
Length Course Education $30.;
Input Stu_ID $	Stu_name $	Age	Course $	Education $	Occupation $ ;
Run;

Proc print;
run;

Data Student5;
Infile 'F:\Sisters\a4.SAS\Raw Data\Student4.txt' dlm=',' ;
Informat Course $30.;
Informat Education $30.;
Format Course $30.;
Format Education $30.;
Input Stu_ID $	Stu_name $	Age	Course $	Education $	Occupation $ ;
Run;

Proc print;
run;

Data Student5;
Infile 'F:\Sisters\a4.SAS\Raw Data\Student4.txt' dlm=',' ;
Input Stu_ID $	Stu_name $	Age	Course : $30.	Education : $30. Occupation $ ;
Run;

Proc print;
run;

Data Student6;
Infile 'F:\Sisters\a4.SAS\Raw Data\Student5.txt' dlm='|' obs=4;
Input Stu_ID $	Stu_name $	Age	Course : $30.	Education : $30. Occupation $ ;
Run;

Proc print;
run;

Data Student6;
Infile 'F:\Sisters\a4.SAS\Raw Data\Student5.txt' dlm='|' firstobs=4 obs=8;
Input Stu_ID $	Stu_name $	Age	Course : $30.	Education : $30. Occupation $ ;
Run;

Proc print;
run;

Data Student6;
Infile 'F:\Sisters\a4.SAS\Raw Data\Student5.txt' dlm='|' ;
Input Stu_ID $	Stu_name $	Age	Course : $30.	Education : $30. Occupation $ ;
If mod(_N_,2)NE 0;
Run;

Proc print;
run;

/*Truncover*/
Data Trunc;
Infile 'F:\Sisters\a4.SAS\Raw Data\Trunc_data.txt' truncover;
Input Num 10.;
Run;

Proc print;
run;

Data Trunc;
Infile 'F:\Sisters\a4.SAS\Raw Data\Trunc_data.txt' ;
Input Num : 10.;
Run;

Proc print data=Trunc;
run;

Proc import out=MED_New_data
            datafile='F:\Sisters\a4.SAS\Raw Data\MED_New_2016.csv'
			DBMS=CSV Replace;
Run;

data MED_NEW_DATA_Haha    ;
infile 'F:\Sisters\a4.SAS\Raw Data\MED_New_2016.csv' dlm = ',' MISSOVER DSD lrecl=32767 firstobs=2 ;
informat CUSTOMER_ID best32. ;
informat Company $9. ;
informat CARD_REG_DATE anydtdtm40. ;
informat CARD_ACTIVE $1. ;
informat FIRST_USE_DTE anydtdtm40. ;
informat firstSTOR best32. ;
informat TITLE $4. ;
informat GENDER $6. ;
informat max_spent best32. ;
informat DOB ddmmyy10. ;
informat FTD anydtdtm40. ;
informat Age best32. ;
informat STATE_CODE $3. ;
informat POST_CODE best32. ;
informat CUST_STAT $6. ;
informat Avgsize_spent best32. ;
informat CARD_STAT $10. ;
informat RGSTN_TYPE_IND $6. ;
informat NO_OF_TRIPS best32. ;
informat TOWN $14. ;
informat EMAIL_IND $1. ;
informat CONTACT_PREF $5. ;
informat Average_Qty_PER_ACC best32. ;
informat Spent_amount best32. ;
format CUSTOMER_ID best12. ;
format Company $9. ;
format CARD_REG_DATE datetime. ;
format CARD_ACTIVE $1. ;
format FIRST_USE_DTE datetime. ;
format firstSTOR best12. ;
format TITLE $4. ;
format GENDER $6. ;
format max_spent best12. ;
format DOB ddmmyy10. ;
format FTD datetime. ;
format Age best12. ;
format STATE_CODE $3. ;
format POST_CODE best12. ;
format CUST_STAT $6. ;
format Avgsize_spent best12. ;
format CARD_STAT $10. ;
format RGSTN_TYPE_IND $6. ;
format NO_OF_TRIPS best12. ;
format TOWN $14. ;
format EMAIL_IND $1. ;
format CONTACT_PREF $5. ;
format Average_Qty_PER_ACC best12. ;
format Spent_amount best12. ;
input
CUSTOMER_ID
Company $
CARD_REG_DATE
CARD_ACTIVE $
FIRST_USE_DTE
firstSTOR
TITLE $
GENDER $
max_spent
DOB
FTD
Age
STATE_CODE $
POST_CODE
CUST_STAT $
Avgsize_spent
CARD_STAT $
RGSTN_TYPE_IND $
NO_OF_TRIPS
TOWN $
EMAIL_IND $
CONTACT_PREF $
Average_Qty_PER_ACC
Spent_amount
;
run;


/*Can we use cards and datalines using dlm*/

Data Student1;
Infile datalines DSD DLM=',' ;
Input Stu_ID $	Stu_name $	Age	Course $	Education $	Occupation $ ;
datalines;
A1,AA1,31,SAS,Btech,IT
A2,AA2,34,SAS,Btech,IT
A3,AA3,37,SAS,Btech,IT
A4,AA4,36,SAS,Btech,IT
A5,AA5,37,Excel,Btech,IT
A6,AA6,36,Excel,MBA,MKT
A7,AA7,32,Excel,MBA,MKT
A8,AA8,32,Excel,MBA,MKT
A9,AA9,29,Analytics,MBA,MKT
A10,AA10,25,Analytics,BCOM,MKT
A11,AA11,25,Analytics,BCOM,MKT
A12,AA12,38,Analytics,BCOM,OPS
A13,AA13,30,Analytics,BCOM,OPS
;
Run;

Proc print;
run;

Data Student_New;
set Student1 (obs=9);
Row=_N_;
Run;

Proc print;
run;

/*Redaing data using @ and @@*/

Data School;
Input Name $ Marks @@;
Cards;
Anusha 30 Kavitha 40 Satya 50
Madhesh 80
;
Run;

Proc print;
run;

/*@@ is used when we multiple observation in a single line*/

Data Location;
infile 'F:\Sisters\a4.SAS\Raw Data\Location.txt' dlm=' ';
input SalesID $ Location $ @;
      if Left(Location)='USA' then
input SaleDate : mmddyy10. Amount;
else if Left(Location)='EUR' then
input SaleDate : date9. Amount : commax8.;
format SaleDate MMDDYY10.;
run;
proc print data=Location;
run;


/*What is the difference between @ and @@*/

/*@ is use to read variable with conditions*/
/*@@ is use when multiple obs on one dataline*/



data address2;
length LName FName $ 20 City $ 25 State $ 2 Phone $ 8;
infile 'F:\Sisters\a4.SAS\Raw Data\address.txt' dlm=',';
input LName $ FName $;
input City $ State $;
input Phone $;
run;


proc print data=address2;
run;

data address3;
length LName FName $ 20
City $ 25 State $ 2
Phone $ 8;
infile 'F:\Sisters\a4.SAS\Raw Data\address.txt' dlm=',';
input LName $ FName $ /
      City $ State $ /
      Phone $
;
run;


proc print data=address3;
run;


data address4;
length LName FName $ 20 City $ 25 State $ 2 Phone $ 8;
infile 'F:\Sisters\a4.SAS\Raw Data\address.txt' dlm=',';
input #1 LName $ FName $ 
      #2 City $ State $ 
      #3 Phone $
;
run;

proc print data=address4;
run;

/*Connecting SAS to different database server*/

proc sql;
   connect to teradata (user="youruserid" password="yourpassword" server="servername" mode=teradata);
   create table temp as
   select * from connection to teradata (
      select a.ID
           , a.Product
           , b.Income
      from tdbase.customer a
      join tdbase.income b
      on a.ID=b.ID
      );
  disconnect from teradata;
quit;


/*using File statement we ca export sas dataset to a text file*/

Data Feb_2017.Student;
Infile datalines DSD DLM=',' ;
Input Stu_ID $	Stu_name $	Age	Course $	Education $	Occupation $ ;
datalines;
A1,AA1,31,SAS,Btech,IT
A2,AA2,34,SAS,Btech,IT
A3,AA3,37,SAS,Btech,IT
A4,AA4,36,SAS,Btech,IT
A5,AA5,37,Excel,Btech,IT
A6,AA6,36,Excel,MBA,MKT
A7,AA7,32,Excel,MBA,MKT
A8,AA8,32,Excel,MBA,MKT
A9,AA9,29,Analytics,MBA,MKT
A10,AA10,25,Analytics,BCOM,MKT
A11,AA11,25,Analytics,BCOM,MKT
A12,AA12,38,Analytics,BCOM,OPS
A13,AA13,30,Analytics,BCOM,OPS
;
Run;

Proc print;
run;


Data ABC;
set Feb_2017.student;
file 'F:\Sisters\a4.SAS\Raw Data\Export\student_exp.txt' dlm=',' ;
Put Stu_ID $	Stu_name $	Age	Course $	Education $	Occupation $ ;
Run;


Data _Null_;
set Feb_2017.student;
file 'F:\Sisters\a4.SAS\Raw Data\Export\student_exp.txt' dlm=',' ;
Put Stu_ID $	Stu_name $	Age	Course $	Education $	Occupation $ ;
Run;

Proc fslist fileref='F:\Sisters\a4.SAS\Raw Data\Export\student_exp.txt';
Run;



Data _Null_;
set Feb_2017.student;
file 'F:\Sisters\a4.SAS\Raw Data\Export\student_exp2.txt' dlm=','  ;
if _N_=1 then do;
Put 'Stu_ID,Stu_name,Age,Course,Education,Occupation ';
End;
Put Stu_ID $	Stu_name $	Age	Course $	Education $	Occupation $ ;
Run;

Proc fslist fileref='F:\Sisters\a4.SAS\Raw Data\Export\student_exp2.txt';
Run;

Data _Null_;
set Feb_2017.student;
file 'F:\Sisters\a4.SAS\Raw Data\Export\student_exp3.txt' dlm='09'x ;
if _N_=1 then do;
Put 'Stu_ID	Stu_name Age Course Education Occupation ';
End;
Put Stu_ID $	Stu_name $	Age	Course $	Education $	Occupation $ ;
Run;

Proc fslist fileref='F:\Sisters\a4.SAS\Raw Data\Export\student_exp3.txt';
Run;

Data Salary;
Input Name $ Age Salary ;
Cards;
Kavitha 27 90000
Deepa 26 80000
Ravi 27 190000
;
Run;

Data _Null_;
Set Salary;
File 'F:\Sisters\a4.SAS\Raw Data\Export\Salary.txt' DSD DLM=',';
if _N_=1 then do;
Put 'Name,Age,Salary';
End;
Put Name $ Age Salary : Comma15.;
Run;

Proc fslist fileref='F:\Sisters\a4.SAS\Raw Data\Export\Salary.txt';
Run;

/*PDV=Program Data Vector*/

Data Staff;
Infile 'F:\Sisters\a4.SAS\Raw Data\PDV.txt' DSD missover;
Input Last_Name $ 1-20 First_Name $ 21-30 Emp_Code $ 31-35 Jobtitle $ 36-43
DOJ Salary 54-59;
Informat DOJ MMDDYY10.;
Format DOJ MMDDYY10.;
Run;

Proc print;
run;

/*
Every sas program has two phases. 1. Compilation and 2. execution. 
At the time Compilation, it creates input buffer and PDV. 
Input Buffer hold the memory with boxes with 
number characters to be red from the data line. 
PDV gives with variable name and length to read from
the dataline given delimiter. PDV reads value and 
paste it into the table. While reading dataline, 
if it gets any error, it throughs in log window
as _ERROR_=1 and _N_=10, _N_ represent the liner 
where you got the error.*/


/*If Then and Then do*/
/*===============================*/

proc print data=Feb_2017.Staff;
Run;

Data Staff_Bonus;
Set Feb_2017.Staff;
If Jobtitle='Mechanic' and Salary <= 50000 then Bonus=.20*Salary;
Else if Jobtitle='Mechanic' and Salary > 50000 then Bonus=.10*Salary;
Else If Jobtitle='Pilot' and Salary <= 90000 then Bonus=.20*Salary;
Else If Jobtitle='Pilot' and Salary > 90000 then Bonus=.10*Salary;
New_Salary=Salary+Bonus;
Format Salary Bonus New_salary Dollar15.2;
Run;

Proc print;
run;

/*Then do statement*/

Data Mobile_Usage;
Input Mobile Plan $ Local_MOU STD_MOU ISD_MOU;
Cards;
8951108662	PPS30	320	652	56
8951108663	PPS30	458	287	87
8951108664	PPM50	403	616	18
8951108665	PPM50	173	246	69
8951108666	PPM50	614	106	85
8951108667	PPM50	482	304	54
8951108668	PPS30	452	195	43
8951108669	PPM50	710	865	47
8951108670	PPS60	438	426	87
8951108671	PPM50	218	935	22
8951108672	PPS60	704	108	100
8951108673	PPS60	762	867	73
8951108674	PPS60	778	503	25
8951108675	PPS30	678	829	10
8951108676	PPS60	578	674	74
8951108677	PPM50	110	408	93
8951108678	PPM50	441	706	50
;
Run;

proc print;
run;

Data Mobile_Usage2;
set Mobile_Usage;
If Plan='PPS30' then do;
Local_REV=.30*Local_MOu;
STD_REV=.30*STD_MOU;
ISD_REV=ISD_MOU*5;
End;
Else If Plan='PPS60' then do;
Local_REV=.60*Local_MOu;
STD_REV=.60*STD_MOU;
ISD_REV=ISD_MOU*3;
End;
Else If Plan='PPM50' then do;
Local_REV=.50*Local_MOu;
STD_REV=.50*STD_MOU;
ISD_REV=ISD_MOU*4;
End;
Total_MOU=Local_MOU+STD_MOU+ISD_MOU;
Total_REV=Local_REV+STD_REV+ISD_REV;
format Local_REV STD_REV ISD_REV Total_MOU Total_REV 10.;
Run;

proc print;
run;

/*Then can have one conditional variable. However Then do can have multiple conditinal variable*/

/*Note: every then do statement ends with end statement*/

Data prod_sales;
Input Prod	$ City	$ Year	Price ;
Datalines;
A	Bangalore	2000	100
A	Bangalore	2001	100
A	Bangalore	2002	100
A	Chennai	2000	200
A	Chennai	2001	200
A	Chennai	2002	200
B	Bangalore	2000	100
B	Bangalore	2001	100
B	Bangalore	2002	100
B	Chennai	2000	200
B	Chennai	2001	200
B	Chennai	2002	200
C	Bangalore	2000	100
C	Bangalore	2001	100
C	Bangalore	2002	100
C	Chennai	2000	200
C	Chennai	2001	200
C	Chennai	2002	200
;
run;


Data prod_sales_discount;
Set Prod_sales;
If prod='A' then do;
   If city='Bangalor' and year=2001 then discount=.10*Price;
   else if city='Chennai' and year=2001 then discount=.20*Price;
   else If city='Bangalor' and year not in (2001) then discount=.20*Price;
   else If city='Chennai' and year not in (2001) then discount=.30*Price;
End;

else If prod='B' then do;
   If city='Bangalor' and year=2001 then discount=.20*Price;
   else if city='Chennai' and year=2001 then discount=.40*Price;
   else If city='Bangalor' and year not in (2001) then discount=.10*Price;
   else If city='Chennai' and year not in (2001) then discount=.20*Price;
End;

else  do;
   Discount=.30*Price;
End;
Run;

/*User defined Format*/
/*============================*/

Data Prod_sales;
Input Prod $ Qty;
Cards;
A 20
B 30
O 20
G 90
M 20
;
Run;

Proc format ;
Value $Abbr 'A'='Apple'
			'B'='Banana'
			'O'='Orange'
			'G'='Guava'
			'M'='Mango'
;
Run;

Data Prod_sales2;
set Prod_sales;
Prod_abbr=Prod;
Format Prod_abbr $Abbr. ;
Run;

Proc print;
run;

/*default format goes to work library, in order to store into permanent libray
use library option in proc format*/

/*Character format*/
Proc format library=Feb_2017;
Value $Abbr 'A'='Apple'
			'B'='Banana'
			'O'='Orange'
			'G'='Guava'
			'M'='Mango'
;
Run;

/*To call format from permanent library*/

Options FMTSEARCH=(Feb_2017);

Data Feb_2017.Prod_sales;
set Prod_sales;
Prod_abbr=Prod;
Format Prod_abbr $Abbr. ;
Run;

Proc print;
run;

/*Numeric Format*/

proc format ;
Value Sal_Buc Low-<50000='Less than 50000'
              50000-80000='50K-80K'
			  80000<-High='80K and above'
;
Run;

Proc print data=Feb_2017.Staff;
run;

Data Staff;
set Feb_2017.Staff;
Salary_Bucket=Salary;
Format Salary_Bucket Sal_Buc.;
Run;
proc print;
run;


Proc format ;
Value $Abbr 'A'='Apple'
			'B'='Banana'
			'O'='Orange'
			'G'='Guava'
			'M'='Mango'
;

Value Sal_Buc Low-<50000='Less than 50000'
              50000-80000='50K-80K'
			  80000<-High='80K and above'
;
Run;

Data Staff;
set Feb_2017.Staff;
Salary_Bucket=Salary;
Format Salary_Bucket Sal_Buc.;
Run;
proc print;
run;

/*Joining Datasets in SAS*/
/*Joins are two types*/
/*Vertical Join-Appending Tables*/
/*Horizontal Join- Merging Tables*/

/*Lets talk about Vertical Join-Appending tables*/

Data Jan_sales;
Input Prod $ Month $ Year Qty;
Cards;
A1	Jan	2010	671
A2	Jan	2010	654
A3	Jan	2010	448
A4	Jan	2010	839
A5	Jan	2010	247
A6	Jan	2010	394
A7	Jan	2010	420
A8	Jan	2010	224
A9	Jan	2010	359
;
Run;

Data Feb_sales;
Input Prod $ Month $ Year Qty;
Cards;
A1	Feb	2010	847
A2	Feb	2010	471
A3	Feb	2010	807
A4	Feb	2010	815
A5	Feb	2010	558
A6	Feb	2010	749
A7	Feb	2010	182
A8	Feb	2010	746
A9	Feb	2010	605
;
Run;

Data Mar_sales;
Input Prod $ Month $ Year Qty;
Cards;
A1	Mar	2010	265
A2	Mar	2010	832
A3	Mar	2010	689
A4	Mar	2010	651
A5	Mar	2010	583
A6	Mar	2010	647
A7	Mar	2010	665
A8	Mar	2010	362
A9	Mar	2010	401
;
Run;

Data Apr_sales;
Input Prod $ Month $ Year Qty;
Cards;
A1	Apr	2010	171
A2	Apr	2010	266
A3	Apr	2010	721
A4	Apr	2010	546
A5	Apr	2010	129
A6	Apr	2010	481
A7	Apr	2010	624
A8	Apr	2010	119
A9	Apr	2010	895
;
Run;

/*lets append dataset from Jan sales to apr sales*/

/*Scenario1*/
Data Sales_Jan_Apr;
Set Jan_sales Feb_Sales Mar_sales Apr_Sales;
Run;
/*In SQL*/

/*Scenario2*/
Proc sql;
Create table All_sales as
select * from Jan_sales
Union all
select * from Feb_sales
Union all
Select * from Mar_sales
Union all
Select * from Apr_sales;
Quit;

/*Scenario3*/

Data Month1_sales;
Set Jan_sales;
Run;
Data Month2_sales;
Set feb_sales;
Run;
Data Month3_sales;
Set Mar_sales;
Run;
Data Month4_sales;
Set Apr_sales;
Run;

Data All_Month_sales;
Set Month: ;
Run;

/*Scenario4*/

Proc append base=Sales_2010 data=Apr_sales;
Run;

/*Scenario5*/

Data May_sales;
Input Prod $ Month $ Year Qty City $;
Cards;
A1	May	2010	136	KA
A2	May	2010	436	KA
A3	May	2010	607	KA
A4	May	2010	105	KA
A5	May	2010	214	KA
A6	May	2010	659	KA
A7	May	2010	567	KA
A8	May	2010	790	KA
A9	May	2010	262	KA

;
Run;

Data Jan_May_sales;
Set Jan_sales Feb_sales Mar_sales Apr_sales May_sales ;
Run;

/*Scenario6*/

Data Jun_sales;
Input Prod $ Month $ Year $ Qty City $;
Cards;
A1	Jun	2010	301	KA
A2	Jun	2010	594	KA
A3	Jun	2010	751	KA
A4	Jun	2010	186	KA
A5	Jun	2010	204	KA
A6	Jun	2010	140	KA
A7	Jun	2010	509	KA
A8	Jun	2010	776	KA
A9	Jun	2010	789	KA
;
Run;

Data Jan_Jun_sales;
Set Jan_Sales Feb_sales Mar_sales Apr_Sales May_sales Jun_sales;
Run;

/*While appending we should both teh tables have common variables and data types always. However after common variables if there are any other variables that will also append to teh table in adding other columns*/

/*If variable names and same and data types are different , it will not merge then*/

/*Scenario7*/

Proc append base=Jan_Jun_sales_new Data=Jun_sales force;
Run;

/*What is force option doing here*/

/*Scenario8*/
Data Jul_sales;
Input Prod $ Month $ Year  Qty_Jul City $;
Cards;
A1	Jul	2010	575	KA
A2	Jul	2010	288	KA
A3	Jul	2010	144	KA
A4	Jul	2010	724	KA
A5	Jul	2010	109	KA
A6	Jul	2010	280	KA
A7	Jul	2010	431	KA
A8	Jul	2010	152	KA
A9	Jul	2010	489	KA

;
Run;

Data Jan_Jul_2010;
Set Jan_sales Jul_Sales (Rename=(Qty_Jul=Qty));
Run;
Proc print;
run;


/*Renaming dataset name*/
proc datasets lib=Work nolist;
 change All_sales=All_month_sales_v1;
quit;
run;

/*Copying dataset from one library to another*/

Libname mama 'F:\Sisters\a4.SAS\Mama';
Run;

Proc copy in=Work out=Mama;
Run;

/*Selecting dtasets*/
Proc copy in=Work out=Mama;
Select Jan_sales Feb_sales Mar_sales ;
Run;

/*Horizontal Join- Merging*/
/*============================*/

Data stu_details;
Input Stu_ID $	Name $	Age	City $;
Cards;
a1	AAA1	30	Bangalore
a2	AAA2	24	Bangalore
a3	AAA3	29	Bangalore
a4	AAA4	32	Bangalore
a5	AAA5	40	Chennai
a6	AAA6	27	Chennai
a7	AAA7	26	Chennai
a8	AAA8	25	Chennai
;
run;


Data stu_Qualification;
Input Stu_ID $ Education $ Occupation $	Salary ;
Cards;
a1	Btech	IT	71000
a2	Btech	IT	73000
a3	Mtech	IT	75000
a4	Mtech	OPS	67000
a5	Mtech	OPS	90000
a6	MBA	OPS	58000
a9	MBA	MKT	82000

;
run;

/*Before merging in sas aleways remember to sort datasets by common variable*/


Proc sort data=Stu_details;
By Stu_ID;
Run;

Proc sort data=Stu_Qualification;
By Stu_ID;
Run;

/*Full Join in SAS Merging*/

Data Stu_Full_Join;
Merge stu_Details Stu_Qualification;
By Stu_ID;
Run;

Proc print;
run;

/*In SQL*/

proc sql;
Select a.Stu_ID,a.Name,a.Age,a.City,b.Stu_ID,b.Education,b.Occupation,b.Salary
from stu_Details as a Full Join Stu_Qualification as b
on
a.Stu_ID=b.Stu_ID;
Quit;

/*Inner join in sas merging*/

Data Student_Inner;
Merge stu_Details (in=a)  Stu_Qualification (in=b);
By Stu_ID;
if a and b;
Run;

Proc print;
run;

/*In SQL*/

proc sql;
Select a.Stu_ID,a.Name,a.Age,a.City,b.Stu_ID,b.Education,b.Occupation,b.Salary
from stu_Details as a inner Join Stu_Qualification as b
on
a.Stu_ID=b.Stu_ID;
Quit;

/*Left Join in sas merging*/

Data Stu_Left;
Merge stu_Details (in=a) stu_Qualification (in=b);
By stu_ID;
If a ;
Run;

Proc print;
run;

/*In SQL*/

proc sql;
Select a.Stu_ID,a.Name,a.Age,a.City,b.Stu_ID,b.Education,b.Occupation,b.Salary
from stu_Details as a Left Join Stu_Qualification as b
on
a.Stu_ID=b.Stu_ID;
Quit;

/*Left Null Join in sas merging*/

Data Stu_Left_null;
Merge stu_Details (in=a) stu_Qualification (in=b);
By stu_ID;
If b=0 ;
Run;

Proc print;
run;

/*In SQL*/

proc sql;
Select a.Stu_ID,a.Name,a.Age,a.City,b.Stu_ID,b.Education,b.Occupation,b.Salary
from stu_Details as a Left Join Stu_Qualification as b
on
a.Stu_ID=b.Stu_ID
where b.stu_ID is null;
Quit;

/*Right Join in sas merging*/

Data student_Right;
Merge Stu_details (in=a) Stu_Qualification (in=b);
By Stu_ID;
if b;
Run;

Proc print;
run;

/*In SQL*/

proc sql;
Select a.Stu_ID,a.Name,a.Age,a.City,b.Stu_ID,b.Education,b.Occupation,b.Salary
from stu_Details as a Right Join Stu_Qualification as b
on
a.Stu_ID=b.Stu_ID;
Quit;

/*Right null join in sas merging*/

Data student_Right_Null;
Merge Stu_details (in=a) Stu_Qualification (in=b);
By Stu_ID;
if a=0;
Run;

Proc print;
run;

/*In SQL*/

proc sql;
Select a.Stu_ID,a.Name,a.Age,a.City,b.Stu_ID,b.Education,b.Occupation,b.Salary
from stu_Details as a Right Join Stu_Qualification as b
on
a.Stu_ID=b.Stu_ID
where a.Stu_ID is null;
Quit;

/*Un-Matched join*/

Data student_unmatched;
Merge stu_details (in=a) stu_Qualification (in=b);
By Stu_ID;
If a=0 or b=0;
Run;

Proc print;
run;

/*In SQL*/

proc sql;
Select a.Stu_ID,a.Name,a.Age,a.City,b.Stu_ID,b.Education,b.Occupation,b.Salary
from stu_Details as a Full Join Stu_Qualification as b
on
a.Stu_ID=b.Stu_ID
where a.Stu_ID is null or b.stu_ID is null;
Quit;

/*significance of 1 and 0 in sas merging*/

Data student_significance;
Merge stu_details (in=a) stu_Qualification (in=b);
By Stu_ID;
If a=0 and b=0;
Run;

Proc print;
run;

Proc sql;
select a.*,b.* from stu_details as a left join stu_qualification as b
on a.Stu_ID=b.Stu_ID;
Quit;

Proc sql;
select a.*,b.* from stu_details as a Right join stu_qualification as b
on a.Stu_ID=b.Stu_ID;
Quit;

Proc sql;
select a.*,b.* from stu_details as a inner join stu_qualification as b
on a.Stu_ID=b.Stu_ID;
Quit;

Proc sql;
select a.*,b.* from stu_details as a Full join stu_qualification as b
on a.Stu_ID=b.Stu_ID;
Quit;

Proc sql;
select a.*,b.* from stu_details as a Left join stu_qualification as b
on a.Stu_ID=b.Stu_ID
Except
select a.*,b.* from stu_details as a Right join stu_qualification as b
on a.Stu_ID=b.Stu_ID;

Quit;

Proc sql;
select a.*,b.* from stu_details as a Right join stu_qualification as b
on a.Stu_ID=b.Stu_ID
Except
select a.*,b.* from stu_details as a Left join stu_qualification as b
on a.Stu_ID=b.Stu_ID;

Quit;

Proc sql;
select a.*,b.* from stu_details as a Right join stu_qualification as b
on a.Stu_ID=b.Stu_ID
intersect
select a.*,b.* from stu_details as a Left join stu_qualification as b
on a.Stu_ID=b.Stu_ID;
Quit;


/*interview question :*/
/*What is SAS Merging and how does it differ from SAS SQL join?*/


/*selecting variables in merging*/

Data student_select;
Merge stu_details (in=a)  stu_Qualification  (in=b) ;
By Stu_ID;
if b=0;
Run;

Proc print;
run;

proc sql;
Select a.Stu_ID,a.Name,a.Age,a.City,b.Stu_ID,b.Salary
from stu_Details as a Left  Join Stu_Qualification as b
on
a.Stu_ID=b.Stu_ID
where b.Stu_ID is null;
Quit;

/*Relationship*/

/*One to One */
/*One to Many*/
/*Many to Many*/
/*Many to One*/


/*Lets to Many to Many merging in sas*/

Data Father_Salary;
Input Father $ Month $ Salary ;
Cards;
Sajan	Jan	100000
Sajan	Feb	120000
Sajan	Mar	100000
Vijay	Jan	100000
Vijay	Feb	100000
;
Run;

Data Father_Children_Ratio;
Input Father $ Children $ Ratio ;
Cards;
Sajan	D1	0.5
Sajan	S1	0.3
Sajan	S2	0.2
Vijay	D1	0.25
Vijay	D2	0.25
Vijay	S1	0.25
Vijay	S2	0.25
;
run;

Proc sort data=Father_salary;
By Father;
Run;

Proc sort data=Father_children_ratio;
By Father;
Run; 

Data Father_Chi_Prop;
Merge Father_salary Father_children_ratio;
by Father;
run;

Proc print;
run;

/*SAS Can not to do many to many relationship*/


Proc sql number;
select 
a.Father,
a.Month,
a.Salary,
b.Father,
b.Children,
b.Ratio,
(a.salary*b.Ratio) as Exp_Proportion
from Father_salary as a 
full join
Father_children_ratio as b
on
a.father=b.Father;
quit;

/*So we use sas sql join when it comes to many to many relationship*/


/*Cartesian join, Cross Join, self Join */

Proc import out=Feb_2017.Sales
            datafile='F:\Sisters\a4.SAS\Cartesian_Data.xlsx'
			dbms=excel replace;
			sheet='Sales';
Run;
Proc import out=Feb_2017.Product
            datafile='F:\Sisters\a4.SAS\Cartesian_Data.xlsx'
			dbms=excel replace;
			sheet='Product';
Run;
Proc import out=Feb_2017.Customer
            datafile='F:\Sisters\a4.SAS\Cartesian_Data.xlsx'
			dbms=excel replace;
			sheet='Customer';
Run;

Proc sql;
Create table Sales_All as
select 
a.Order_ID,
a.Cust_ID,
b.Cust_Age,
b.Cust_City,
b.Cust_Occupation,
b.Cust_annual_Income,
a.Prod_ID,
c.Prod_Name,
c.Price,
a.Qty,
(a.Qty*c.Price) as Total_Rev
from feb_2017.sales as a
Left Join
Feb_2017.Customer as b
on
a.Cust_ID=b.Cust_ID
Left Join
Feb_2017.Product as c
on
a.Prod_ID=c.Prod_ID;
Quit;


/*In SAS Merging*/

Proc sort data=Feb_2017.sales out=Sales;
By Cust_ID;
run;

Proc sort data=Feb_2017.Customer out=Customer;
By Cust_ID;
run;

Data Sales_customer;
Merge Sales Customer;
By Cust_ID;
run;

proc sort data=Sales_customer ;
by Prod_ID;
Run;

Proc sort data=Feb_2017.Product out=Product;
By Prod_ID;
Run;

Data Sales_customer_Product;
Merge Sales_Customer Product;
By Prod_ID;
Total_Rev=Qty*Price;
Run;

Data Sales_2010;
Input Prod $ Year Sales;
Cards;
LUX	2010	21
PEERS	2010	84
DOVE	2010	74
SANTOOR	2010	29
JOHNSON	2010	69
SAVLON	2010	10
;
Run;

Data Sales_2011;
Input Prod $ Year Sales;
Cards;
LUX	2011	32
PEERS	2011	64
DOVE	2011	60
SANTOOR	2011	12
JOHNSON 2011	14
SAVLON	2011	47

;
Run;


Data Sales_2012;
Input Prod $ Year Sales;
Cards;
LUX	2012	70
PEERS	2012	80
DOVE	2012	39
SANTOOR	2012	15
JOHNSON	2012	61
SAVLON	2012	29
;
Run;

Proc sort data=sales_2010;
By Prod;
run;

Proc sort data=sales_2011;
By Prod;
run;
Proc sort data=sales_2012;
By Prod;
run;

Data Sales_2010_2012 (Drop=Year);
Merge Sales_2010 Sales_2011 (rename=(Sales=Sales_2011))  sales_2012 (rename=(Sales=Sales_2012)) ;
By Prod;
Run;

Proc print;
run;

/*Transposing dataset in sas*/
/*==================================*/

Data Stu_Marks;
Input Stu_ID $ Class1	Class2	Class3	Class4	Class5	Class6	Class7	Class8	Class9	Class10;
Cards;
S1	946	721	815	564	545	952	778	688	615	948
S2	540	995	598	634	524	519	630	582	620	699
S3	702	795	696	775	989	521	581	628	781	815
S4	595	614	881	986	814	570	979	794	753	519
S5	858	598	866	748	636	926	876	728	885	728
S6	933	851	762	970	782	739	850	687	994	890
S7	703	800	827	625	911	504	745	833	519	803
S8	543	846	651	633	607	954	758	613	708	914
S9	857	521	671	975	555	551	840	838	902	918
S10	691	635	843	626	655	769	554	640	694	613
;
Run;

Proc print ;
run;

/*Converting Column into Rows*/
/*=============================*/
Proc sort data=stu_Marks;
By Stu_ID;
Run;

Proc transpose data=Stu_Marks out=Stu_Marks2 (Rename=(COL1=Score _Name_=Class));
Var Class1-Class10 ;
By Stu_ID;
run;

/*Converting Rows into Columns*/
/*================================*/

Proc print data=Stu_Marks2 (obs=10);
run;

Proc sort data=Stu_Marks2 out=Stu_Marks3;
By stu_ID;
run;

Proc transpose data=Stu_Marks3 out=Stu_Marks4 (Drop=_Name_);
ID Class;
Var Score;
By stu_ID;
run;

/*Retain statement*/

Data Score;
Input Name $ Sub $ Marks;
Cards;
Ravi Math 70
Ravi English 90
Ravi SST 40
Ravi Science 90
;
Run;

Data Score2;
set Score;
Retain Total 0;
Total+Marks;
run;

Proc print;
run;

Data Prod_sales;
Input Prod $ Sales;
Cards;
A 90
A 70
A 30
B 40
B 40
B 30
C 30
C 20
C 10
D 80
D 30
D 30
;
Run;

Data Prod_sales2;
set Prod_sales;
Retain Total 0;
if Prod in ('A','D') then Total+sales;
Run;

proc print;
run;


/*First. and Last. Concept*/
/*=========================================*/

Data AP_stu_Marks;
Input Stu_Name $ Sub $ Year Marks;
Cards;
Kavitha	Math	2010	98
Kavitha	Sci	2010	12
Kavitha	Eng	2010	12
Kavitha	SST	2010	93
Kavitha	Math	2011	51
Kavitha	Sci	2011	89
Kavitha	Eng	2011	45
Kavitha	SST	2011	82
Ravi	Math	2010	61
Ravi	Sci	2010	45
Ravi	Eng	2010	30
Ravi	SST	2010	91
Ravi	Math	2011	86
Ravi	Sci	2011	18
Ravi	Eng	2011	16
Ravi	SST	2011	25
;
Run;

proc print ;
run;

Proc SQL;
Select Stu_Name, sum(Marks) as Total_Marks 
from AP_stu_Marks
Group by Stu_Name ;
Quit;

Proc sort data=AP_stu_Marks out=AP_stu_Marks2;
By stu_Name;
Run;

Data AP_stu_Marks3 (Drop=Sub Year Marks);
set AP_stu_Marks2;
By Stu_Name;
If First.Stu_Name then do;
Total=0;
end;
Total+Marks;
if last.Stu_Name;
run;

proc print;
run;

Proc SQL;
Select Stu_Name, Year,sum(Marks) as Total_Marks 
from AP_stu_Marks
Group by Stu_Name,Year ;
Quit;


Proc sort data=AP_stu_Marks out=AP_stu_Marks4;
By stu_Name Year;
Run;

Data AP_stu_Marks5 (Drop=sub Marks);
set AP_stu_Marks4;
By stu_Name Year;
If First.Year then do;
Total=0;
end;
Total+Marks;
if last.year;
Run;
proc print ;
run;
proc sort data=AP_stu_Marks out=AP_stu_Marks6;
by stu_Name Sub;
run;
Data AP_stu_Marks7 (drop=Year Marks  );
set AP_stu_Marks6;
By stu_Name Sub;
If First.Sub then do;
Total=0;
end;
Total+Marks;
if last.Sub;
Run;
proc print ;
run;


/*Removing duplicates in SAS*/

Data customer_sales;
Input CUSTOMER_ID	Company $ GENDER $ Age	STATE_CODE $ Spent ;
Cards;
1000032547	MED+	Female	29	QLD	400
1000032548	DR.REDDYS	Female	39	WA	114
1000032549	RELEGARE	Female	54	NSW	148
1000032550	GSK	Male	35	VIC	426
1000032551	GSK	Male	34	VIC	757
1000032552	APPOLO	Female	26	NSW	212
1000032553	CIPLA	Female	26	VIC	200
1000032554	APPOLO	Male	26	QLD	827
1000032555	APPOLO	Male	55	NSW	760
1000032556	MED+	Female	61	ACT	806
1000032557	GSK	Female	28	QLD	110
1000032558	MED+	Male	57	VIC	519
1000032559	GENO	Female	34	VIC	758
1000032560	DR.REDDYS	Female	28	NSW	535
1000032561	RELEGARE	Female	51	QLD	863
1000032562	GUARDIAN	Female	61	VIC	621
1000032563	RELEGARE	Female	48	QLD	749
1000032564	GUARDIAN	Female	65	NSW	868
1000032565	GENO	Female	63	NSW	717
1000032566	RANBAXY	Male	64	NSW	633
1000032547	MED+	Female	29	QLD	400
1000032548	DR.REDDYS	Female	39	WA	114
1000032549	RELEGARE	Female	54	NSW	150
1000032550	GSK	Male	35	VIC	426

;
Run;

proc sort data=Customer_sales out=Customer_sales2;
By CUSTOMER_ID ;
run;

Proc sort data=Customer_sales2 nodupkey dupout=Customer_sales3;
by CUSTOMER_ID ;
Run;

Data Customer_sales4;
set Customer_sales;
Run;

Proc sort data=Customer_sales4 nodup dupout=Customer_sales5;
by CUSTOMER_ID ;
Run;

/*Nodup as option use in proc sort check the duplicates considering coressponding fields*/
/*Nodupkey as option use in proc sort does not check the duplicates considering coressponding fields*/

/*Scenario2*/
Proc sql;
Create table Customer_unq as
select distinct a.* from Customer_sales as a ;
Quit;


proc sort data = Customer_sales4 out = Customer_sales6;
by CUSTOMER_ID ;
run;


data Customer_sales7;
set Customer_sales6;
by CUSTOMER_ID;
if first.CUSTOMER_ID ;
run;

proc print;
run;



data Customer_sales8;
set Customer_sales6;
by CUSTOMER_ID;
if last.CUSTOMER_ID;
run;

proc print;
run;


/*How to create multiple dataset from one dataset */

proc sql;
select distinct State_code from feb_2017.MED;
Quit;

/*
ACT
NSW
NT
QLD
SA
VIC
WA
*/

Data ACT NSW NT QLD SA VIC WA ;
Set Feb_2017.MED;
If state_code='ACT' then Output ACT;
If state_code='NSW' then Output NSW;
If state_code='NT' then Output NT;
If state_code='QLD' then Output QLD;
If state_code='SA' then Output SA;
If state_code='VIC' then Output VIC;
If state_code='WA' then Output WA;
Run;


/*use of Retain statement*/

proc contents data=Feb_2017.MED Varnum short;
run;

/*
CUSTOMER_ID Company  GENDER max_spent DOB
FTD Age STATE_CODE POST_CODE CUST_STAT Avgsize_spent CARD_STAT RGSTN_TYPE_IND NO_OF_TRIPS TOWN
EMAIL_IND CONTACT_PREF Average_Qty_PER_ACC Spent_amount
*/

Data MED2;
set Feb_2017.MED;
Keep CUSTOMER_ID Company GENDER Age STATE_CODE Spent_amount ;
Run;

Data MED3;
Retain CUSTOMER_ID Company GENDER Age STATE_CODE Spent_amount CARD_REG_DATE CARD_ACTIVE FIRST_USE_DTE firstSTOR TITLE POST_CODE CUST_STAT Avgsize_spent CARD_STAT RGSTN_TYPE_IND NO_OF_TRIPS TOWN
EMAIL_IND CONTACT_PREF Average_Qty_PER_ACC;
set Feb_2017.MED;
/*Keep CUSTOMER_ID Company GENDER Age STATE_CODE Spent_amount CARD_REG_DATE CARD_ACTIVE FIRST_USE_DTE firstSTOR TITLE POST_CODE CUST_STAT Avgsize_spent CARD_STAT RGSTN_TYPE_IND NO_OF_TRIPS TOWN*/
/*EMAIL_IND CONTACT_PREF Average_Qty_PER_ACC;*/
Run;

Data Med4;
set MEd2;
retain row 0;
row+1;
SL=_N_;
run;

Data MED5;
set MED2;
Retain Total 0;
Total+Spent_amount;
run;

/*Sum and addition*/

Data Stu_Class_marks;
infile cards DSD DLM=',' MISSOVER ;
Input stu $ Class1 Class2 Class3 Class4 Class5 Class6 ;
Cards;
AA1,70,57,24,51,50,68
AA2,,22,14,47,81,46
AA3,47,12,74,89,,69
AA4,35,51,89,78,33,43
AA5,10,79,,82,24,87
AA6,49,31,28,34,12,71
AA7,25,88,90,,55,73
AA8,,65,75,27,31,18
AA9,22,11,57,47,69,34
;
Run;

Data Stu_Class_marks2;
set Stu_Class_marks;
Total_Marks=Class1+Class2+class3+Class4+Class5+Class6 ;
Total_Marks2=sum(of Class1,Class2,Class3,Class4,Class5,Class6) ;
Run;

Proc print;
run;

/*sum will consider missing value as 0 and sum it up*/
/*addition will not consider missing value as 0, and it will read missing value as character and will not be able to sum it up*/

Data Math_score;
Input Name $ Math1 Math2 Math3;
Cards;
AA1	61	79	66
AA2	92	23	89
AA3	76	61	51
AA4	100	37	13
AA5	12	85	74
AA6	22	10	94
AA7	20	16	15
AA8	100	96	84
AA9	10	47	97
;
Run;

Proc print;
run;

data Math_score2;
set Math_score;
Total_score=sum(Math1,Math2,-Math3);
Run;
Proc print;
run;

/*Parvez*/

proc sort data=Math_score out=Math_score2;
By Name;
Run;

Proc transpose data=Math_score2 out=Math_score3 (Rename=(COL1=Score _Name_=Subject));
Var Math1 Math2 Math3;
By Name;
Run;

Proc sort data=Math_score3 out=Math_score4;
By Name descending Score ;
run;

Data Math_score5 (drop=Subject Rank);
set Math_score4;
By Name;
If First.Name then do;
Rank=0;
end;
Rank+1;
New_sub=compress("Math"||Rank);
Run;

Proc transpose data=Math_score5 out=Math_score6 (drop=_name_);
ID New_Sub;
Var score;
By Name;
Run;

Data Math_score7;
set Math_score6;
Total_score=sum(Math1,Math2,-Math3);
Run;

Proc print;
run;

data Math_score10;
set Math_score;
total_score=sum(Math1,Math2,Math3,-2*min(Math1,Math2,Math3));
run;
proc print;
run;

Data Math_score_new;
set Math_score;
M_score=max(Math1,Math2,Math3);
if Max_score=Math1 then new_score=Math1;
else if Max_score=Math2 then new_score=Math2;
else if Max_score=Math3 then new_score=Math3;
Run;

proc print;
run;

/*First. and Last.  Repeat*/


Data prod_sales;
input Prod $ Year Sales;
Cards;
AA7	2015	634
AA7	2015	437
AA4	2007	603
AA5	2010	262
AA1	2007	207
AA2	2015	281
AA7	2007	153
AA8	2015	162
AA10	2007	874
AA4	2007	763
AA8	2007	196
AA10	2015	381
AA9	2011	532
AA3	2011	809
AA1	2007	723
AA2	2010	517
AA2	2007	623
AA8	2007	381
AA9	2015	234
AA8	2015	577
AA6	2011	794
AA6	2015	780
AA3	2007	855
AA6	2015	537
AA3	2010	597
AA10	2011	449
AA7	2007	402
AA7	2011	700
AA3	2007	483
AA6	2007	352
AA7	2015	237
AA3	2015	801
AA1	2011	892
;
Run;

Proc sort data=Prod_sales out=Prod_sales2;
By Prod Year;
Run;

Data First_Year_Sales;
Set Prod_sales2;
By Prod Year;
If First.Prod;
Run;

Data Last_Year_Sales;
Set Prod_sales2;
By Prod Year;
If Last.Prod;
Run;

Data Year_sales;
Input Prod $ Year Month $ Sales;
Cards;
AA1	2010	Jan	214
AA1	2010	Jan	584
AA1	2010	Feb	263
AA1	2010	Feb	687
AA1	2011	Jan	766
AA1	2011	Jan	837
AA1	2011	Feb	842
AA1	2011	Feb	542
AA2	2010	Jan	524
AA2	2010	Jan	293
AA2	2010	Feb	281
AA2	2010	Feb	749
AA2	2011	Jan	176
AA2	2011	Jan	133
AA2	2011	Feb	498
AA2	2011	Feb	560
;
Run;

Proc print;
run;

Proc sql;
select Prod,count(Prod) as cnt, sum(sales) as Total_sales
from Year_sales
Group by Prod;
quit;

proc sort data=Year_sales out=Year_sales2;
By Prod;
Run;

Data Year_sales3 (Drop=Year Month Sales);
set Year_sales2;
By Prod;
If First.Prod then do;
Cnt=0;
Total=0;
end;
Cnt+1;
Total+sales;
if last.prod;
Run;
Proc print;
run;


Proc sql;
select Prod,Year,count(Year) as cnt, sum(sales) as Total_sales
from Year_sales
Group by Prod,Year;
quit;

proc sort data=Year_sales out=Year_sales4;
By Prod Year;
Run;

Data Year_sales5 (drop=Month sales);
set Year_sales4;
By prod Year;
If First.year then do;
cnt=0;
Total=0;
end;
cnt+1;
total+sales;
if last.Year;
Run;

Proc print;
run;


Proc sql;
select Prod,Year,Month,count(Month) as cnt, sum(sales) as Total_sales
from Year_sales
Group by Prod,Year,Month;
quit;


proc sort data=Year_sales out=Year_sales5;
By Prod Year month;
Run;

Data Year_sales6 (drop = sales cnt);
set Year_sales5;
By prod Year Month;
If First.month then do;
cnt=0;
Total=0;
end;
cnt+1;
total+sales;
if last.month;
Run;


Proc print;
run;

/*Functions*/
/*Character*/
/*Numeric*/
/*Datetime*/

/*Character Functions*/

Data Stu_Name;
Input Full_Name $ 40.;
Cap_name=upcase(Full_name);
Low_name=lowcase(Full_name);
prop_name=propcase(Full_name);
Cards;
Madheshwaran
Satyabrata Majhi
rashmi Ranjan Behera
sajan antony
Debendra Debadutta das
;
Run;

proc print;
run;

Data Bhul_name;
Input Name $20.;
Name2=tranwrd(Name,'Endulkar','Tendulkar');
Cards;
Sachin Endulkar
;
Run;
proc print;
run;

Data Substr_name;
Input Name $20.;
First_name=substr(Name,1,4);
Last_name=substr(Name,5);/* if you dont mention the preceding character length it will go 256 characters*/
Cards;
RaviKapoor
RaviVemuri
RaviDas
;
Run;

proc print;
run;

/*Concatenate variables*/
Data Full_Name;
FName="Ravi";
Lname="Babbu";
Full_Name=Cat(FName,LName);
Full_Name2=Catx(' ',FName,LName);
Full_Name3=Catx('_',FName,LName);
Full_Name4=Catt(FName,LName);
Run;

Proc print;
run;

DATA CALL_CAT;
STRING1 = "ABC"; * No spaces;
STRING2 = "DEF "; * Three trailing spaces;
STRING3 = " GHI"; * Three leading spaces;
STRING4 = " JKL "; * Three leading and trailing spaces;
LENGTH RESULT1 - RESULT5 $ 20;
Result1=Cat(STRING2, STRING3);
CALL CATS(RESULT2, STRING2, STRING4);
CALL CATT(RESULT3, STRING2, STRING1);
CALL CATX(" ", RESULT4 ,STRING1,STRING3);
CALL CATX(",", RESULT5,STRING3,STRING4);

RUN;
PROC PRINT DATA=CALL_CAT NOOBS;
TITLE "Listing of Data Set CALL_CAT";
RUN;

/*Compress and Compbl*/

Data google_data;
Input Name $30.;
Name2=compress(Name,,"KD");
Name3=compress(Name,,"KA");
Name4=compress(Name,,"KP");
Name5=compress(Name,'0123456789');
Name6=compress(Name,'!@#$%^&*()_');
Cards;
%$&6781HP234$%
ABC@#$1234
()&*Ravi*&^%
980-456-3456
;
Run;
Proc print;
run;

Data School_Name;
Input Name $30.;
Full_Name=compress(Name);
Full_name2=Compbl(Name);
Cards;
BN       Vidyapith
Vignan   Vidyalay
;
Run;
Proc print;
run;

/*SCan Function*/

Data Student_Name;
Input Name $30.;
Fname=scan(Name,1,',');
Lname=scan(Name,2,',');
Age=scan(Name,3,',');
Education=scan(Name,4,',');
Cards;
Deepa,Dash,25,Btech
Madhesh,M,26,Btech
Ravi,Kiran,23,MBA
;
Run;
Proc print;
run;


Data Student_Name;
Input Name $30.;
Fname=scan(Name,1,',');
Lname=scan(Name,2,',:');
Age=scan(Name,2,':>');
Education=scan(Name,2,'>');
Cards;
Deepa,Dash:25>Btech
Madhesh,M:26>Btech
Ravi,Kiran:23>MBA
;
Run;
Proc print;
run;

Data Indexwa;
Input Elections_FB $50.;
Modi_new=index(propcase(Elections_FB),"Modi");
Modi_new2=indexc(propcase(Elections_FB),"Modi");
Modi=indexw(propcase(Elections_FB),"Modi");
Modi_word=substr(propcase(Elections_FB),indexw(propcase(Elections_FB),"Modi"),4);
Cards;
Sonia is not good for India
Rahul is pappu
A great leader is MODI
Isbar Modi Sarkar
Isbar Modi Sarkar
Isbar Modi Sarkar
Isbar Modi Sarkar
Corrupt is UPA Govt
Jaya Laliltha is no more
;
Run;

proc print;
run;

/*Translate*/

Data Account_num;
Input Acc_num $;
cards;
023
223
134
111
;
Run;
Proc Print data=Account_num;
Run;

data Account_num_mask;
set Account_num;
Mask=translate(Acc_num,'cbaed','01234');
Run;
Proc Print data=Account_num_mask;
Run;


/*Input function- To convert character value to numeric */
/*Put Function- To convert numeric to character value*/



data school;
input name $ marks $ Year ;
cards;
JVN 80 2008
Pro2 78 2009
SUBHA 60 2010
;
run;

proc print data=school;
run;

proc contents data=school varnum;
run;

data school2;
set school;
marks2=input(marks,6.);/*Input as function convert character to numeric*/
Year2=put(Year,$5.);/*Put as function convert numeric to character*/
run;

proc print data=school2;
run;
proc contents data=school2 varnum;
run;

/*-----------------------------------*/
/*Numeric Function*/
/*------------------------------------------*/
data truncate;
NewVar1=round(12.12);
NewVar2=round(42.65,.1);
NewVar3=round(6.478,.01);
NewVar4=round(96.47,10);
run;

proc print data=Truncate;
run;



data truncate;
Var1=6.98;
NewVar1=ceil(Var1);
NewVar2=floor(Var1);
NewVar3=int(Var1);
run;

proc print data=Truncate;
run;

Data Prod_sales_goa;
Input Prod $ Jan Feb Mar Apr ;
Cards;
A 70 90 80 60
B 30 40 80 50
C 20 30 40 50
D 30 90 80 30
;
Run;

Proc print data=Prod_sales_goa;
Run;

Data Prod_sales_goa;
set Prod_sales_goa;
Total=sum(Jan,Feb,Mar,Apr);
Total2=sum(of Jan,Feb,Mar,Apr);
Average=mean(Jan,Feb,Mar,Apr);
Minimum=min(Jan,Feb,Mar,Apr);
Maximum=Max(Jan,Feb,Mar,Apr);
Run;

Proc print data=Prod_sales_goa;
Run;


/*--------------------------------------*/
/*Datetime Finction*/
/*-------------------------------------------*/
Data all_Date;
X='02FEB1983'd;
Y=date();
Month=Month(Y);
Day=Day(Y);
Year=Year(Y);
Date=MDY(Month,Day,Year);
YearMo=Year(Y)*100+Month(Y);
Age_year=intck("Year",X,Y);
Age_month=intck("Month",X,Y);
Age_day=intck("Day",X,Y);
Add_Month=Intnx("Month",Y,4);
Add_day=Intnx("Day",Y,4);
Add_Year=Intnx("Year",Y,4);
format X Y Add_Month Add_day Add_Year MMDDYY10. Date ddmmyy10.;
Run;
Proc print;
run;


data a;
today=today();
format today mmddyy10.;
month=month(today);
year=year(today);
day=day(today);
old_date=today-365;
format old_date mmddyy10.;
yrdif= yrdif(old_date,today,'act/act');
yrdif2= yrdif(old_date,today,'30/360');
yrdif3= yrdif(old_date,today,'360/360');
yrdif4= yrdif(old_date,today,'act/360');
yrdif5= yrdif(old_date,today,'360/365');

run;
proc print data=a;
run;

/*Use of MDY function*/

data funnydate;
infile cards;
input @1 Month 2.
@4 Year 4.
@10 Day 2.;
Date = mdy(Month,Day,Year);
format Date mmddyy10.;
datalines;
05 2000 25
11 2001 02
;
title "Listing of FUNNYDATE";
proc print data=funnydate noobs;
run;


data test;
Date = today();
DT = datetime();
Time = time();
DT2 = dhms(Date,8,15,30);
Time2 = hms(8,15,30);
DOB = '01jan1960'd;
Age = int(yrdif(DOB,Date,'actual'));
format Date DOB date9. DT DT2 datetime. Time Time2 time.;
run;
title "Listing of Data Set TEST";
proc print data=test noobs;
Run;


data date_functions;
Date1=Date();
Format Date1 MMDDYY10.;
Year = year(Date1);
Quarter = qtr(Date1);
Month = month(Date1);
Week = week(Date1);
Day_of_month = day(Date1);
Day_of_week = weekday(Date1);
run;
title "Listing of Data Set DATE_FUNCTIONS";
proc print data=date_functions noobs;
run;

data time;
DT = '01jan1960:5:15:30'dt;
T = '10:05:23't;
Hour_dt = hour(DT);
Hour_time = hour(T);
Minute_dt = minute(DT);
Minute_time = minute(T);
Second_dt = second(DT);
Second_time = second(T);
format DT datetime.;
run;
title "Listing of Data Set TIME";
proc print data=time noobs heading=h;
run;


data pieces_parts;
DT = '01jan1960:5:15:30'dt;
Date = datepart(DT);
Time = timepart(DT);
format DT datetime. Time time. Date date9.;
run;
title "Listing of Data Set PIECES_PARTS";
proc print data=pieces_parts noobs;
run;

Data Dates;
Input Date1 : MMDDYY10. Date2 :MMDDYY10.;
Format Date1 Date2 MMDDYY10.;
Cards;
01/01/2001 12/01/2002
;
Run;

proc print data=Dates;
run;

data picture;
sampdate = '28jul2004'd;
sampdate2=sampdate;
format sampdate Date9. sampdate2 monname.; 
/*put sampdate=monname.;*/
/*put sampdate=monabb3.;*/
run;
proc print;
run;


data period;
set dates;
Interval_month = intck('month',Date1,Date2);
Interval_year = intck('year',Date1,Date2);
Year_diff = yrdif(Date1,Date2,'actual');
Interval_qtr = intck('qtr',Date1,Date2);
Next_month = intnx('month',Date1,1);
Next_year = intnx('year',Date1,1);
Next_qtr = intnx('qtr',Date1,1);
Six_month = intnx('month',Date1,6);
format Next: Six_month date9.;
Run;

proc print;
run;



/*=========================================*/
/*SAS Loop and Arrays*/
/*=========================================*/
Data Table1;
Do Row=1 to 20;
output;
end;
Run;

Proc print data=Table1;
Run;

Data Table2;
Do COL= "Jan_sales","Feb_Sales","Mar_Sales";
output;
end;
Run;

Proc print data=Table2;
run;

Data Table3 (Drop=Var);
Do Var= Jan_sales,Feb_Sales,Mar_Sales ;
output;
end;
Run;

Proc print data=Table3;
run;

Data Table4;
Do i=100 to 1000 by 100;
Output;
End;
Run;

Proc print data=Table4;
run;


Data Table5;
Do i=1000 to 100 by -100;
Output;
End;
Run;

Proc print data=Table5;
run;


Data Invest;
Capital=100;
Int=.10;
Do Year=1 to 3;
Capital=capital+(Capital*int);
output;
end;
run;

proc print data=Invest;
run;

Data Invest;
Do Year=1 to 5;
Capital+45000;
Int=.10;
Capital=capital+(Capital*int);
output;
end;
run;

Data Invest;
Capital=300000;
Int=.15;
Do Year=1 to 15;
Capital=capital+(Capital*int);
output;
end;
run;

proc print data=Invest;
run;

Data Invest;
Capital=100;
Int=.10;
Do Year=1 to 3;
    do month=1 to 12;
     Capital=capital+(Capital*int/12);
	 output;
	end;
end;
run;

proc print data=Invest;
run;


Data Invest;
Capital=100000;
Int=.10;
Do Year=1 to 3;
    do QTR=1 to 4;
     Capital=capital+(Capital*int/4);
	 output;
	end;
end;
run;

proc print data=Invest;
run;

/*Take an example of Loan amount and the intrest calculation for the tenure taken*/

Data Income;
Loan=1500000;
Cap=Loan;
Int=.135;
Do Year=1 to 5;
    Do Month=1 to 12;
      Loan+(Loan*Int/12);
/*      Dif=Loan-Cap;*/
	  cum+dif;
	  output;
    end;	
end;
Run;

Proc print data=Income;
Run;

/*Example of nested do loop*/

Data Income_by_month;
Loan=1000000;
Int=.15;
Do Year=1 to 4; 
/*    Do Month=1 to 12;*/
/*         Loan+(Loan*Int/12);*/
/*		 Output;*/
/*	end;*/
Loan+(Loan*Int);
output;
end;
Run;

Proc print data=Income_by_month;
Run;

/*Ex*/

Data Bank;
Input Bank $ Int Loan;
Cards;
AAA	0.12	1000000
BBB	0.149	1000000
CCC	0.135	1000000
DDD	0.129	1000000
EEE	0.1	1000000
;
Run;

Data Bank2;
set Bank;
Cap=Loan;
Do Year=1 to 5;
    do Month=1 to 12;
     Loan=Loan*(1+Int/12);
	 Dif=Loan-Cap;
	 cum+Dif;
	 output;
	end;
end;
Run;
proc print data=bank2;
run;

/*The DO UNTIL statement executes statements in a DO loop repetitively until a condition is true, checking the condition after each iteration of the DO loop.*/

data invest;
do year=1 to 40 until(Capital>4000000);
Capital+30000;
Capital+(Capital*.12);
Output;
end;
run;
proc print data=invest noobs;
run;


data invest2;
do year=1 to 5 ;
 do month=1 to 12;
Capital+30000;
Capital+(Capital*.20/12);
Output;
end;
end;
run;
proc print data=invest2 noobs;
run;

data work.invest(drop=i);
        do i=1 to 20 until(Capital>=50000);
           Year+1;
           capital+2000;
           capital+capital*.10;
		   output;
        end;
 run;

 Proc print data=Invest;
 run;

/*The DO WHILE statement executes statements in a DO loop repetitively while a condition is true, checking the condition before each iteration of the DO loop*/

data invest;
do while(Capital<900000);
Year+1;
Capital+5000;
Capital+(Capital*.075);
output;
end;
run;
proc print data=invest noobs;
run;

data work.invest(drop=i);
        do i=1 to 20 while(Capital<50000);
           Year+1;
           capital+2000;
           capital+capital*.10;
		   output;
        end;
 run;

 Proc print data=Invest;
 run;

Data Insurance;
Cap=500000;
Int=.10;
Do Year=1 to 15;
cap+(cap*int);
Output;
end;
Run;

proc print data=Insurance;
Run;

/*What is do loop processing*/

/*DO Loop Processing*/

/*You can use DO loops to*/

/*1.perform repetitive calculations*/
/*2.generate data*/
/*3.eliminate redundant code*/
/*4.execute SAS code conditionally.*/

/* =====================================*/
/* Leave statement in do loop*/
/* This DATA step demonstrates using the LEAVE statement to stop the processing of a DO loop under a given condition*/

data week;
   input name $ idno start_yr status $ dept $;
   bonus=0;
   do year= start_yr to 1991;
      if bonus ge 500 then leave;
      bonus+50;
	  Output;
   end;
   datalines;
Jones 9011 1990 PT PUB
Thomas 876 1976 PT HR
Barnes 7899 1991 FT TECH
Harrell 1250 1975 FT HR
Richards 1002 1990 FT DEV
Kelly 85 1981 PT PUB
Stone 091 1990 PT MAIT
;
Run;
proc print;
run;

data new_emp;
   drop i;
   do i=1 to 5;
      input name $ idno status $;
         /* return to top of loop  */
         /* when condition is true */
      if status='PT' then continue;
         input benefits $10.;
         output;
   end;
   datalines;
Jones 9011 PT
Thomas 876 PT
Richards 1002 FT
Eye/Dental
Smith 433 FT
HMO
Kelly 85111 PT
Smith 433 FT
HMO
;
Run;
proc print;
run;



/*Arrays*/
/*============================*/

Data Missing;
Infile Cards DSD DLM=',' MISSOVER;
Input Prod $ Sub $ Jan Feb Mar Apr;
Cards;
A,a1,16,33,73,34
A,,83,35,88,31
A,a3,85,,41,41
B,b1,36,51,40,60
B,b3,21,84,,55
B,,12,14,78,47
C,c1,,20,,20
C,c2,89,86,68,57
C,c3,28,64,83, 
;
Run;

proc print data=Missing;
run;


Data Missing2;
set Missing;
array char _Character_;
do over char;
if char=" " then char="Missing";
end;
array num _numeric_ ;
do over num;
if num=. then num=0;
end;
Run;

proc print data=Missing2;
run;


Data profit;
Input Prod $ Cost1	Cost2	Cost3	Cost4	REV1	REV2	REV3	REV4 ;
Cards;
a	31	52	24	76	109	95	117	57
b	71	12	29	18	73	47	183	85
c	13	71	42	21	54	175	124	177
d	47	48	79	25	185	200	92	163
e	72	16	42	33	43	159	73	156
;
run;
Proc print data=Profit;
run;


Data Actual_profit (drop=i);
set Profit;
array revenue[4] Rev1-Rev4;/*Revenue- Array name 4=subscript REV1-REV4=Elements*/
array cost[4] cost1-Cost4;
array net_inc[4];
do i=1 to 4;
net_inc[i]=revenue[i] - cost[i];
end;
run;

proc print;
run;






































































































































 



























