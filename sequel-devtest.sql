/****** Object: Drop Database ******/
USE master
IF EXISTS(select * from sys.databases where name='sequel-devtest')
DROP DATABASE [sequel-devtest]
/****** Object: Create Database ******/

CREATE DATABASE [sequel-devtest]

USE [sequel-devtest]
GO
/****** Object: Table [dbo].[Customer] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[City] [nvarchar](100) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Zip] [nvarchar](32) NOT NULL,
	[Phone] [nvarchar](32) NOT NULL,
	[Fax] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object: Table [dbo].[Invoice] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Invoice_No] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Invoice_Date] [datetime] NOT NULL,
	[SubTotal] [decimal](19, 4) NOT NULL,
	[Tax] [decimal](19, 4) NOT NULL,
	[Shipping] [decimal](19, 4) NOT NULL,
	[Total] [decimal](19, 4) NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[Invoice_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object: Table [dbo].[LineItem] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineItem](
	[Invoice_No] [int] NOT NULL,
	[LineItem_No] [int] NOT NULL,
	[Part_No] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[Price] [decimal](19, 4) NOT NULL,
	[Ext_Price] [decimal](19, 4) NOT NULL
) ON [PRIMARY]

GO
/****** Object: Table [dbo].[Product] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Part_No] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Cost] [decimal](19, 4) NULL,
	[Qty_OH] [int] NOT NULL,
	[Price] [decimal](19, 4) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Part_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (1, N'Dylan', N'P.O. Box 214, 1135 Dolor Rd.', N'Madison', N'Wisconsin', N'31903', N'(019573) 77272', N'070 3055 5942')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (2, N'Scott', N'620-407 Non St.', N'Springdale', N'AR', N'72400', N'0800 471 0869', N'055 0034 2999')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (3, N'Rashad', N'P.O. Box 112, 1302 Eu St.', N'Bridgeport', N'CT', N'66234', N'070 1480 5016', N'0845 46 41')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (4, N'Hector', N'P.O. Box 549, 8179 Faucibus Ave', N'Reading', N'Pennsylvania', N'97394', N'056 8228 7059', N'(022) 8119 5319')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (5, N'Ahmed', N'P.O. Box 118, 5619 Nullam St.', N'Nampa', N'ID', N'90314', N'0800 1111', N'0845 46 41')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (6, N'Vernon', N'6084 Erat. Ave', N'Los Angeles', N'California', N'92616', N'07586 825393', N'0336 414 7884')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (7, N'Giacomo', N'Ap #612-887 Ac Av.', N'Little Rock', N'AR', N'72955', N'070 8016 3706', N'0800 1111')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (8, N'Ross', N'Ap #591-5719 Dui. Road', N'Portland', N'ME', N'33334', N'0800 1111', N'(01876) 38384')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (9, N'Noble', N'Ap #419-8457 Nulla Av.', N'Olympia', N'WA', N'19647', N'0800 1111', N'0855 239 9726')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (10, N'Quentin', N'P.O. Box 590, 5257 Ut, St.', N'Hartford', N'Connecticut', N'98423', N'(016977) 6290', N'0500 475512')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (11, N'Trevor', N'8018 Dui. St.', N'Knoxville', N'Tennessee', N'99541', N'(012177) 81611', N'076 2399 5707')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (12, N'Chancellor', N'Ap #704-2124 Arcu. Road', N'Helena', N'Montana', N'13763', N'070 7649 0640', N'0500 430603')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (13, N'Jonah', N'6213 Magna Avenue', N'Seattle', N'Washington', N'51593', N'0800 008 7591', N'0800 586390')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (14, N'Nathan', N'Ap #510-2425 Augue, St.', N'Indianapolis', N'Indiana', N'81950', N'0500 903156', N'(01064) 97462')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (15, N'Rigel', N'Ap #910-1204 Risus. Avenue', N'Fort Smith', N'AR', N'71636', N'(017827) 18012', N'0800 655750')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (16, N'Brennan', N'387-1458 Cras Ave', N'Boise', N'Idaho', N'75922', N'0800 557119', N'(01834) 818578')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (17, N'Kenneth', N'P.O. Box 632, 5986 Aliquam Ave', N'Sioux City', N'Iowa', N'67026', N'(0161) 113 1971', N'(010735) 66336')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (18, N'Odysseus', N'2394 Dolor. St.', N'Newark', N'Delaware', N'26879', N'0845 46 40', N'0862 601 1679')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (19, N'Blake', N'7022 Diam Ave', N'Burlington', N'VT', N'20612', N'0845 46 40', N'0839 836 6967')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (20, N'Lev', N'Ap #719-7632 Donec Ave', N'Jefferson City', N'Missouri', N'85043', N'0800 268 5287', N'056 0173 4907')
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Address], [City], [State], [Zip], [Phone], [Fax]) VALUES (21, N'Joe', N'Ap #534-6565 North Ave', N'Liverpool', N'Missouri', N'5454', N'0800 268 5287', N'056 0173 4907')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (1, 1, CAST(N'2017-12-20 01:47:27.000' AS DateTime), CAST(8.4300 AS Decimal(19, 4)), CAST(67.0600 AS Decimal(19, 4)), CAST(31.1100 AS Decimal(19, 4)), CAST(40003.5300 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (2, 2, CAST(N'2018-07-28 01:45:13.000' AS DateTime), CAST(53.9200 AS Decimal(19, 4)), CAST(79.5900 AS Decimal(19, 4)), CAST(19.8900 AS Decimal(19, 4)), CAST(91.9200 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (3, 3, CAST(N'2017-03-20 14:39:53.000' AS DateTime), CAST(27.4200 AS Decimal(19, 4)), CAST(97.1800 AS Decimal(19, 4)), CAST(74.0000 AS Decimal(19, 4)), CAST(80.3800 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (4, 4, CAST(N'2018-06-19 00:50:39.000' AS DateTime), CAST(7.4800 AS Decimal(19, 4)), CAST(7.8000 AS Decimal(19, 4)), CAST(85.7500 AS Decimal(19, 4)), CAST(7.9700 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (5, 5, CAST(N'2018-09-18 21:15:23.000' AS DateTime), CAST(36.8000 AS Decimal(19, 4)), CAST(53.1300 AS Decimal(19, 4)), CAST(5.8400 AS Decimal(19, 4)), CAST(59.6000 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (6, 6, CAST(N'2018-01-04 00:34:24.000' AS DateTime), CAST(96.0400 AS Decimal(19, 4)), CAST(31.9000 AS Decimal(19, 4)), CAST(41.8500 AS Decimal(19, 4)), CAST(30.3200 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (7, 7, CAST(N'2018-01-31 04:27:14.000' AS DateTime), CAST(44.2100 AS Decimal(19, 4)), CAST(61.4700 AS Decimal(19, 4)), CAST(11.4200 AS Decimal(19, 4)), CAST(31.6000 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (8, 8, CAST(N'2017-06-12 06:49:43.000' AS DateTime), CAST(59.9700 AS Decimal(19, 4)), CAST(51.6400 AS Decimal(19, 4)), CAST(33.8500 AS Decimal(19, 4)), CAST(78.7300 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (9, 9, CAST(N'2017-08-13 20:23:50.000' AS DateTime), CAST(43.2400 AS Decimal(19, 4)), CAST(75.5400 AS Decimal(19, 4)), CAST(96.9100 AS Decimal(19, 4)), CAST(35.7100 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (10, 10, CAST(N'2017-08-09 23:34:02.000' AS DateTime), CAST(51.0600 AS Decimal(19, 4)), CAST(48.9000 AS Decimal(19, 4)), CAST(5.3200 AS Decimal(19, 4)), CAST(88.1500 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (11, 11, CAST(N'2018-06-13 13:22:05.000' AS DateTime), CAST(61.2900 AS Decimal(19, 4)), CAST(22.6500 AS Decimal(19, 4)), CAST(51.0300 AS Decimal(19, 4)), CAST(51.2900 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (12, 12, CAST(N'2017-08-30 06:00:56.000' AS DateTime), CAST(14.2300 AS Decimal(19, 4)), CAST(50.5600 AS Decimal(19, 4)), CAST(74.7600 AS Decimal(19, 4)), CAST(94.1700 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (13, 13, CAST(N'2017-02-23 21:42:38.000' AS DateTime), CAST(70.3700 AS Decimal(19, 4)), CAST(65.6200 AS Decimal(19, 4)), CAST(1.7300 AS Decimal(19, 4)), CAST(71.8500 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (14, 14, CAST(N'2017-11-10 00:43:32.000' AS DateTime), CAST(15.1200 AS Decimal(19, 4)), CAST(41.6100 AS Decimal(19, 4)), CAST(18.0100 AS Decimal(19, 4)), CAST(17.0500 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (15, 15, CAST(N'2018-11-28 05:32:46.000' AS DateTime), CAST(93.3400 AS Decimal(19, 4)), CAST(91.1400 AS Decimal(19, 4)), CAST(94.5800 AS Decimal(19, 4)), CAST(33.6200 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (16, 16, CAST(N'2017-09-12 12:48:26.000' AS DateTime), CAST(95.7500 AS Decimal(19, 4)), CAST(62.2100 AS Decimal(19, 4)), CAST(91.3400 AS Decimal(19, 4)), CAST(79.6100 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (17, 17, CAST(N'2017-11-12 08:43:37.000' AS DateTime), CAST(10.2800 AS Decimal(19, 4)), CAST(84.1300 AS Decimal(19, 4)), CAST(90.7900 AS Decimal(19, 4)), CAST(90.0800 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (18, 18, CAST(N'2017-11-21 12:38:18.000' AS DateTime), CAST(39.4600 AS Decimal(19, 4)), CAST(47.9300 AS Decimal(19, 4)), CAST(90.4600 AS Decimal(19, 4)), CAST(34.2500 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (19, 19, CAST(N'2017-10-18 22:26:01.000' AS DateTime), CAST(75.1200 AS Decimal(19, 4)), CAST(2.4700 AS Decimal(19, 4)), CAST(99.1400 AS Decimal(19, 4)), CAST(2.8000 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (20, 20, CAST(N'2018-08-31 18:24:47.000' AS DateTime), CAST(35.7200 AS Decimal(19, 4)), CAST(98.0600 AS Decimal(19, 4)), CAST(46.0200 AS Decimal(19, 4)), CAST(48.4600 AS Decimal(19, 4)))
INSERT [dbo].[Invoice] ([Invoice_No], [Customer_ID], [Invoice_Date], [SubTotal], [Tax], [Shipping], [Total]) VALUES (21, 1, CAST(N'2018-08-31 18:24:47.000' AS DateTime), CAST(35.7200 AS Decimal(19, 4)), CAST(98.0600 AS Decimal(19, 4)), CAST(46.0200 AS Decimal(19, 4)), CAST(10020.9200 AS Decimal(19, 4)))
SET IDENTITY_INSERT [dbo].[Invoice] OFF
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (1, 1, 1, 46, CAST(80.2200 AS Decimal(19, 4)), CAST(52.1000 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (2, 2, 2, 39, CAST(22.7800 AS Decimal(19, 4)), CAST(50.3100 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (3, 3, 3, 19, CAST(50.5100 AS Decimal(19, 4)), CAST(82.1400 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (4, 4, 4, 71, CAST(55.0500 AS Decimal(19, 4)), CAST(38.8100 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (5, 5, 5, 90, CAST(57.6700 AS Decimal(19, 4)), CAST(20.2200 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (6, 6, 6, 10, CAST(85.4400 AS Decimal(19, 4)), CAST(84.2800 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (7, 7, 7, 5, CAST(45.0600 AS Decimal(19, 4)), CAST(48.8000 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (8, 8, 8, 58, CAST(84.3800 AS Decimal(19, 4)), CAST(46.8900 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (9, 9, 9, 96, CAST(10.8800 AS Decimal(19, 4)), CAST(58.2900 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (10, 10, 10, 83, CAST(73.9100 AS Decimal(19, 4)), CAST(52.8100 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (11, 11, 11, 38, CAST(43.6400 AS Decimal(19, 4)), CAST(84.0600 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (12, 12, 12, 26, CAST(90.1600 AS Decimal(19, 4)), CAST(81.6400 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (13, 13, 13, 29, CAST(7.8100 AS Decimal(19, 4)), CAST(4.4900 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (14, 14, 14, 71, CAST(70.9300 AS Decimal(19, 4)), CAST(71.8800 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (15, 15, 15, 71, CAST(2.6800 AS Decimal(19, 4)), CAST(33.1500 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (16, 16, 16, 88, CAST(87.0600 AS Decimal(19, 4)), CAST(78.9700 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (17, 17, 17, 72, CAST(70.7700 AS Decimal(19, 4)), CAST(1.8700 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (18, 18, 18, 53, CAST(63.8800 AS Decimal(19, 4)), CAST(60.0700 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (19, 19, 19, 18, CAST(57.9300 AS Decimal(19, 4)), CAST(62.6400 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (20, 20, 1234, 6, CAST(61.9700 AS Decimal(19, 4)), CAST(92.3700 AS Decimal(19, 4)))
INSERT [dbo].[LineItem] ([Invoice_No], [LineItem_No], [Part_No], [Qty], [Price], [Ext_Price]) VALUES (20, 21, 2345, 5, CAST(45.0600 AS Decimal(19, 4)), CAST(48.8000 AS Decimal(19, 4)))
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (1, N'Proin sed turpis nec mauris', CAST(43.3800 AS Decimal(19, 4)), 51, CAST(65.5300 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (2, N'eleifend, nunc risus varius orci,', CAST(66.2800 AS Decimal(19, 4)), 93, CAST(12.8100 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (4, N'placerat eget, venenatis a, magna.', CAST(95.7500 AS Decimal(19, 4)), 24, CAST(93.8200 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (5, N'eu lacus. Quisque imperdiet, erat', CAST(25.6900 AS Decimal(19, 4)), 33, CAST(40.8600 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (6, N'vel sapien imperdiet ornare. In', CAST(34.7300 AS Decimal(19, 4)), 32, CAST(54.9300 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (7, N'montes, nascetur ridiculus mus. Proin', CAST(92.8500 AS Decimal(19, 4)), 95, CAST(33.0800 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (8, N'ut, pharetra sed, hendrerit a,', CAST(65.3900 AS Decimal(19, 4)), 87, CAST(12.2800 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (9, N'massa. Quisque porttitor eros nec', CAST(56.2500 AS Decimal(19, 4)), 54, CAST(21.7300 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (10, N'rutrum non, hendrerit id, ante.', CAST(67.0700 AS Decimal(19, 4)), 72, CAST(49.5800 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (11, N'fringilla euismod enim. Etiam gravida', CAST(44.5200 AS Decimal(19, 4)), 29, CAST(33.3300 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (12, N'risus odio, auctor vitae, aliquet', CAST(92.9700 AS Decimal(19, 4)), 68, CAST(57.3500 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (13, N'eu tellus. Phasellus elit pede,', CAST(44.3700 AS Decimal(19, 4)), 33, CAST(44.7600 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (14, N'Ut sagittis lobortis mauris. Suspendisse', CAST(54.3200 AS Decimal(19, 4)), 86, CAST(84.5700 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (15, N'risus. Duis a mi fringilla', CAST(46.0400 AS Decimal(19, 4)), 94, CAST(69.9800 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (16, N'adipiscing fringilla, porttitor vulputate, posuere', CAST(24.7700 AS Decimal(19, 4)), 60, CAST(78.0800 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (17, N'luctus et ultrices posuere cubilia', CAST(84.9700 AS Decimal(19, 4)), 16, CAST(84.4200 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (18, N'vel pede blandit congue. In', CAST(17.5100 AS Decimal(19, 4)), 53, CAST(40.0900 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (19, N'et nunc. Quisque ornare tortor', CAST(59.5000 AS Decimal(19, 4)), 38, CAST(4.0900 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (20, N'diam dictum sapien. Aenean massa.', CAST(23.9300 AS Decimal(19, 4)), 73, CAST(45.9200 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (1234, N'diam dictum sapien. Aenean massa.', CAST(23.9300 AS Decimal(19, 4)), 73, CAST(45.9200 AS Decimal(19, 4)))
INSERT [dbo].[Product] ([Part_No], [Description], [Cost], [Qty_OH], [Price]) VALUES (2345, N'diam dictum sapien. Aenean massa.', CAST(23.9300 AS Decimal(19, 4)), 73, CAST(45.9200 AS Decimal(19, 4)))
SET IDENTITY_INSERT [dbo].[Product] OFF
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Customer]
GO

/****** Question 1: Strictly speaking, the Invoice table contains two fields it shouldn’t. Identify the unnecessary fields. ******/
--	Tax (can be normalized further)
--	Shipping (can be normalized further)

