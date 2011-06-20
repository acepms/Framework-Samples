USE [master]
GO

/****** Object:  Database [PetShop]    Script Date: 06/20/2011 13:17:17 ******/
CREATE DATABASE [PetShop] ON  PRIMARY 
( NAME = N'PetShop', FILENAME = N'C:\Users\Tom\Documents\CodeSmith Generator\Samples\v5.3\Data\PetShop.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PetShop_log', FILENAME = N'C:\Users\Tom\Documents\CodeSmith Generator\Samples\v5.3\Data\PetShop_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [PetShop] SET COMPATIBILITY_LEVEL = 90
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PetShop].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO

ALTER DATABASE [PetShop] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [PetShop] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [PetShop] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [PetShop] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [PetShop] SET ARITHABORT OFF 
GO

ALTER DATABASE [PetShop] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [PetShop] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [PetShop] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [PetShop] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [PetShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [PetShop] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [PetShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [PetShop] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [PetShop] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [PetShop] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [PetShop] SET  DISABLE_BROKER 
GO

ALTER DATABASE [PetShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [PetShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [PetShop] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [PetShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [PetShop] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [PetShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [PetShop] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [PetShop] SET  READ_WRITE 
GO

ALTER DATABASE [PetShop] SET RECOVERY FULL 
GO

ALTER DATABASE [PetShop] SET  MULTI_USER 
GO

ALTER DATABASE [PetShop] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [PetShop] SET DB_CHAINING OFF 
GO

