USE [master]
GO
/****** Object:  Database [coderhouse]    Script Date: 05/02/2024 10:45:27 ******/
CREATE DATABASE [coderhouse]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'coderhouse', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\coderhouse.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'coderhouse_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\coderhouse_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [coderhouse] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [coderhouse].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [coderhouse] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [coderhouse] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [coderhouse] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [coderhouse] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [coderhouse] SET ARITHABORT OFF 
GO
ALTER DATABASE [coderhouse] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [coderhouse] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [coderhouse] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [coderhouse] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [coderhouse] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [coderhouse] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [coderhouse] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [coderhouse] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [coderhouse] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [coderhouse] SET  ENABLE_BROKER 
GO
ALTER DATABASE [coderhouse] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [coderhouse] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [coderhouse] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [coderhouse] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [coderhouse] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [coderhouse] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [coderhouse] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [coderhouse] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [coderhouse] SET  MULTI_USER 
GO
ALTER DATABASE [coderhouse] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [coderhouse] SET DB_CHAINING OFF 
GO
ALTER DATABASE [coderhouse] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [coderhouse] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [coderhouse] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [coderhouse] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [coderhouse] SET QUERY_STORE = ON
GO
ALTER DATABASE [coderhouse] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [coderhouse]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 05/02/2024 10:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 05/02/2024 10:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[Costo] [float] NOT NULL,
	[PrecioVenta] [float] NOT NULL,
	[Stock] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240203023511_Migracion1', N'6.0.26')
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (2, N'Beef - Top Sirloin - Aaa', 7808, 1921, 97, 1)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (3, N'Rabbit - Whole', 9997, 8603, 44, 2)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (4, N'Southern Comfort', 9608, 3432, 37, 3)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (5, N'Lamb - Loin Chops', 5785, 1870, 67, 4)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (6, N'Brandy - Orange, Mc Guiness', 5329, 8385, 17, 5)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (7, N'Mix - Cocktail Strawberry Daiquiri', 8356, 5707, 93, 6)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (8, N'Cup Translucent 9 Oz', 7248, 2123, 57, 7)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (9, N'Soupcontfoam16oz 116con', 2656, 6464, 71, 8)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (10, N'Butter - Unsalted', 8875, 6775, 1, 9)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (11, N'Plastic Arrow Stir Stick', 2403, 9942, 59, 10)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (12, N'Sprouts - Corn', 2912, 5929, 95, 11)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (13, N'Cleaner - Lime Away', 2757, 3172, 39, 12)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (14, N'Sauce - Oyster', 8494, 3465, 97, 13)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (15, N'Muffin Mix - Carrot', 801, 7961, 50, 14)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (16, N'Vinegar - Balsamic', 1028, 14, 82, 15)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (17, N'Beer - Sleemans Honey Brown', 6934, 3021, 38, 16)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (18, N'Soup Campbells Mexicali Tortilla', 8256, 9069, 68, 17)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (19, N'Wine - Blue Nun Qualitatswein', 7993, 5596, 24, 18)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (20, N'Bag - Clear 7 Lb', 5307, 7369, 24, 19)
INSERT [dbo].[Productos] ([Id], [Descripcion], [Costo], [PrecioVenta], [Stock], [IdUsuario]) VALUES (21, N'Cape Capensis - Fillet', 1496, 478, 38, 20)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
USE [master]
GO
ALTER DATABASE [coderhouse] SET  READ_WRITE 
GO