/****** Question 2: Write an SQL Statement to list all customers sorted by name. ******/
SELECT * FROM [dbo].Customer ORDER BY Name ASC;

/****** Question 3: Marketing wants to target certain customers for a direct mailing. 
		Write a query that lists all customers with the words “Little Rock” or “Bridgeport” in their city.
		Assume the database is not case-sensitive for string comparisons. ******/
SELECT * FROM [dbo].Customer WHERE City LIKE '%Little Rock%' OR City LIKE '%Bridgeport%';

/****** Question 4: Write an SQL statement that lists all invoices for customers located in CO,CA,AZ,MT,WY,WA,OR,ID, NM or UT,
		and the invoice date is within a specified date range known as TStart to TEnd. ******/
DECLARE @TStart datetime,
        @TEnd datetime
SET @TStart = '2017-08-13 20:23:50.000'
SET @TEnd = '2018-09-18 21:15:23.000';

SELECT *
FROM [dbo].Customer c
INNER JOIN [dbo].Invoice i
  ON c.Customer_ID = i.Customer_ID
WHERE State IN ('CO', 'CA', 'AZ', 'MT', 'WY', 'WA', 'OR', 'ID', 'NM', 'UT')
AND i.Invoice_Date BETWEEN @TStart AND @TEnd;

