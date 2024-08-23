CREATE DATABASE responsible_consumption_and_production;
USE responsible_consumption_and_production;

CREATE TABLE Household (
    Household_ID INT PRIMARY KEY AUTO_INCREMENT,
    Household_Name VARCHAR(100) NOT NULL,
    Address VARCHAR(50)
);

CREATE TABLE Food_Item (
    Food_Item_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(25) NOT NULL,
    Category VARCHAR(55),
    Expiration_Date DATE
);

CREATE TABLE Food_Waste (
    Waste_ID INT PRIMARY KEY AUTO_INCREMENT,
    Household_ID INT,
    Food_Item_ID INT,
    Waste_Date DATE,
    Quantity_Wasted DECIMAL(10, 2),
    FOREIGN KEY (Household_ID) REFERENCES Household(Household_ID),
    FOREIGN KEY (Food_Item_ID) REFERENCES Food_Item(Food_Item_ID)
);

CREATE TABLE Food_Consumption (
    Consumption_ID INT PRIMARY KEY AUTO_INCREMENT,
    Household_ID INT,
    Food_Item_ID INT,
    Consumption_Date DATE,
    Quantity_Consumed DECIMAL(10, 2),
    FOREIGN KEY (Household_ID) REFERENCES Household(Household_ID),
    FOREIGN KEY (Food_Item_ID) REFERENCES Food_Item(Food_Item_ID)
);

CREATE TABLE Household_Inventory (
    Inventory_ID INT PRIMARY KEY AUTO_INCREMENT,
    Household_ID INT,
    Food_Item_ID INT,
    Quantity_In_Stock DECIMAL(10, 2),
    Last_Updated DATE,
    FOREIGN KEY (Household_ID) REFERENCES Household(Household_ID),
    FOREIGN KEY (Food_Item_ID) REFERENCES Food_Item(Food_Item_ID)
);
-- Insert sample data into Household
INSERT INTO Household (Household_Name, Address) VALUES ('Smith Family', '123 Elm Street');
INSERT INTO Household (Household_Name, Address) VALUES ('Johnson Family', '456 Oak Avenue');

-- Insert sample data into Food_Item
INSERT INTO Food_Item (Name, Category, Expiration_Date) VALUES ('Milk', 'Dairy', '2024-08-25');
INSERT INTO Food_Item (Name, Category, Expiration_Date) VALUES ('Bread', 'Bakery', '2024-08-22');

-- Insert sample data into Food_Waste
INSERT INTO Food_Waste (Household_ID, Food_Item_ID, Waste_Date, Quantity_Wasted) VALUES (1, 1, '2024-08-20', 0.5);
INSERT INTO Food_Waste (Household_ID, Food_Item_ID, Waste_Date, Quantity_Wasted) VALUES (2, 2, '2024-08-19', 1.0);

-- Insert sample data into Food_Consumption
INSERT INTO Food_Consumption (Household_ID, Food_Item_ID, Consumption_Date, Quantity_Consumed) 
VALUES (1, 1, '2024-08-18', 0.8);

INSERT INTO Food_Consumption (Household_ID, Food_Item_ID, Consumption_Date, Quantity_Consumed) 
VALUES (2, 2, '2024-08-17', 1.2);

-- Insert sample data into Household_Inventory
INSERT INTO Household_Inventory (Household_ID, Food_Item_ID, Quantity_In_Stock, Last_Updated)
VALUES (1, 1, 1.5, '2024-08-18');

INSERT INTO Household_Inventory (Household_ID, Food_Item_ID, Quantity_In_Stock, Last_Updated)
VALUES (2, 2, 0.5, '2024-08-17');

