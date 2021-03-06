USE [master]
GO
/****** Object:  Database [TanveerSchoolSystem]    Script Date: 25-03-2020 09:27:54 PM ******/
CREATE DATABASE [TanveerSchoolSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TanveerSchoolSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TanveerSchoolSystem.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TanveerSchoolSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TanveerSchoolSystem_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TanveerSchoolSystem] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TanveerSchoolSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TanveerSchoolSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TanveerSchoolSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TanveerSchoolSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TanveerSchoolSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TanveerSchoolSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TanveerSchoolSystem] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TanveerSchoolSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TanveerSchoolSystem] SET  MULTI_USER 
GO
ALTER DATABASE [TanveerSchoolSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TanveerSchoolSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TanveerSchoolSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TanveerSchoolSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TanveerSchoolSystem] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TanveerSchoolSystem]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25-03-2020 09:27:55 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Courses]    Script Date: 25-03-2020 09:27:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departments]    Script Date: 25-03-2020 09:27:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HeadName] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentEnrollments]    Script Date: 25-03-2020 09:27:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentEnrollments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NULL,
	[EnrollmentDate] [datetime2](7) NULL,
	[EnrollmentId] [int] NULL,
	[StudentId] [int] NULL,
 CONSTRAINT [PK_StudentEnrollments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 25-03-2020 09:27:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[StudentCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200324180052_Init', N'2.0.3-rtm-10026')
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

GO
INSERT [dbo].[Courses] ([Id], [DepartmentId], [Name]) VALUES (1, 1, N'Kamal')
GO
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

GO
INSERT [dbo].[Departments] ([Id], [HeadName], [Name]) VALUES (1, N'Abc', N'Gsp1')
GO
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
/****** Object:  Index [IX_Courses_DepartmentId]    Script Date: 25-03-2020 09:27:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Courses_DepartmentId] ON [dbo].[Courses]
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StudentEnrollments_CourseId]    Script Date: 25-03-2020 09:27:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_StudentEnrollments_CourseId] ON [dbo].[StudentEnrollments]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StudentEnrollments_StudentId]    Script Date: 25-03-2020 09:27:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_StudentEnrollments_StudentId] ON [dbo].[StudentEnrollments]
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Departments_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Departments_DepartmentId]
GO
ALTER TABLE [dbo].[StudentEnrollments]  WITH CHECK ADD  CONSTRAINT [FK_StudentEnrollments_Courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[StudentEnrollments] CHECK CONSTRAINT [FK_StudentEnrollments_Courses_CourseId]
GO
ALTER TABLE [dbo].[StudentEnrollments]  WITH CHECK ADD  CONSTRAINT [FK_StudentEnrollments_Students_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[StudentEnrollments] CHECK CONSTRAINT [FK_StudentEnrollments_Students_StudentId]
GO
USE [master]
GO
ALTER DATABASE [TanveerSchoolSystem] SET  READ_WRITE 
GO
