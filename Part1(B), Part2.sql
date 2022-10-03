Part1 (B)

 CREATE TABLE Myhomes_Employee(
                                                            employee_id int(20),
                                                            Representatives_name varchar(20),
                                                            Chef_position BOOLEAN,
                                                            Supervisors_position BOOLEAN,
                                                            Supervisors_name varchar(20),
                                                            Sales_Performance double(10,2),
                                                            PRIMARY KEY(employee_id)
                                                            );


CREATE TABLE Myhomes_Property(
                                                          Property_id int(20),
                                                          Property_name varchar(20),
                                                          Property_type varchar(20),
                                                          Property_area varchar(10),
                                                          Property_value double(10,2),
                                                          Property_sold BOOLEAN,
                                                          employee_id int(20),
                                                          PRIMARY KEY(Property_id),
                                                          FOREIGN KEY(employee_id) REFERENCES Myhomes_Employee(employee_id)
                                                          ON DELETE CASCADE
                                                          ON UPDATE CASCADE
                                                          );

 CREATE TABLE Customer_detail(
                                                     Customer_id int(20),
                                                     Customer_name varchar(20),
                                                     Customer_age varchar(3),
                                                     Initial_payment double(10,2),
                                                     Property_id int(20),
                                                     PRIMARY KEY(Customer_id),
                                                    Foreign key(Property_id) REFERENCES Myhomes_property(Property_id)
                                                    ON DELETE CASCADE
                                                    ON UPDATE CASCADE
                                                     );
Part 2 (A)
INSERT INTO Myhomes_employee values(1,'Tom',true,false,'Joe',5000000),
(2,'Chris',false,false,'Austin',500000),
(3,'Michael',false,true,'Kelly',1500000),
(4,'Kelly',true,true,null,4000000),
(5,'Austin',true,false,null,4500000),
(6,'Molly',False,False,'Austin',400000),
(7,'Justin',true,false,null,2000000),
(8,'Joe',false,true,null,1800000),
(9,'Alex',false,true,'Justin',1900000);

Insert into Myhomes_property values(1,'Westgate House','Apartment','Ealing','YES',1500000,3),
(2,'Foxley Road','Bungalows','Kennington','YES',2000000,7),
(3,'Westealing property','Houses','Ealing','YES',2000000,4),
(4,'Ealing development','Land','Ealing','YES',2000000,4),
(5,'Northealing shop','Commericial property','Ealing','NO',500000,4),
(6,'Trevorsquare Flat','Apartment','Kennington','YES',1900000,9),
(7,'Canarywhalf property','Apartment','Stratford','YES',2500000,5),
(8,'Chelsea Green','Houses','Kennington','YES',2000000,5),
(9,'West shop','Commericial property','Kennington','YES',500000,2),
(10, 'Cityloft','Apartment','Highstreet','YES',3500000,1),
(11,'Theshard property','Land','Highstreet','YES',1500000,1),
(12,'Night city','Commericial property','Highstreet','YES',1800000,8),
(13,'Essexland','Bungalows','Ealing','NO',700000,8),
(14,'Food community','Commericial property','Stratford','YES',400000,6);



Insert into customer_detail values(1,'Natasha',28,200000,2,7),
(2,'Zadaya',25,180000,12,8),
(3,'Elon',50,3000000,10,1),
(4,'James',30,100000,6,9),
(5,'Jose',40,110000,11,1),
(6,'Tina',34,100000,1,3),
(7,'Timi',23,230000,2,7),
(8,'Amanda',29,500000,3,4),
(9,'Travis',28,600000,4,4),
(10,'Frank',37,300000,9,2),
(11,'Paris',40,2000000,7,5),
(12,'George',46,1000000,8,5);

Part 2 (B) (1)

SELECT me.Representatives_name, me.Supervisors_name, mp.Property_id,
mp.Property_name,mp.Property_type,mp.Property_area,mp.Property_sold,
mp.Property_value From Myhomes_employee me INNER JOIN Myhomes_property mp 
ON me.employee_id =mp.employee_id;

Part 2(B) (2)

SELECT c.Customer_id,c.Customer_name,c.Customer_age,
c.Initial_payment,mp.property_id,mp.property_area,me.Representatives_name
from Customer_detail c INNER JOIN Myhomes_Property mp ON c.property_id
= mp.property_id INNER JOIN Myhomes_employee me ON c.Employee_id = me.employee_id; 