-- additional data
USE responsible_consumption_and_production;
-- Insert sample data into Household
INSERT INTO Household (Household_Name, Address) VALUES ('Smith Family', '123 Elm Street');
INSERT INTO Household (Household_Name, Address) VALUES ('Johnson Family', '456 Oak Avenue');
INSERT INTO Household (Household_Name, Address) VALUES ('Williams Family', '789 Pine Road');
INSERT INTO Household (Household_Name, Address) VALUES ('Jones Family', '101 Maple Drive');
INSERT INTO Household (Household_Name, Address) VALUES ('Brown Family', '202 Birch Lane');

-- Insert sample data into Food_Item
INSERT INTO Food_Item (Name, Category, Expiration_Date) VALUES ('Milk', 'Dairy', '2024-08-25');
INSERT INTO Food_Item (Name, Category, Expiration_Date) VALUES ('Bread', 'Bakery', '2024-08-22');
INSERT INTO Food_Item (Name, Category, Expiration_Date) VALUES ('Chicken Breast', 'Meat', '2024-08-30');
INSERT INTO Food_Item (Name, Category, Expiration_Date) VALUES ('Apples', 'Fruit', '2024-08-27');
INSERT INTO Food_Item (Name, Category, Expiration_Date) VALUES ('Rice', 'Grains', '2025-01-15');

-- Insert sample data into Food_Waste
INSERT INTO Food_Waste (Household_ID, Food_Item_ID, Waste_Date, Quantity_Wasted) VALUES (1, 1, '2024-08-20', 0.5);
INSERT INTO Food_Waste (Household_ID, Food_Item_ID, Waste_Date, Quantity_Wasted) VALUES (2, 2, '2024-08-19', 1.0);
INSERT INTO Food_Waste (Household_ID, Food_Item_ID, Waste_Date, Quantity_Wasted) VALUES (3, 3, '2024-08-18', 0.75);
INSERT INTO Food_Waste (Household_ID, Food_Item_ID, Waste_Date, Quantity_Wasted) VALUES (4, 4, '2024-08-21', 1.2);
INSERT INTO Food_Waste (Household_ID, Food_Item_ID, Waste_Date, Quantity_Wasted) VALUES (5, 5, '2024-08-22', 0.4);

-- Insert sample data into Food_Consumption
INSERT INTO Food_Consumption (Household_ID, Food_Item_ID, Consumption_Date, Quantity_Consumed) VALUES (1, 1, '2024-08-18', 0.8);
INSERT INTO Food_Consumption (Household_ID, Food_Item_ID, Consumption_Date, Quantity_Consumed) VALUES (2, 2, '2024-08-17', 1.2);
INSERT INTO Food_Consumption (Household_ID, Food_Item_ID, Consumption_Date, Quantity_Consumed) VALUES (3, 3, '2024-08-16', 1.0);
INSERT INTO Food_Consumption (Household_ID, Food_Item_ID, Consumption_Date, Quantity_Consumed) VALUES (4, 4, '2024-08-15', 1.5);
INSERT INTO Food_Consumption (Household_ID, Food_Item_ID, Consumption_Date, Quantity_Consumed) VALUES (5, 5, '2024-08-14', 0.9);

-- Insert sample data into Household_Inventory
INSERT INTO Household_Inventory (Household_ID, Food_Item_ID, Quantity_In_Stock, Last_Updated) VALUES (1, 1, 1.5, '2024-08-18');
INSERT INTO Household_Inventory (Household_ID, Food_Item_ID, Quantity_In_Stock, Last_Updated) VALUES (2, 2, 0.5, '2024-08-17');
INSERT INTO Household_Inventory (Household_ID, Food_Item_ID, Quantity_In_Stock, Last_Updated) VALUES (3, 3, 2.0, '2024-08-16');
INSERT INTO Household_Inventory (Household_ID, Food_Item_ID, Quantity_In_Stock, Last_Updated) VALUES (4, 4, 1.0, '2024-08-15');
INSERT INTO Household_Inventory (Household_ID, Food_Item_ID, Quantity_In_Stock, Last_Updated) VALUES (5, 5, 1.5, '2024-08-14');


