CREATE TABLE OWNER(
    owner_id  VARCHAR2(10) NOT NULL PRIMARY KEY,
    owner_pwd VARCHAR2(10) NOT NULL
);
CREATE TABLE Employee(
   emp_id    VARCHAR2(8) NOT NULL PRIMARY KEY,
   emp_pwd  VARCHAR2(6) NOT NULL,
   emp_name VARCHAR2(10) NOT NULL,
   emp_address VARCHAR2(13),
   emp_phone VARCHAR2(11) NOT NULL,
   emp_bankcode VARCHAR2(2),
   emp_accountnum VARCHAR2(20),
   emp_position VARCHAR2(30) NOT NULL,
   emp_salary number NULL,
   emp_join DATE NOT default sysdate,
   emp_leave DATE
);
CREATE TABLE TimeCard(
               
    tc_id VARCHAR(6) NOT NULL PRIMARY KEY,
   emp_id VARCHAR(8) NOT NULL REFERENCES Employee(emp_id),
   emp_name VARCHAR(10) NOT NULL,
   wp_title VARCHAR(45) NOT NULL,
   tc_date DATE NOT NULL,
   tc_attendtime VARCHAR(6)NOT NULL,
   tc_closetime VARCHAR(6)   NOT NULL
);

CREATE TABLE OpenDay (
        open_id   VARCHAR2(45) NOT NULL PRIMARY KEY,
        open_date VARCHAR2(45) NOT NULL,
        open_time VARCHAR2(45) NOT NULL,
        open_close VARCHAR2(45) NOT NULL
);
           

CREATE TABLE TableCheck (
            table_id   VARCHAR2(30) NOT NULL PRIMARY KEY ,
          table_seats VARCHAR2(30) NOT NULL,
          table_position VARCHAR2(40),
           table_memo   VARCHAR2(255)

);

CREATE TABLE Refund (

          refund_date VARCHAR2(45) NOT NULL,
          refund_rate VARCHAR2(20) NOT NULL,
           refund_id   VARCHAR2(20) NOT NULL PRIMARY KEY
);

CREATE TABLE CookingMaterial (

          cm_id VARCHAR2(8) NOT NULL PRIMARY KEY,
          cm_name VARCHAR2(30) NOT NULL,
          cm_unit VARCHAR2(4) NOT NULL,
          cm_amount number NOT NULL check(cm_amount >= 0),
          cm_inputdate date NOT NULL,
          cm_outdate date,
          cm_expdate date NOT NULL,
          cm_origin VARCHAR2(5) NOT NULL,
          cm_saftyStock number not null check(cm_saftyStock >=0),
          cm_price number NULL 
          
);
create sequence cmseq;

CREATE TABLE Menu (

          menu_id VARCHAR2(8) NOT NULL PRIMARY KEY,
          menu_name VARCHAR2(30) NOT NULL,
          menu_price number NOT NULL check(menu_price >0),
          menu_ingredients varchar2(4000) not null,
          menu_regdate date default sysdate,
          menu_updatedate date default sysdate

);
create sequence menuseq;

CREATE TABLE DiscardHistory (

          discard_id VARCHAR2(8) NOT NULL PRIMARY KEY,
          cm_id VARCHAR2(8)  NOT NULL REFERENCES CookingMaterial(cm_id),                       
          discard_date VARCHAR2(11) NOT NULL,
          discard_type VARCHAR2(6)NOT NULL,
          discard_amount  number NOT null check(discard_amount > 0),
          emp_id VARCHAR2(8) NOT NULL REFERENCES Employee(emp_id),
          emp_name VARCHAR2(10) NOT NULL
);

CREATE TABLE Orders (

          oders_id VARCHAR2(10) NOT NULL PRIMARY KEY,
            cm_id VARCHAR2(255) NOT NULL REFERENCES CookingMaterial(cm_id),
          cm_name VARCHAR2(6) NOT NULL,
            orders_amount VARCHAR2(20) NOT NULL,
            orders_unit VARCHAR2(8) NOT NULL,
            orders_unitPrice number NOT null check(orders_unitPrice > 0),
            order_date VARCHAR2(8) NOT NULL,
            order_corp VARCHAR2(20) NOT NULL,
            order_corpphone  VARCHAR2(10)

);
CREATE TABLE Sale (

          sale_id VARCHAR2(10) NOT NULL PRIMARY KEY,
          sale_date VARCHAR2(8) NOT NULL,
           sale_point VARCHAR2(15) NOT NULL,
           sale_card number NOT NULL check(sale_card >= 0),
            sale_cash number NOT NULL check(sale_cash >= 0),
            menu_name VARCHAR2(10) NOT NULL,
            menu_amount number NOT NULL check(menu_amount > 0),
            menu_id VARCHAR2(8) NOT NULL REFERENCES Menu(menu_id),
            emp_id VARCHAR2(6) NOT NULL REFERENCES Employee(emp_id),
            emp_name VARCHAR2(10) NOT NULL

               
);
 CREATE TABLE PointRates (
            pr_id   VARCHAR2(20) NOT NULL PRIMARY KEY,
          pr_grade VARCHAR2(10) NOT NULL,
          pr_regdate VARCHAR2(40) NOT NULL,
           pr_rate VARCHAR2(40) NOT NULL
   
);
CREATE TABLE Members (
            member_id VARCHAR2(10) NOT NULL PRIMARY KEY,
            member_name VARCHAR2(10) NOT NULL,
          member_phone VARCHAR2(11) NOT NULL,
           member_regdate DATE default sysdate,
            member_signout DATE,
           member_rank VARCHAR2(5) NOT NULL

);
CREATE TABLE Points (

          point_id VARCHAR2(10) NOT NULL PRIMARY KEY,
          point_date VARCHAR2(8) NOT NULL,
           point_amount VARCHAR2(15) NOT NULL,
            member_id VARCHAR2(10) NOT NULL REFERENCES Members(member_id),
            emp_id VARCHAR2(6) NOT NULL REFERENCES Employee(emp_id),
            emp_name VARCHAR2(10) NOT NULL,
            pr_id VARCHAR2(20) NOT NULL REFERENCES PointRates(pr_id)

               
);
