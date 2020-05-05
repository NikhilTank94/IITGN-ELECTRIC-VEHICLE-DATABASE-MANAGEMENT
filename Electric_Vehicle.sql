Drop table VEHICLE;
Drop table PARTS;
Drop table TIME;
Drop table VALUE_INSTANT;

CREATE TABLE VEHICLE 
( Chassis_id VARCHAR(15) NOT NULL, 
License_id VARCHAR(15) NOT NULL, 
Part_id CHAR(9) NOT NULL, 
PRIMARY KEY (Chassis_id, License_id)
FOREIGN KEY(Part_id)); 

CREATE TABLE PARTS 
( Part_id VARCHAR(15) NOT NULL, 
Manufacturer_name VARCHAR(15) NOT NULL, 
Motor_flag CHAR(9), 
Max_rpm INT NOT NULL, 
Rated_Power VARCHAR(9), 
Battery_Flag CHAR(9),
Amphr CHAR(5),
PRIMARY KEY(Part_id)); 

CREATE TABLE TIME 
( HH_MM_SS INT NOT NULL, 
Time_id VARCHAR(15) NOT NULL,
dd_mm_yy INT NOT NULL, 
PRIMARY KEY (Time_id)); 

CREATE TABLE VALUE_INSTANT 
( Chassis_id VARCHAR(15) NOT NULL,
License_id VARCHAR(15) NOT NULL, 
Batt_avg_temp INT NOT NULL,
Batt_chg_Current INT NOT NULL,
Batt_dischg_Current INT NOT NULL,
Batt_voltage INT NOT NULL,
Charging_door INT NOT NULL,
Ignition_key INT NOT NULL,
Seatbelt_sensor INT NOT NULL,
Motor_acc INT NOT NULL,
Motor_status VARCHAR(4) NOT NULL,
Motor_inst_RPM INT NOT NULL,
Motor_Op_Voltage INT NOT NULL,
Time_id VARCHAR(15) NOT NULL, 
FOREIGN KEY (Chassis_id,License_id)); 

insert into VEHICLE values
('ev101','IITGN EV101','motor01'), 
('ev102','IITGN EV102','motor02'), 
('ev103','IITGN EV103','motor03'), 
('ev101','IITGN EV101','battery01'), 
('ev102','IITGN EV102','battery02'), 
('ev103','IITGN EV103','battery03'); 

insert into PARTS values
('motor01','tachometer','motor','3000','3kW','NULL','NULL'), 
('motor02','tachometer','motor','3000','5kW','NULL','NULL'), 
('motor03','tachometer','motor','3000','6kW','NULL','NULL'), 
('battery01','Panasonic','NULL','NULL','NULL','Battery','100'), 
('battery02','Panasonic','NULL','NULL','NULL','Battery','120'), 
('battery03','Panasonic','NULL','NULL','NULL','Battery','150'); 

insert into TIME values
(100000,1,21115),
(120000,2,21115),
(140000,3,21115),
(160000,4,21115),
(180000,5,21115),
(100000,6,31115),
(120000,7,31115),
(140000,8,31115),
(160000,9,31115),
(180000,10,31115);

insert into VALUE_INSTANT values
('ev101','IITGN EV101',32,0,80,12.3,0,1,1,3,1,2000,60,1),
('ev101','IITGN EV101',35,0,60,12.0,0,1,1,0,1,3000,60,2),
('ev101','IITGN EV101',40,0,60,11.5,0,1,1,1,1,2000,60,3),
('ev101','IITGN EV101',45,20,0,11,1,0,0,0,0,0,0,4),
('ev101','IITGN EV101',50,15,0,12,1,0,0,0,0,0,0,5),
('ev101','IITGN EV101',33,0,90,12.2,0,1,1,4,1,1000,60,6),
('ev101','IITGN EV101',36,0,60,11.9,0,1,1,0,1,3000,60,7),
('ev101','IITGN EV101',41,0,60,11.5,0,1,1,1,1,2000,60,8),
('ev101','IITGN EV101',46,18,0,11,1,0,0,0,0,0,0,9),
('ev101','IITGN EV101',55,18,0,12,1,0,0,0,0,0,0,10),
('ev102','IITGN EV102',30,0,100,12.3,0,1,1,3,1,2000,60,1),
('ev102','IITGN EV102',32,0,80,12.2,0,1,1,0,1,3000,60,2),
('ev102','IITGN EV102',38,0,80,11.8,0,1,1,1,1,2000,60,3),
('ev102','IITGN EV102',41,20,0,11.5,1,0,0,0,0,0,0,4),
('ev102','IITGN EV102',48,15,0,12.2,1,0,0,0,0,0,0,5),
('ev102','IITGN EV102',31,10,0,12.3,1,1,1,0,0,0,60,6),
('ev102','IITGN EV102',35,0,80,12.2,0,1,1,0,1,3000,60,7),
('ev102','IITGN EV102',43,0,80,11.7,0,1,1,1,1,2000,60,8),
('ev102','IITGN EV102',47,18,0,11.2,1,0,0,0,0,0,0,9),
('ev102','IITGN EV102',56,18,0,12.2,1,1,0,0,0,0,0,10),
('ev103','IITGN EV103',44,0,90,12.3,0,1,1,3,1,2000,60,1),
('ev103','IITGN EV103',46,0,70,12.0,0,1,1,0,1,3000,60,2),
('ev103','IITGN EV103',41,0,0,11.5,0,1,0,1,0,0,0,3),
('ev103','IITGN EV103',44,20,0,11,1,0,0,0,0,0,0,4),
('ev103','IITGN EV103',61,15,0,12,1,0,0,0,0,0,0,5),
('ev103','IITGN EV103',46,0,100,12.2,0,1,1,4,1,1000,60,6),
('ev103','IITGN EV103',61,0,65,11.9,0,1,1,0,1,3000,60,7),
('ev103','IITGN EV103',45,0,62,11.5,0,1,1,1,1,2000,60,8),
('ev103','IITGN EV103',62,18,0,11,1,1,0,0,0,0,0,9),
('ev103','IITGN EV103',65,18,0,12,1,0,0,0,0,0,0,10);

