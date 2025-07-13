--Creating the table for customers
create table customers (
                         Customer_ID              varchar(100)      primary key,
                         First_Name               varchar(100),
                         Last_Name                varchar(100),
                         Email                    varchar(100),
                         Phone                    varchar(20),
                         Customer_Address         varchar(100)

                       )



--Entering in the data for the customers
insert into customers (Customer_ID,First_Name,Last_Name,Email,Phone,Customer_Address)
values (1, 'Sarah', 'Johnson','sarah@example.com','555-123-4567','100 Maple St, Austin, TX'),
        (2,'David', 'Lee', 'Davidlee@example.com','555-234-5678','220 Oak Ave, Dallas, TX'),
         (3,'Maria', 'Lopez', 'mlopez@example.com','555-345-6789', '45 Pine Rd, Houston, TX');

--Creating a sequence for customers for future additions 

  create sequence customers_seq
  start with 4
  increment by 1;
  INSERT INTO customers 
     (
       Customer_ID, 
       First_Name, 
       Last_Name, 
       Email, 
       Phone, 
       Customer_Address
     )
   VALUES 
     (
       NEXT VALUE FOR customers_seq, 
       --Put new information into here
     );



------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------

--Creating the table orders
create table orders (
                      Order_ID              varchar(100)         primary key,
                      Customer_ID           varchar(100)         not null,
                      Order_Date            varchar(100)         not null,
                      Shipping_Address      varchar(100)         not null,
                      Total_Amount          int                  not null,

                      foreign key (Customer_ID) references Customers(Customer_ID)
                    )

--Entering thre data for the orders
insert into orders (Order_ID,Customer_ID,Order_Date,Shipping_Address,Total_Amount)
values (101,1,2024-08-01, '100 Maple St, Austin, TX', 59.98),
        (102,2,2024-08-03,'220 Oak Ave, Dallas, TX', 29.99),
         (103,1,2024-08-10,'100 Maple St, Austin, TX',19.99);



  --Creating a sequence for orders for future additions 

  create sequence orders_seq
  start with 104
  increment by 1;
  INSERT INTO orders 
     (
       Order_ID, 
       Customer_ID, 
       Order_Date, 
       Shipping_Address, 
       Total_Amount
       
     )
   VALUES 
     (
       NEXT VALUE FOR orders_seq, 
       --Put new information into here
     );

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------

--Creating the table for Products
Create table Products(
                        Product_ID        varchar(100)         Primary key,
                        Title             varchar(100)         not null,
                        Author            varchar(100)         not null,
                        Genre             varchar(100)         not null,
                        Price             float(9)             not null,
                        Stock_Quantity    int                  not null
                     )

--Entering thre data for the products
insert into Products (Product_ID,Title,Author,Genre,Price,Stock_Quantity)
values (201, 'The Art of SQL', 'Stephane Faroult','Tech',29.99,12),
        (202,'To Kill a Mockingbird', 'Harper Lee', 'Fiction',19.99,8),
         (203,'Clean Code', 'Robert C. Martin', 'Tech', 39.99, 5);



--Creating a sequence for Products for future additions 

  create sequence Products_seq
  start with 204
  increment by 1;
  INSERT INTO Products 
     (
       Product_ID, 
       Title, 
       Author, 
       Genre, 
       Price,
       Stock_Quantity
       
     )
   VALUES 
     (
       NEXT VALUE FOR Products_seq, 
       --Put new information into here
     );

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------

--Creating the table for Order Items
create table Order_Items (
                           Order_Items       varchar(100)     primary key,
                           Order_ID          varchar(100)     not null,
                           Product_ID        varchar(100)     not null,
                           Quantity          int              not null,
                           Unit_Price        float(9)         not null,


                           foreign key (Order_ID) references Orders(Order_ID),
                           foreign key (Product_ID) references Products(Product_ID)
                         )

insert into Order_Items(Order_Items,Order_ID,Product_ID,Quantity,Unit_Price)
values (301,101,201,2,29.99),
        (302,102,202,1,29.99),
         (303,103,203,1,19.99);



--Creating a sequence for Order for future additions 

  create sequence Order_Items_seq
  start with 304
  increment by 1;
  INSERT INTO Order_Items 
     (
       Order_Items, 
       Order_ID, 
       Product_ID, 
       Quantity, 
       Unit_Price
 
     )
   VALUES 
     (
       NEXT VALUE FOR Order_Items_seq, 
       --Put new information into here
     );
 
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------

create table suppliers (
                          suppliers_ID        varchar(100)     primary key,
                          Company_Name        varchar(100)     not null,
                          Contact_Name        Varchar(100)     not null,
                          Email               Varchar(100)     not null,
                          Phone               varchar(100)     not null,
                       )


insert into suppliers (suppliers_ID,Company_Name,Contact_Name,Email,Phone)
values (401,'TechBooks Inc.', 'Alan Smith', 'alan@techbooks.com',555-555-1111),
        (402,'Classic Reads', 'Jane Baker','jane@classics.com', 555-555-222);



--Creating a sequence for suppliers for future additions 

  create sequence suppliers_seq
  start with 403
  increment by 1;
  INSERT INTO suppliers 
     (
       suppliers_ID, 
       Company_Name, 
       Contact_Name, 
       Email, 
       Phone
 
     )
   VALUES 
     (
       NEXT VALUE FOR suppliers_seq, 
       --Put new information into here
     );

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------

Create table Product_Suppliers (
                                  ProductSupplier_ID    varchar(100)    primary key,
                                  Product_ID            varchar(100)    not null,
                                  Suppliers_ID           varchar(100)    not null,
                                  Supply_Price          float(9)        not null,


                                  foreign key (suppliers_ID) references suppliers(suppliers_ID),
                                  foreign key (Product_,ID) references Products(Product_ID)
                               )

insert into Product_Suppliers(ProductSupplier_ID,Product_ID,Suppliers_ID,Supply_Price)
values (501,201,401,18.00),
        (502,202,402,12.00),
         (503,203,401,22.00);


--Creating a sequence for Product_Suppliers for future additions 

  create sequence Product_Suppliers_seq
  start with 503
  increment by 1;
  INSERT INTO Product_Suppliers 
     (
       ProductSupplier_ID, 
       Product_ID, 
       Suppliers_ID, 
       Supply_Price 
       
 
     )
   VALUES 
     (
       NEXT VALUE FOR Product_Suppliers_seq, 
       --Put new information into here
     );


------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------


