USE [master]
GO
/****** Object:  Database [RivkiHool&MichalProber]    Script Date: 14/06/2021 19:58:42 ******/
CREATE DATABASE [RivkiHool&MichalProber]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RivkiHool&MichalProber', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\RivkiHool&MichalProber.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RivkiHool&MichalProber_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\RivkiHool&MichalProber_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [RivkiHool&MichalProber] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RivkiHool&MichalProber].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RivkiHool&MichalProber] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET ARITHABORT OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET RECOVERY FULL 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET  MULTI_USER 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RivkiHool&MichalProber] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RivkiHool&MichalProber] SET QUERY_STORE = OFF
GO
USE [RivkiHool&MichalProber]
GO
/****** Object:  Table [dbo].[Constraints]    Script Date: 14/06/2021 19:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Constraints](
	[constraintId] [int] IDENTITY(1,1) NOT NULL,
	[employeeInInstitutionId] [int] NULL,
	[year] [datetime] NULL,
	[month] [datetime] NULL,
	[day] [datetime] NULL,
	[shiftNum] [int] NULL,
 CONSTRAINT [PK_Constraints] PRIMARY KEY CLUSTERED 
(
	[constraintId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dialogue]    Script Date: 14/06/2021 19:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dialogue](
	[dialogueId] [int] IDENTITY(1,1) NOT NULL,
	[employeeInInstitutionId] [int] NULL,
	[status] [nvarchar](50) NULL,
	[text] [nvarchar](max) NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_Dialogue] PRIMARY KEY CLUSTERED 
(
	[dialogueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeDetails]    Script Date: 14/06/2021 19:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeDetails](
	[employeeId] [int] IDENTITY(1,1) NOT NULL,
	[employeeFirstName] [nvarchar](50) NULL,
	[employeeLastName] [nvarchar](50) NULL,
	[employeeAddress] [nvarchar](50) NULL,
	[employeePhone] [nvarchar](50) NULL,
	[employeeEmail] [nvarchar](50) NULL,
	[employeePassword] [nvarchar](50) NULL,
 CONSTRAINT [PK_EmployeeDetails] PRIMARY KEY CLUSTERED 
(
	[employeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeInInstitution]    Script Date: 14/06/2021 19:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeInInstitution](
	[employeeInInstitutionId] [int] IDENTITY(1,1) NOT NULL,
	[employeerId] [int] NULL,
	[institutionId] [int] NULL,
	[fieldOfWorkId] [int] NULL,
	[status] [nvarchar](20) NULL,
	[shiftType] [nvarchar](20) NULL,
 CONSTRAINT [PK_WorkerInInstitution] PRIMARY KEY CLUSTERED 
(
	[employeeInInstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeLimit]    Script Date: 14/06/2021 19:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeLimit](
	[restrictionId] [int] IDENTITY(1,1) NOT NULL,
	[employeeInInstitutionId] [int] NULL,
	[date] [datetime] NULL,
	[shiftInInstitutionId] [int] NULL,
	[substituteEmployeeId] [int] NULL,
 CONSTRAINT [PK_EmployeeLimit] PRIMARY KEY CLUSTERED 
(
	[restrictionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeSchedule]    Script Date: 14/06/2021 19:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSchedule](
	[employeeScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[employeeInInstitutionId] [int] NULL,
	[year] [datetime] NULL,
	[month] [datetime] NULL,
	[day] [datetime] NULL,
	[Shift1] [int] NULL,
	[Shift2] [int] NULL,
	[Shift3] [int] NULL,
	[Shift4] [int] NULL,
	[Shift5] [int] NULL,
 CONSTRAINT [PK_EmployeeSchedule] PRIMARY KEY CLUSTERED 
(
	[employeeScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldOfWorkInInstitution]    Script Date: 14/06/2021 19:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldOfWorkInInstitution](
	[fieldOfWorkId] [int] IDENTITY(1,1) NOT NULL,
	[institutionId] [int] NULL,
	[fieldOfWorkName] [nvarchar](50) NULL,
	[numOfFullTimeShift] [int] NULL,
	[numOfPartTimeShift] [int] NULL,
	[numOfEmployeesInWeeklyShift] [int] NULL,
 CONSTRAINT [PK_FieldOfWorkInInstitution] PRIMARY KEY CLUSTERED 
(
	[fieldOfWorkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InstitutionDtails]    Script Date: 14/06/2021 19:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstitutionDtails](
	[institutionId] [int] IDENTITY(1,1) NOT NULL,
	[institutionName] [nvarchar](100) NULL,
	[institutionAddress] [nvarchar](100) NULL,
	[institutionEmail] [nvarchar](100) NULL,
	[institutionPhone] [nvarchar](100) NULL,
	[institutionManagerId] [int] NULL,
	[numOfShift] [int] NULL,
 CONSTRAINT [PK_InstitutionDtails] PRIMARY KEY CLUSTERED 
(
	[institutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShiftInstitution]    Script Date: 14/06/2021 19:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShiftInstitution](
	[shiftInstitutionId] [int] IDENTITY(1,1) NOT NULL,
	[institutionId] [int] NULL,
	[shiftNum] [int] NULL,
	[shiftDescription] [nvarchar](100) NULL,
	[startTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
 CONSTRAINT [PK_ShiftInstitution] PRIMARY KEY CLUSTERED 
(
	[shiftInstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EmployeeDetails] ON 

INSERT [dbo].[EmployeeDetails] ([employeeId], [employeeFirstName], [employeeLastName], [employeeAddress], [employeePhone], [employeeEmail], [employeePassword]) VALUES (1, N'Michal ', N'Prober', N'Chazon Hish', N'0533114285', N'michalProber@gmail.com', N'123456')
INSERT [dbo].[EmployeeDetails] ([employeeId], [employeeFirstName], [employeeLastName], [employeeAddress], [employeePhone], [employeeEmail], [employeePassword]) VALUES (2, N'Rivki ', N'Hool', N'Maymon', N'0556769159', N'rivkihool@gmail.com', N'222222')
SET IDENTITY_INSERT [dbo].[EmployeeDetails] OFF
ALTER TABLE [dbo].[Constraints]  WITH CHECK ADD  CONSTRAINT [FK_Constraints_EmployeeInInstitution] FOREIGN KEY([employeeInInstitutionId])
REFERENCES [dbo].[EmployeeInInstitution] ([employeeInInstitutionId])
GO
ALTER TABLE [dbo].[Constraints] CHECK CONSTRAINT [FK_Constraints_EmployeeInInstitution]
GO
ALTER TABLE [dbo].[Dialogue]  WITH CHECK ADD  CONSTRAINT [FK_Dialogue_EmployeeInInstitution] FOREIGN KEY([employeeInInstitutionId])
REFERENCES [dbo].[EmployeeInInstitution] ([employeeInInstitutionId])
GO
ALTER TABLE [dbo].[Dialogue] CHECK CONSTRAINT [FK_Dialogue_EmployeeInInstitution]
GO
ALTER TABLE [dbo].[EmployeeInInstitution]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeInInstitution_EmployeeDetails] FOREIGN KEY([employeerId])
REFERENCES [dbo].[EmployeeDetails] ([employeeId])
GO
ALTER TABLE [dbo].[EmployeeInInstitution] CHECK CONSTRAINT [FK_EmployeeInInstitution_EmployeeDetails]
GO
ALTER TABLE [dbo].[EmployeeInInstitution]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeInInstitution_FieldOfWorkInInstitution] FOREIGN KEY([fieldOfWorkId])
REFERENCES [dbo].[FieldOfWorkInInstitution] ([fieldOfWorkId])
GO
ALTER TABLE [dbo].[EmployeeInInstitution] CHECK CONSTRAINT [FK_EmployeeInInstitution_FieldOfWorkInInstitution]
GO
ALTER TABLE [dbo].[EmployeeInInstitution]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeInInstitution_InstitutionDtails] FOREIGN KEY([institutionId])
REFERENCES [dbo].[InstitutionDtails] ([institutionId])
GO
ALTER TABLE [dbo].[EmployeeInInstitution] CHECK CONSTRAINT [FK_EmployeeInInstitution_InstitutionDtails]
GO
ALTER TABLE [dbo].[EmployeeLimit]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeLimit_EmployeeInInstitution] FOREIGN KEY([employeeInInstitutionId])
REFERENCES [dbo].[EmployeeInInstitution] ([employeeInInstitutionId])
GO
ALTER TABLE [dbo].[EmployeeLimit] CHECK CONSTRAINT [FK_EmployeeLimit_EmployeeInInstitution]
GO
ALTER TABLE [dbo].[EmployeeLimit]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeLimit_EmployeeInInstitution1] FOREIGN KEY([substituteEmployeeId])
REFERENCES [dbo].[EmployeeInInstitution] ([employeeInInstitutionId])
GO
ALTER TABLE [dbo].[EmployeeLimit] CHECK CONSTRAINT [FK_EmployeeLimit_EmployeeInInstitution1]
GO
ALTER TABLE [dbo].[EmployeeLimit]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeLimit_ShiftInstitution] FOREIGN KEY([shiftInInstitutionId])
REFERENCES [dbo].[ShiftInstitution] ([shiftInstitutionId])
GO
ALTER TABLE [dbo].[EmployeeLimit] CHECK CONSTRAINT [FK_EmployeeLimit_ShiftInstitution]
GO
ALTER TABLE [dbo].[EmployeeSchedule]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeSchedule_EmployeeInInstitution] FOREIGN KEY([employeeInInstitutionId])
REFERENCES [dbo].[EmployeeInInstitution] ([employeeInInstitutionId])
GO
ALTER TABLE [dbo].[EmployeeSchedule] CHECK CONSTRAINT [FK_EmployeeSchedule_EmployeeInInstitution]
GO
ALTER TABLE [dbo].[FieldOfWorkInInstitution]  WITH CHECK ADD  CONSTRAINT [FK_FieldOfWorkInInstitution_InstitutionDtails] FOREIGN KEY([institutionId])
REFERENCES [dbo].[InstitutionDtails] ([institutionId])
GO
ALTER TABLE [dbo].[FieldOfWorkInInstitution] CHECK CONSTRAINT [FK_FieldOfWorkInInstitution_InstitutionDtails]
GO
ALTER TABLE [dbo].[InstitutionDtails]  WITH CHECK ADD  CONSTRAINT [FK_InstitutionDtails_EmployeeDetails] FOREIGN KEY([institutionManagerId])
REFERENCES [dbo].[EmployeeDetails] ([employeeId])
GO
ALTER TABLE [dbo].[InstitutionDtails] CHECK CONSTRAINT [FK_InstitutionDtails_EmployeeDetails]
GO
ALTER TABLE [dbo].[ShiftInstitution]  WITH CHECK ADD  CONSTRAINT [FK_ShiftInstitution_InstitutionDtails] FOREIGN KEY([institutionId])
REFERENCES [dbo].[InstitutionDtails] ([institutionId])
GO
ALTER TABLE [dbo].[ShiftInstitution] CHECK CONSTRAINT [FK_ShiftInstitution_InstitutionDtails]
GO
USE [master]
GO
ALTER DATABASE [RivkiHool&MichalProber] SET  READ_WRITE 
GO
