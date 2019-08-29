CREATE DATABASE JessterFITdb
GO

USE JessterFITdb
GO

CREATE TABLE [Exercise_Plan_Type]  (
  [Exercise_Plan_Type_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Plan_Type_Description] varchar(20) not null,
  [Plan_Type_Price] decimal(8,2) not null
);

INSERT INTO [Exercise_Plan_Type] VALUES ('Weight Loss',1600);
INSERT INTO [Exercise_Plan_Type] VALUES ('Lifestyle',1200);
INSERT INTO [Exercise_Plan_Type] VALUES ('Bulking',1500);
INSERT INTO [Exercise_Plan_Type] VALUES ('Custom',2000);

CREATE TABLE [Exercise_Plan]  (
  [Exercise_Plan_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Exercise_Plan_Name] varchar(32) not null,
  [Exercise_Plan_Type_ID] int FOREIGN KEY REFERENCES [Exercise_Plan_Type]([Exercise_Plan_Type_ID])
);

CREATE TABLE [Day]  (
  [Day_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Day_Type] varchar(12) not null
);

INSERT INTO [Day] VALUES ('Arm Day');
INSERT INTO [Day] VALUES ('Chest Day');
INSERT INTO [Day] VALUES ('Leg Day');
INSERT INTO [Day] VALUES ('Back Day');
INSERT INTO [Day] VALUES ('Shoulder Day');
INSERT INTO [Day] VALUES ('Rest Day');
INSERT INTO [Day] VALUES ('Cardio Day');

CREATE TABLE [Exercise_Plan_Day]  (
  [Exercise_Plan_Day_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Exercise_Plan_ID] int FOREIGN KEY REFERENCES [Exercise_Plan]([Exercise_Plan_ID]) not null,
  [Day_ID] int FOREIGN KEY REFERENCES [Day]([Day_ID]) not null
);

CREATE TABLE [Workout]  (
  [Workout_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Workout_Number] varchar(12) not null
);

INSERT INTO [Workout] VALUES ('Warm Up');
INSERT INTO [Workout] VALUES ('First');
INSERT INTO [Workout] VALUES ('Second');
INSERT INTO [Workout] VALUES ('Third');
INSERT INTO [Workout] VALUES ('Fourth');
INSERT INTO [Workout] VALUES ('Fifth');
INSERT INTO [Workout] VALUES ('Sixth');
INSERT INTO [Workout] VALUES ('Seventh');
INSERT INTO [Workout] VALUES ('Cool Down');

CREATE TABLE [Exercise_Type]  (
  [Exercise_Type_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Exercise_Type_Description] varchar(50) not null,
);

INSERT INTO [Exercise_Type] VALUES ('Cardio');
INSERT INTO [Exercise_Type] VALUES ('Weight Lifting');
INSERT INTO [Exercise_Type] VALUES ('Body Weight');

CREATE TABLE [Exercise_Body_Type]  (
  [Exercise_Body_Type_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Exercise_Body_Desc] varchar(64) not null,
);

INSERT INTO [Exercise_Body_Type] VALUES ('Biceps');
INSERT INTO [Exercise_Body_Type] VALUES ('Triceps');
INSERT INTO [Exercise_Body_Type] VALUES ('Pectoralis Major');
INSERT INTO [Exercise_Body_Type] VALUES ('Pectoralis Minor');
INSERT INTO [Exercise_Body_Type] VALUES ('Trapezius');
INSERT INTO [Exercise_Body_Type] VALUES ('Latissimus Dorsi');
INSERT INTO [Exercise_Body_Type] VALUES ('Deltoids');
INSERT INTO [Exercise_Body_Type] VALUES ('Abdominal');
INSERT INTO [Exercise_Body_Type] VALUES ('Quads');
INSERT INTO [Exercise_Body_Type] VALUES ('Calves');
INSERT INTO [Exercise_Body_Type] VALUES ('Gluteus Maximus');
INSERT INTO [Exercise_Body_Type] VALUES ('Hamstrings');

CREATE TABLE [Exercise]  (
  [Exercise_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Exercise_Name] varchar(64) not null,
  [Exercise_Description] varchar(64) not null,
  [Exercise_Type_ID] int FOREIGN KEY REFERENCES [Exercise_Type]([Exercise_Type_ID]) not null,
  [Exercise_Body_Type_ID] int FOREIGN KEY REFERENCES [Exercise_Body_Type]([Exercise_Body_Type_ID]) not null
);

