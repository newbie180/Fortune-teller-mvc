USE [master]
GO
/****** Object:  Database [FortunetellerMVC]    Script Date: 9/15/2016 8:42:28 PM ******/
CREATE DATABASE [FortunetellerMVC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FortunetellerMVC', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\FortunetellerMVC.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FortunetellerMVC_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\FortunetellerMVC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FortunetellerMVC] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FortunetellerMVC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FortunetellerMVC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET ARITHABORT OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FortunetellerMVC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FortunetellerMVC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FortunetellerMVC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FortunetellerMVC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FortunetellerMVC] SET  MULTI_USER 
GO
ALTER DATABASE [FortunetellerMVC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FortunetellerMVC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FortunetellerMVC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FortunetellerMVC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FortunetellerMVC] SET DELAYED_DURABILITY = DISABLED 
GO
USE [FortunetellerMVC]
GO
/****** Object:  Table [dbo].[BirthMonths]    Script Date: 9/15/2016 8:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BirthMonths](
	[BirthMonthID] [int] IDENTITY(1,1) NOT NULL,
	[MonthName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_BirthMonths] PRIMARY KEY CLUSTERED 
(
	[BirthMonthID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Colors]    Script Date: 9/15/2016 8:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 9/15/2016 8:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[BirthMonthID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[SiblingID] [int] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Siblings]    Script Date: 9/15/2016 8:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siblings](
	[SiblingID] [int] IDENTITY(1,1) NOT NULL,
	[SibNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Siblings] PRIMARY KEY CLUSTERED 
(
	[SiblingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BirthMonths] ON 

INSERT [dbo].[BirthMonths] ([BirthMonthID], [MonthName]) VALUES (1, N'January')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [MonthName]) VALUES (2, N'February')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [MonthName]) VALUES (3, N'March')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [MonthName]) VALUES (4, N'April')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [MonthName]) VALUES (5, N'May')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [MonthName]) VALUES (6, N'June')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [MonthName]) VALUES (7, N'July')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [MonthName]) VALUES (8, N'August')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [MonthName]) VALUES (9, N'September')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [MonthName]) VALUES (10, N'October')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [MonthName]) VALUES (11, N'November')
INSERT [dbo].[BirthMonths] ([BirthMonthID], [MonthName]) VALUES (12, N'December')
SET IDENTITY_INSERT [dbo].[BirthMonths] OFF
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (1, N'Red')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (2, N'Orange')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (3, N'Yellow')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (4, N'Green')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (5, N'Blue')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (6, N'Indigo')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (7, N'Violet')
SET IDENTITY_INSERT [dbo].[Colors] OFF
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Age], [BirthMonthID], [ColorID], [SiblingID]) VALUES (1, N'James', N'Baxter', 25, 1, 1, 1)
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Age], [BirthMonthID], [ColorID], [SiblingID]) VALUES (2, N'Hungry', N'Hippo', 12, 6, 7, 3)
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Age], [BirthMonthID], [ColorID], [SiblingID]) VALUES (3, N'Molly', N'Ringwald', 32, 10, 5, 3)
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET IDENTITY_INSERT [dbo].[Siblings] ON 

INSERT [dbo].[Siblings] ([SiblingID], [SibNumber]) VALUES (1, N'0')
INSERT [dbo].[Siblings] ([SiblingID], [SibNumber]) VALUES (2, N'1')
INSERT [dbo].[Siblings] ([SiblingID], [SibNumber]) VALUES (3, N'2')
INSERT [dbo].[Siblings] ([SiblingID], [SibNumber]) VALUES (4, N'3+')
SET IDENTITY_INSERT [dbo].[Siblings] OFF
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_BirthMonths] FOREIGN KEY([BirthMonthID])
REFERENCES [dbo].[BirthMonths] ([BirthMonthID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_BirthMonths]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Colors]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Siblings] FOREIGN KEY([SiblingID])
REFERENCES [dbo].[Siblings] ([SiblingID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Siblings]
GO
USE [master]
GO
ALTER DATABASE [FortunetellerMVC] SET  READ_WRITE 
GO