/****** Question 5: Write an SQL Statement to list the following items: Customer ID, Customer Name, number of invoices, sum of total for invoices.
		Ensure that all customers are returned in the result set. ******/
SELECT
  c.Customer_ID,
  c.Name,
  COUNT(i.Invoice_No) AS NumberOfInvoices,
  SUM(i.Total) AS SumOfInvoices
FROM [dbo].Customer c
LEFT JOIN [dbo].Invoice i
  ON c.Customer_ID = i.Customer_ID
GROUP BY c.Customer_ID, c.Name;

/****** Question 6: Write an SQL Statement to list the following items:
		Customer ID, Customer Name, Number of invoices, sum of total for invoices for all customers with more than $50,000 in total sales. ******/
WITH CTE AS
  (SELECT t1.*
   FROM
     (SELECT c.Customer_ID, c.Name,
             COUNT(i.Invoice_No) AS NumberOfInvoices,
             SUM(i.Total) AS SumOfInvoices
      FROM [dbo].Customer c
      LEFT JOIN [dbo].Invoice i ON c.Customer_ID = i.Customer_ID
      GROUP BY c.Customer_ID, c.Name) t1)
SELECT *
FROM CTE
WHERE SumOfInvoices > 50000;

/****** Question 7: Referential integrity constraints were accidentally destroyed for the relationship between the LineItem table and the Product table;
		as a result, parts were deleted from the product table that should not have been.
		Write a query that will list the distinct part numbers in the LineItem table that have no corresponding entry in the Product table. ******/