INSERT INTO [Exercise] VALUES ('Incline Dumbbell Chest Press','Use incline bench, keep weight directly above shoulder line',2,4);
INSERT INTO [Exercise] VALUES ('Incline Dumbbell Flies','Use incline bench, keep elbow slightly bent',2,4);
INSERT INTO [Exercise] VALUES ('Push Up','Keep back straight, place hands inline with shoulders',3,3);
INSERT INTO [Exercise] VALUES ('Cable Flies','Keep elbows slightly bent, lean slightly forward',2,3);
INSERT INTO [Exercise] VALUES ('Cable Flies Isometric Hold','Hold in squeeze position, flex chest',2,3);
INSERT INTO [Exercise] VALUES ('Machine Chest Press','Keep back straight ',2,3);
INSERT INTO [Exercise] VALUES ('Dumbell Chest Scoops','Bend elbows to around 30 degrees and hold position when lifting',2,4);
INSERT INTO [Exercise] VALUES ('Isometric Push Up Hold','Bend elbows to 90 degree and hold position ',3,3);
INSERT INTO [Exercise] VALUES ('Hip Abductor','Keep back straight, squeeze glutes',2,11);
INSERT INTO [Exercise] VALUES ('Barbell Squats','Place feet inline with shoulder width',2,11);
INSERT INTO [Exercise] VALUES ('Leg Extensions','Keep toes pointed as far up as possible and hold for exercise',2,9);
INSERT INTO [Exercise] VALUES ('Front squats','Place feet inline with shoulders, use light weight',2,9);
INSERT INTO [Exercise] VALUES ('Leg Extension Isometric Hold','Keep toes pointed up, hold in flexed position',2,9);

CREATE TABLE [Set]  (
  [Set_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Set_Name] varchar(12) not null
);

INSERT INTO [Set] VALUES ('Set 1');
INSERT INTO [Set] VALUES ('Set 2');
INSERT INTO [Set] VALUES ('Set 3');
INSERT INTO [Set] VALUES ('Set 4');
INSERT INTO [Set] VALUES ('Set 5');
INSERT INTO [Set] VALUES ('Set 6');
INSERT INTO [Set] VALUES ('Set 7');

