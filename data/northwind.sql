CREATE TABLE Customers(
	ID number,
	CustomerID nchar(5),
	CompanyName nvarchar(40),
	ContactName nvarchar(30),
	ContactTitle nvarchar(30),
	Address nvarchar(60),
	City nvarchar(15),
	Region nvarchar(15),
	PostalCode nvarchar(10),
	Country nvarchar(15),
	Phone nvarchar(24),
	Fax nvarchar(24)
)

CREATE TABLE Employees (
	EmployeeID number,
	LastName nvarchar(20),
	FirstName nvarchar(10),
	Title nvarchar(30),
	TitleOfCourtesy nvarchar(25),
	BirthDate datetime,
	HireDate datetime,
	Address nvarchar(60),
	City nvarchar(15),
	Region nvarchar(15),
	PostalCode nvarchar(10),
	Country nvarchar(15),
	HomePhone nvarchar(24),
	Extension nvarchar(4),
	ReportsTo number
)

CREATE TABLE Categories (
	CategoryID number,
	CategoryName nvarchar (15),
	Description STRING
)

CREATE TABLE Shippers (
	ShipperID number,
	CompanyName nvarchar (40),
	Phone nvarchar (24)
)

CREATE TABLE Suppliers (
	SupplierID number,
	CompanyName nvarchar (40),
	ContactName nvarchar (30),
	ContactTitle nvarchar (30),
	Address nvarchar (60),
	City nvarchar (15),
	Region nvarchar (15),
	PostalCode nvarchar (10),
	Country nvarchar (15),
	Phone nvarchar (24),
	Fax nvarchar (24),
	HomePage String
)

CREATE TABLE Orders (
	OrderID number,
	CustomerID nchar(5),
	EmployeeID number,
	OrderDate datetime,
	RequiredDate datetime,
	ShippedDate datetime,
	ShipVia number,
	Freight Double,
	ShipName nvarchar(40),
	ShipAddress nvarchar(60),
	ShipCity nvarchar(15),
	ShipRegion nvarchar(15) ,
	ShipPostalCode nvarchar(10),
	ShipCountry nvarchar(15)
)

CREATE TABLE Products (
	ProductID number,
	ProductName nvarchar(40),
	SupplierID number,
	CategoryID number,
	QuantityPerUnit nvarchar(20),
	UnitPrice Double,
	UnitsInStock smallint,
	UnitsOnOrder smallint,
	ReorderLevel smallint,
	Discontinued smallint
)

CREATE TABLE Order Details (
	OrderID int,
	ProductID int,
	UnitPrice Double,
	Quantity smallint,
	Discount Float
)

CREATE TABLE Region ( 
	RegionID int,
	RegionDescription nchar(50) 
)

CREATE TABLE Territories (
	TerritoryID nvarchar(20),
	TerritoryDescription nchar(50),
    RegionID int
)

CREATE TABLE EmployeeTerritories (
	EmployeeID int,
	TerritoryID nvarchar(20) 
)