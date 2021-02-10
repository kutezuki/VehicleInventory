USE [master]
GO
/****** Object:  Database [vehicleinventoryapp]    Script Date: 10/02/2021 7:29:33 pm ******/
CREATE DATABASE [vehicleinventoryapp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'vehicleinventoryapp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\vehicleinventoryapp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'vehicleinventoryapp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\vehicleinventoryapp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [vehicleinventoryapp] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [vehicleinventoryapp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [vehicleinventoryapp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET ARITHABORT OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [vehicleinventoryapp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [vehicleinventoryapp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [vehicleinventoryapp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [vehicleinventoryapp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET RECOVERY FULL 
GO
ALTER DATABASE [vehicleinventoryapp] SET  MULTI_USER 
GO
ALTER DATABASE [vehicleinventoryapp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [vehicleinventoryapp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [vehicleinventoryapp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [vehicleinventoryapp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [vehicleinventoryapp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [vehicleinventoryapp] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'vehicleinventoryapp', N'ON'
GO
ALTER DATABASE [vehicleinventoryapp] SET QUERY_STORE = OFF
GO
USE [vehicleinventoryapp]
GO
/****** Object:  Table [dbo].[vehicleinventory]    Script Date: 10/02/2021 7:29:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehicleinventory](
	[vehicleid] [int] IDENTITY(1,1) NOT NULL,
	[Make] [varchar](50) NULL,
	[Model] [varchar](50) NULL,
	[Year] [int] NULL,
	[VIN] [varchar](50) NULL,
 CONSTRAINT [PK_vehicleinventory] PRIMARY KEY CLUSTERED 
(
	[vehicleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [vehicleinventoryapp] SET  READ_WRITE 
GO