CREATE TABLE [Exercise_Set]  (
  [Exercise_Set_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [REP] varchar(32) not null,
  [Exercise_ID] int FOREIGN KEY REFERENCES [Exercise]([Exercise_ID]) not null,
  [Set_ID] int FOREIGN KEY REFERENCES [Set]([Set_ID]) not null
);

CREATE TABLE [Workout_Set]  (
  [Workout_Set_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Workout_ID] int FOREIGN KEY REFERENCES [Workout]([Workout_ID]) not null,
  [Exercise_Set_ID] int FOREIGN KEY REFERENCES [Exercise_Set]([Exercise_Set_ID]) not null
);

CREATE TABLE [Day_Workout]  (
  [Day Workout_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Workout_Set_ID] int FOREIGN KEY REFERENCES [Workout_Set]([Workout_Set_ID]) not null,
  [Exercise_Plan_Day_ID] int FOREIGN KEY REFERENCES [Exercise_Plan_Day]([Exercise_Plan_Day_ID]) not null
);

CREATE TABLE [Company]  (
  [Company_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Company_Name] varchar(12) not null,
  [Company_Address] varchar(50) not null,
  [Company_Register_No] varchar(20) not null,
  [Company_Contact] varchar(12) not null,
  [Account_Name] varchar(15) not null,
  [Acount_Number] varchar(15) not null,
  [Account_Type] varchar(12) not null,
  [Account_Branch] varchar(15) not null,
  [Account_Bramch_Code] varchar(12) not null,
  [Owner_Email] varchar(20) not null
);

CREATE TABLE [Challenge_Status]  (
  [Challenge_Status_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Challenge_Status_Desc] varchar(12) not null,
);

CREATE TABLE [Challenge_Type]  (
  [Challenge_Type_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Challenge_Type_Desc] varchar(64) not null,
  [Challenge_Details] varchar(150) not null,
);

CREATE TABLE [Challenge]  (
  [Challenge_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Challenge_Start_Date] date not null,
  [Challenge_End_Date] date not null,
  [Challenge_Amount] decimal(8,2) not null,
  [Challenge_Prize] varchar(150) not null,
  [Challenge_Status_ID] int FOREIGN KEY REFERENCES [Challenge_Status]([Challenge_Status_ID]),
  [Challenge_Type_ID] int FOREIGN KEY REFERENCES [Challenge_Type]([Challenge_Type_ID])
);

CREATE TABLE [Challenge_Exercise_Plan]  (
  [Challenge_ID] int FOREIGN KEY REFERENCES [Challenge]([Challenge_ID]) not null,
  [Exercise_Plan_ID] int FOREIGN KEY REFERENCES [Exercise_Plan]([Exercise_Plan_ID]) not null,
  [Challenge_Month_Number] int not null,
  PRIMARY KEY ([Challenge_ID],[Exercise_Plan_ID])
);

CREATE TABLE [Gender]  (
  [Gender_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Gender_Description] varchar(6) not null
);

CREATE TABLE [Functionality]  (
  [Functionality_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Functionality_Desc] varchar(32) not null
);

CREATE TABLE [Access_Level]  (
  [Access_Level_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Access_Level_Desc] varchar(50) not null
);

CREATE TABLE [Access_Functionality]  (
  [Access_Func_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Access_Level_ID] int FOREIGN KEY REFERENCES [Access_Level]([Access_Level_ID]) not null,
  [Functionality_ID] int FOREIGN KEY REFERENCES [Functionality]([Functionality_ID]) not null
);

CREATE TABLE [User_Status]  (
  [User_Status_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [User_Status_Desc] varchar(12) not null
);

CREATE TABLE [User]  (
  [User_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Username] varchar(20) not null,
  [Password] varchar(20) not null,
  [Access_Level_ID] int FOREIGN KEY REFERENCES [Access_Level]([Access_Level_ID]),
  [User_Status_ID] int FOREIGN KEY REFERENCES [User_Status]([User_Status_ID])
);

CREATE TABLE [Client_Account_Status]  (
  [Client_Acc_Stat_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Client_Acc_Stat_Desc] varchar(10) not null
);

CREATE TABLE [Client]  (
  [Client_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Client_Name] varchar(150) not null,
  [Client_Surname] varchar(150) not null,
  [Client_Contact] varchar(150) not null,
  [Client_Height] int not null,
  [Date_of_Birth] date not null,
  [Subscription_Balance] decimal(8,2) not null,
  [Client_Acc_Stat_ID] int FOREIGN KEY REFERENCES [Client_Account_Status]([Client_Acc_Stat_ID]),
  [User_ID] int FOREIGN KEY REFERENCES [User]([User_ID]),
  [Gender_ID] int FOREIGN KEY REFERENCES [Gender]([Gender_ID])
);

CREATE TABLE [Payment_Status]  (
  [Payment_Status_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Payment_Status_Desc] varchar(12) not null
);

CREATE TABLE [Client_Plan]  (
  [Client_Plan_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Client_ID] int FOREIGN KEY REFERENCES [Client]([Client_ID]) not null,
  [Exercise_Plan_ID] int FOREIGN KEY REFERENCES [Exercise_Plan]([Exercise_Plan_ID]) not null,
  [Plan_Reference_Number] varchar(10) not null,
  [Payment_Status_ID] int FOREIGN KEY REFERENCES [Payment_Status]([Payment_Status_ID])
);

CREATE TABLE [Payment]  (
  [Payment_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Payment_Date] date not null,
  [Payment_Amount] decimal(8,2) not null,
  [Client_ID] int FOREIGN KEY REFERENCES [Client]([Client_ID]),
  [Exercise_Plan_ID] int FOREIGN KEY REFERENCES [Exercise_Plan]([Exercise_Plan_ID])
);

CREATE TABLE [Challenge_Pay_Status]  (
  [Chal_Pay_Status_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Chal_Pay_Status_Desc] varchar(12) not null
);

CREATE TABLE [Employee_Type]  (
  [Employee_Type_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Employee_Type_Desc] varchar(12) not null
);

CREATE TABLE [Employee]  (
  [Employee_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Employee_Name] varchar(150) not null,
  [Employee_Surname] varchar(150) not null,
  [Employee_Contact] varchar(150) not null,
  [Employee_Birth_Date] date not null,
  [Employee_Type_ID] int FOREIGN KEY REFERENCES [Employee_Type]([Employee_Type_ID]),
  [User_ID] int FOREIGN KEY REFERENCES [User]([User_ID]),
  [Gender_ID] int FOREIGN KEY REFERENCES [Gender]([Gender_ID])
);

CREATE TABLE [Booking_Slot]  (
  [Booking_Slot_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Booking_Slot_Date] date not null,
  [Booking_Slot_Start] time not null,
  [Booking_Slot_End] time not null,
  [Booking_Slot_Venue] varchar(120) not null
);

CREATE TABLE [Employee_Slot] (
  [Employee_Slot_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Employee_ID] int FOREIGN KEY REFERENCES [Employee]([Employee_ID]) not null,
  [Booking_Slot_ID] int FOREIGN KEY REFERENCES [Booking_Slot]([Booking_Slot_ID]) not null
);

CREATE TABLE [Booking_Type]  (
  [Booking_Type_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Booking_Type_Desc] varchar(12) not null
);

CREATE TABLE [Booking_Status]  (
  [Booking_Status_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Booking_Status_Desc] varchar(10) not null
);

CREATE TABLE [Booking]  (
  [Booking_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Booking_Type_ID] int FOREIGN KEY REFERENCES [Booking_Type]([Booking_Type_ID]),
  [Booking_Status_ID] int FOREIGN KEY REFERENCES [Booking_Status]([Booking_Status_ID]),
  [Employee_Slot_ID] int FOREIGN KEY REFERENCES [Employee_Slot]([Employee_Slot_ID]) not null
);

CREATE TABLE [Weight]  (
  [Weight_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Weight_Amount] decimal(8,2) not null,
  [Booking_ID] int FOREIGN KEY REFERENCES [Booking]([Booking_ID])
);

CREATE TABLE [Client_Challenge]  (
  [Client_Challenge_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Client_ID] int FOREIGN KEY REFERENCES [Client]([Client_ID]) not null,
  [Challenge_ID] int FOREIGN KEY REFERENCES [Challenge]([Challenge_ID]) not null,
  [Chal_Reference_Number] varchar(10) not null,
  [Chal_Pay_Status_ID] int FOREIGN KEY REFERENCES [Challenge_Pay_Status]([Chal_Pay_Status_ID]),
  [Booking_ID] int FOREIGN KEY REFERENCES [Booking]([Booking_ID])
);

CREATE TABLE [Challenge_Payment]  (
  [Challenge_Pay_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Challenge_Pay_Date] date not null,
  [Challenge_Pay_Amount] decimal(8,2) not null,
  [Client_Challenge_ID] int FOREIGN KEY REFERENCES [Client_Challenge]([Client_Challenge_ID]) not null
);

CREATE TABLE [Subscription_Status]  (
  [Sub_Status_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Sub_Status_Desc] varchar(12) not null
);

CREATE TABLE [Subscription_Type]  (
  [Sub_Type_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Length] int not null,
  [Weight_Amount] decimal(8,2) not null,
  [Discount_Percent] int not null
);

CREATE TABLE [Subscription]  (
  [Subscription_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Subscription_Start_Date] date not null,
  [Sub_Reference_Number] varchar(10) not null,
  [Subscription_End_Date] date not null,
  [Sub_Status_ID] int FOREIGN KEY REFERENCES [Subscription_Status]([Sub_Status_ID]),
  [Sub_Type_ID] int FOREIGN KEY REFERENCES [Subscription_Type]([Sub_Type_ID]),
  [Client_ID] int FOREIGN KEY REFERENCES [Client]([Client_ID]),
  [Booking_ID] int FOREIGN KEY REFERENCES [Booking]([Booking_ID])
);

CREATE TABLE [Subscription_Payment]  (
  [Sub_Pay_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Sub_Pay_Date] date not null,
  [Sub_Pay_Amount] decimal(8,2) not null,
  [Subscription_ID] int FOREIGN KEY REFERENCES [Subscription]([Subscription_ID]) not null
);

CREATE TABLE [Injury_Type]  (
  [Injury_Type_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Injury_Type_Desc] varchar(12) not null
);

CREATE TABLE [Injury]  (
  [Injury_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Injury_Description] varchar(12) not null,
  [Injury_Type_ID] int FOREIGN KEY REFERENCES [Injury_Type]([Injury_Type_ID]) not null
);

CREATE TABLE [Client_Injury] (
  [Client_Injury_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Client_ID] int FOREIGN KEY REFERENCES [Client]([Client_ID]) not null,
  [Injury_ID] int FOREIGN KEY REFERENCES [Injury]([Injury_ID]) not null
);

CREATE TABLE [Subscription_Exercise_Plan] (
  [Subscription_Plan_ID] int IDENTITY(1,1) PRIMARY KEY not null,
  [Subscription_ID] int FOREIGN KEY REFERENCES [Subscription]([Subscription_ID]) not null,
  [Exercise_Plan_ID] int FOREIGN KEY REFERENCES [Exercise_Plan]([Exercise_Plan_ID]) not null
);