SELECT li.LineItem_No, li.Part_No
FROM [dbo].LineItem li
WHERE NOT EXISTS
(
	SELECT NULL
	FROM [dbo].Product p
	WHERE p.Part_No = li.Part_No
);

/****** Question 8: Research has determined that when product 1234 and 2345 are shipped together, product 2345 loses its potency.
		Write an SQL statement that lists all invoices that have both part numbers on the same invoice. ******/
SELECT i.Invoice_No FROM [dbo].Invoice i
INNER JOIN [dbo].LineItem li ON i.Invoice_No = li.Invoice_No
LEFT JOIN [dbo].Product p ON li.Part_No = p.Part_No
WHERE p.Part_No IN (2345, 1234)
GROUP BY i.Invoice_No
HAVING COUNT(*) > 1;

/****** Question 9: Because of poor data entry policies there are a lot of duplicate customers in the database.
		Write a query that will list all customers where there exists another customer with the same phone number. 
		Displayed fields should be: Customer Name, City, State, Phone, DupeCustomer Name, DupeCustomer City, DupeCustomer State, DupeCustomer Phone. ******/

-- create CTE to find duplicate telephone numbers
;WITH CTE_duplicateTelephone
AS (SELECT
  c.Name, c.City, c.State, c.Phone
FROM [dbo].Customer c
WHERE c.Phone IN (SELECT
  Phone
FROM [dbo].Customer
GROUP BY Phone
HAVING COUNT(*) > 1))
-- insert CTE records into temporary table
SELECT
  Name, City, State,Phone
INTO #Temp_Customer
FROM CTE_duplicateTelephone

SELECT
  t1.Name, t1.City, t1.State, t1.Phone,
  t2.Name AS DupeCustomerName, t2.City AS DupeCustomerCity, t2.State AS DupeCustomerState,t2.Phone AS DupeCustomerPhone
FROM #Temp_Customer t1
INNER JOIN (SELECT *
FROM #Temp_Customer) AS t2
  ON t1.Phone = t2.Phone
WHERE t1.Name <> t2.Name
ORDER BY t1.Name;

-- drop temporary table
IF (OBJECT_ID('tempdb..#Temp_Customer') IS NOT NULL)
BEGIN
  DROP TABLE dbo.#Temp_Customer
END