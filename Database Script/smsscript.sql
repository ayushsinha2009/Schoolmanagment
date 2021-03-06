USE [SMSDB]
GO
/****** Object:  Table [dbo].[City]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[City_ID] [int] NULL,
	[CityName] [varchar](50) NULL,
	[State_ID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[State]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[State](
	[State_ID] [int] NULL,
	[State_Name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAllotment]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAllotment](
	[AllotmentId] [int] IDENTITY(1,1) NOT NULL,
	[teacherid] [int] NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[SubId] [int] NULL,
	[Createdby] [varchar](10) NULL,
	[Createdon] [varchar](max) NULL,
	[Updatedon] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[AllotmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblClassMaster]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblClassMaster](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](30) NULL,
	[description] [varchar](30) NULL,
	[Createdby] [varchar](30) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblClassPromotion]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblClassPromotion](
	[PromotionId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[promotedClassId] [int] NULL,
	[promotedSectionId] [int] NULL,
	[IsPromoted] [varchar](15) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblClassTeacher]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblClassTeacher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[teacherid] [int] NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[IsClassteacher] [varchar](5) NULL,
	[Createdby] [varchar](10) NULL,
	[Createdon] [varchar](30) NULL,
	[Userid] [int] NULL,
	[Updatedon] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGenerateStaffSalary]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGenerateStaffSalary](
	[SalaryId] [int] IDENTITY(1,1) NOT NULL,
	[staffid] [int] NULL,
	[SalaryDate] [varchar](20) NULL,
	[StaffMonth] [varchar](20) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[SalaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGenerateteacherSalary]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGenerateteacherSalary](
	[SalaryId] [int] IDENTITY(1,1) NOT NULL,
	[teacherid] [int] NULL,
	[SalaryDate] [varchar](20) NULL,
	[StaffMonth] [varchar](20) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[SalaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMarksObtained]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMarksObtained](
	[ObtId] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[SubId] [int] NULL,
	[StudentId] [int] NULL,
	[teacherid] [int] NULL,
	[ExamType] [varchar](15) NULL,
	[MarksObt] [int] NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](50) NULL,
	[Updatedon] [varchar](50) NULL,
 CONSTRAINT [PK__tblMarks__4D03EDB3AEE10084] PRIMARY KEY CLUSTERED 
(
	[ObtId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblOptionalSubject]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOptionalSubject](
	[OptionalId] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[SubjectId] [int] NULL,
	[SubId] [int] NULL,
	[teacherid] [int] NULL,
	[StudentId] [int] NULL,
	[StudentAlloted] [varchar](5) NULL,
	[Createdby] [varchar](20) NULL,
	[Userid] [int] NULL,
	[Createdon] [varchar](50) NULL,
	[Updatedon] [varchar](50) NULL,
 CONSTRAINT [PK__tblOptio__7735FFCC9CE3BC04] PRIMARY KEY CLUSTERED 
(
	[OptionalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblroutemaster]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblroutemaster](
	[routeid] [int] IDENTITY(1,1) NOT NULL,
	[VehicleId] [int] NULL,
	[VehicleNo] [varchar](20) NULL,
	[RouteFrom] [varchar](20) NULL,
	[RouteTo] [varchar](20) NULL,
	[Createdby] [varchar](30) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
 CONSTRAINT [PK__tblroute__BAC138DFF09DB5D3] PRIMARY KEY CLUSTERED 
(
	[routeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblScholDailyExpenses]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblScholDailyExpenses](
	[ExpenseId] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](20) NULL,
	[ExpnseInRs] [decimal](18, 2) NULL,
	[Expensedesc] [varchar](200) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
 CONSTRAINT [PK__tblSchol__1445CFD39F739622] PRIMARY KEY CLUSTERED 
(
	[ExpenseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSchoolManagementCurriculumn]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSchoolManagementCurriculumn](
	[CurriculumnId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [varchar](20) NULL,
	[Topic] [varchar](20) NULL,
	[Curriculumndesc] [varchar](max) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CurriculumnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSchoolManagementNotice]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSchoolManagementNotice](
	[NoticeId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [varchar](20) NULL,
	[Topic] [varchar](20) NULL,
	[Noticedesc] [varchar](max) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[NoticeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSchoolUserDetails]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSchoolUserDetails](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolName] [varchar](50) NULL,
	[BranchName] [varchar](50) NULL,
	[Address] [varchar](200) NULL,
	[Contact] [varchar](20) NULL,
	[Mobile] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[username] [varchar](20) NULL,
	[pwd] [varchar](20) NULL,
	[Createdby] [varchar](20) NULL,
	[Createdon] [varchar](50) NULL,
 CONSTRAINT [PK__tblSchoo__1788CC4C46345216] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSectionMaster]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSectionMaster](
	[SectionId] [int] IDENTITY(1,1) NOT NULL,
	[SectionName] [varchar](30) NULL,
	[description] [varchar](30) NULL,
	[Createdby] [varchar](30) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[SectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblShifts]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblShifts](
	[ShiftId] [int] IDENTITY(1,1) NOT NULL,
	[ShiftName] [varchar](20) NULL,
	[WprkingTimeStart] [varchar](20) NULL,
	[WorkingTimeEnd] [varchar](20) NULL,
	[WorkinghHrs] [varchar](20) NULL,
	[WorkingDays] [int] NULL,
	[Createdby] [varchar](10) NULL,
	[Userid] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
 CONSTRAINT [PK__tblShift__C0A83881E182013D] PRIMARY KEY CLUSTERED 
(
	[ShiftId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStaff]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStaff](
	[Staffid] [int] IDENTITY(1,1) NOT NULL,
	[Salutation] [varchar](10) NULL,
	[StaffFirstName] [varchar](30) NULL,
	[StaffMiddleName] [varchar](30) NULL,
	[StaffLastName] [varchar](30) NULL,
	[Gender] [varchar](30) NULL,
	[DOB] [varchar](20) NULL,
	[StaffAddress] [varchar](200) NULL,
	[StaffState] [varchar](30) NULL,
	[StaffCity] [varchar](30) NULL,
	[Pincode] [varchar](10) NULL,
	[StaffCountry] [varchar](30) NULL,
	[StaffContactNo] [varchar](30) NULL,
	[StaffMobileNo] [varchar](30) NULL,
	[StaffAadharcardNo] [varchar](30) NULL,
	[StaffPhoto] [varchar](30) NULL,
	[StaffDescription] [varchar](max) NULL,
	[TotalWorkinghrs] [varchar](10) NULL,
	[StaffType] [varchar](20) NULL,
	[employeecode] [varchar](50) NULL,
	[username] [varchar](10) NULL,
	[pwd] [varchar](10) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
 CONSTRAINT [PK__tblStaff__962D8FBFF1CCAC1D] PRIMARY KEY CLUSTERED 
(
	[Staffid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStaffAttendance]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStaffAttendance](
	[StaffAttendanceId] [int] IDENTITY(1,1) NOT NULL,
	[Staffid] [int] NULL,
	[Date] [varchar](20) NULL,
	[Month] [varchar](20) NULL,
	[Day] [varchar](20) NULL,
	[Timein] [varchar](20) NULL,
	[Tmeout] [varchar](20) NULL,
	[TotalWorkingHours] [varchar](20) NULL,
	[StaffPresent_Absent] [varchar](20) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
 CONSTRAINT [PK__tblStaff__BAC16C2324B37651] PRIMARY KEY CLUSTERED 
(
	[StaffAttendanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStaffJoiningDetails]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStaffJoiningDetails](
	[JoiningId] [int] IDENTITY(1,1) NOT NULL,
	[SMId] [int] NULL,
	[Staffid] [int] NULL,
	[Staffrole] [varchar](20) NULL,
	[JoiningDate] [varchar](20) NULL,
	[Status] [varchar](30) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[JoiningId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStaffSalary]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStaffSalary](
	[SalaryId] [int] IDENTITY(1,1) NOT NULL,
	[Staffid] [int] NULL,
	[Basic] [int] NULL,
	[TA] [int] NULL,
	[DA] [int] NULL,
	[HRA] [int] NULL,
	[OtherDeductions] [int] NULL,
	[ActualPay] [int] NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[SalaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStaffTypeMaster]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStaffTypeMaster](
	[SMId] [int] IDENTITY(1,1) NOT NULL,
	[SMType] [varchar](50) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
 CONSTRAINT [PK__tblStaff__A47B2F76DBD93971] PRIMARY KEY CLUSTERED 
(
	[SMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStudent]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStudent](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentFirstName] [varchar](30) NULL,
	[StudentMiddleName] [varchar](30) NULL,
	[StudentLastName] [varchar](30) NULL,
	[Gender] [varchar](10) NULL,
	[DOB] [varchar](20) NULL,
	[BloodGroup] [varchar](20) NULL,
	[StudentEnrollmentNo] [varchar](20) NULL,
	[StudentRollNo] [varchar](12) NULL,
	[StudentAadharNo] [varchar](30) NULL,
	[StudentPhoto] [varchar](30) NULL,
	[StudentCorrespondanceAddress] [varchar](100) NULL,
	[StudentPermanentAddress] [varchar](200) NULL,
	[StateId] [int] NULL,
	[CityId] [int] NULL,
	[Pincode] [varchar](10) NULL,
	[HomeContactNo] [varchar](30) NULL,
	[StudentContactNo] [varchar](30) NULL,
	[StudentFatherName] [varchar](30) NULL,
	[StudentFatherContactNo] [varchar](30) NULL,
	[StudentFatherOccupation] [varchar](30) NULL,
	[StudentFatherDesignation] [varchar](30) NULL,
	[StudentFatherIncome] [varchar](30) NULL,
	[StudentMotherName] [varchar](30) NULL,
	[StudentMotherContactNo] [varchar](30) NULL,
	[StudentMotherOccupation] [varchar](30) NULL,
	[StudentMotherDesignation] [varchar](30) NULL,
	[StudentMotherIncome] [varchar](30) NULL,
	[Createdby] [varchar](30) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
 CONSTRAINT [PK__tblStude__32C52B998CDC31D6] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStudentAttendance]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStudentAttendance](
	[StudentAttendanceId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[Date] [varchar](20) NULL,
	[Month] [varchar](20) NULL,
	[Day] [varchar](10) NULL,
	[IsPresent_Absent] [varchar](5) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentAttendanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStudentClassAllotment]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStudentClassAllotment](
	[AllotmentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[IsEntraneExaminationPassed] [varchar](5) NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[Createdby] [varchar](30) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
 CONSTRAINT [PK__tblStude__E9FEF60FAF4CDE4C] PRIMARY KEY CLUSTERED 
(
	[AllotmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStudentExtraCurricularActivityDetails]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStudentExtraCurricularActivityDetails](
	[ActivityId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[StudentExtraCurricularActivity] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStudentFeeDetail]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStudentFeeDetail](
	[FeeId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [varchar](15) NULL,
	[Month] [varchar](12) NULL,
	[StudentId] [int] NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[VehicleId] [int] NULL,
	[TutionFee] [int] NULL,
	[LibraryFee] [int] NULL,
	[TrnsportationFee] [int] NULL,
	[Others] [int] NULL,
	[Otherdesc] [varchar](100) NULL,
	[TotalFee] [int] NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
 CONSTRAINT [PK__tblStude__B387B22942EB961B] PRIMARY KEY CLUSTERED 
(
	[FeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStudentMarks]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStudentMarks](
	[MarksId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[SemesterType] [varchar](15) NULL,
	[Reading] [int] NULL,
	[Writing] [int] NULL,
	[English] [int] NULL,
	[Hindi] [int] NULL,
	[Maths] [int] NULL,
	[Science] [int] NULL,
	[Computers] [int] NULL,
	[SocialStudies] [int] NULL,
	[Health] [int] NULL,
	[PhysicalEducation] [varchar](5) NULL,
	[Comment] [varchar](max) NULL,
	[Createdby] [varchar](10) NULL,
	[Userid] [int] NULL,
	[Createdon] [varchar](30) NULL,
 CONSTRAINT [PK__tblStude__3B6168BAEEC7166F] PRIMARY KEY CLUSTERED 
(
	[MarksId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStudentMarksHigherStandard]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStudentMarksHigherStandard](
	[MarksId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[SemesterType] [varchar](15) NULL,
	[English_Ist] [int] NULL,
	[English_IInd] [int] NULL,
	[Hindi_Ist] [int] NULL,
	[Hindi_IInd] [int] NULL,
	[Math_Ist] [int] NULL,
	[Math_IInd] [int] NULL,
	[Physics] [int] NULL,
	[Chemistry] [int] NULL,
	[Bio] [int] NULL,
	[Computers] [int] NULL,
	[SocialStudies] [int] NULL,
	[Createdby] [varchar](10) NULL,
	[Userid] [int] NULL,
	[Createdon] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MarksId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStudentPerformancedetail]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStudentPerformancedetail](
	[PerformanceId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[PerformanceLevel] [varchar](20) NULL,
	[PerfeormanceDscription] [varchar](max) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
 CONSTRAINT [PK__tblStude__F9606E015D79D5E1] PRIMARY KEY CLUSTERED 
(
	[PerformanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStudentTC]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStudentTC](
	[TCId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[IsGeneratedTC] [varchar](10) NULL,
	[Description] [varchar](200) NULL,
	[Createdby] [varchar](10) NULL,
	[Createdon] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[TCId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSubjectMaster]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSubjectMaster](
	[SubjectId] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [varchar](30) NULL,
	[TotalMarks] [int] NULL,
	[SubjectType] [varchar](30) NULL,
	[SubjectDescription] [varchar](max) NULL,
	[Createdby] [varchar](30) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
 CONSTRAINT [PK__tblSubje__AC1BA3A8E567E716] PRIMARY KEY CLUSTERED 
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSubSubjectMaster]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSubSubjectMaster](
	[SubId] [int] IDENTITY(1,1) NOT NULL,
	[SubjectId] [int] NULL,
	[SubSubjectName] [varchar](20) NULL,
	[Marks] [int] NULL,
	[Createdby] [varchar](10) NULL,
	[Createdon] [varchar](max) NULL,
	[Updatedon] [varchar](max) NULL,
 CONSTRAINT [PK__tblSubSu__4D9BB84ABDC26580] PRIMARY KEY CLUSTERED 
(
	[SubId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblteacher]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblteacher](
	[teacherid] [int] IDENTITY(1,1) NOT NULL,
	[Salutation] [varchar](10) NULL,
	[teacherFirstName] [varchar](30) NULL,
	[teacherMiddleName] [varchar](30) NULL,
	[teacherLastName] [varchar](30) NULL,
	[Gender] [varchar](10) NULL,
	[DOB] [varchar](20) NULL,
	[SubjectId] [int] NULL,
	[teacherAddress] [varchar](200) NULL,
	[teacherState] [varchar](30) NULL,
	[teacherCity] [varchar](30) NULL,
	[Pincode] [varchar](10) NULL,
	[teacherCountry] [varchar](30) NULL,
	[teacherContactNo] [varchar](30) NULL,
	[teacherMobileNo] [varchar](30) NULL,
	[teacherAadharcardNo] [varchar](30) NULL,
	[teacherPANNo] [varchar](30) NULL,
	[teacherPhoto] [varchar](30) NULL,
	[teacherDescription] [varchar](max) NULL,
	[TotalWorkinghrs] [varchar](10) NULL,
	[employeecode] [varchar](50) NULL,
	[username] [varchar](30) NULL,
	[Pwd] [varchar](30) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
 CONSTRAINT [PK__tblteach__98EA44ADE3AD19AE] PRIMARY KEY CLUSTERED 
(
	[teacherid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblteacherAttendance]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblteacherAttendance](
	[teacherAttendanceId] [int] IDENTITY(1,1) NOT NULL,
	[teacherid] [int] NULL,
	[Date] [varchar](20) NULL,
	[Month] [varchar](20) NULL,
	[Day] [varchar](20) NULL,
	[Timein] [varchar](20) NULL,
	[Tmeout] [varchar](20) NULL,
	[TotalWorkingHours] [varchar](20) NULL,
	[teacherPresent_Absent] [varchar](20) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
 CONSTRAINT [PK__tblteach__E35AB38331D1B4F7] PRIMARY KEY CLUSTERED 
(
	[teacherAttendanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblteacherJoiningDetails]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblteacherJoiningDetails](
	[JoiningId] [int] IDENTITY(1,1) NOT NULL,
	[teacherid] [int] NULL,
	[Teacherrole] [varchar](50) NULL,
	[Subjectid] [int] NULL,
	[JoiningDate] [varchar](20) NULL,
	[Status] [varchar](30) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
 CONSTRAINT [PK__tblteach__9E4B30C5E37952F8] PRIMARY KEY CLUSTERED 
(
	[JoiningId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTeacherPerformance]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTeacherPerformance](
	[PerformanceId] [int] IDENTITY(1,1) NOT NULL,
	[teacherid] [int] NULL,
	[Date] [varchar](20) NULL,
	[Month] [varchar](20) NULL,
	[Level] [varchar](20) NULL,
	[PerformanceDescription] [varchar](max) NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[PerformanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblteacherSalary]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblteacherSalary](
	[SalaryId] [int] IDENTITY(1,1) NOT NULL,
	[teacherid] [int] NULL,
	[Basic] [int] NULL,
	[TA] [int] NULL,
	[DA] [int] NULL,
	[HRA] [int] NULL,
	[OtherDeductions] [int] NULL,
	[ActualPay] [int] NULL,
	[Createdby] [varchar](20) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[SalaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTeacherTimeTable]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTeacherTimeTable](
	[TimeTableId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [varchar](30) NULL,
	[Day] [varchar](10) NULL,
	[teacherid] [int] NULL,
	[TPeriod] [varchar](10) NULL,
	[TFrom] [varchar](10) NULL,
	[Till] [varchar](10) NULL,
	[SubsubjectId] [int] NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[ISClassTeacher] [varchar](10) NULL,
	[ClassDesc] [varchar](max) NULL,
	[Createdby] [varchar](30) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
 CONSTRAINT [PK__tblTeach__C087BD0A44622AC7] PRIMARY KEY CLUSTERED 
(
	[TimeTableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblVehicleDetails]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblVehicleDetails](
	[VehicleId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleType] [varchar](20) NULL,
	[VehicleNo] [varchar](20) NULL,
	[DriverName] [varchar](20) NULL,
	[DriverAadharNo] [varchar](20) NULL,
	[ConductorName] [varchar](20) NULL,
	[ConductorAadharNo] [varchar](20) NULL,
	[VehicleDesc] [varchar](max) NULL,
	[Createdby] [varchar](30) NULL,
	[UserId] [int] NULL,
	[Createdon] [varchar](30) NULL,
	[Updatedon] [varchar](30) NULL,
 CONSTRAINT [PK__tblVehic__476B549265D6D675] PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (0, N'- Select City -', 0)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (4, N'Adilabad', 32)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (549, N'Agartala', 33)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (553, N'Agra', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (152, N'Ahmedabad', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (153, N'Ahmedabad - East', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (156, N'Ahmedabad - North', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (155, N'Ahmedabad - South', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (154, N'Ahmedabad - West', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (350, N'Ahmednagar', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (412, N'Aizawl', 24)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (479, N'Ajmer', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (351, N'Akola', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (287, N'Alappuzha', 18)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (554, N'Aligarh', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (555, N'Allahabad', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (623, N'Almora', 35)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (480, N'Alwar', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (181, N'Ambala', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (550, N'Ambassa', 33)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (556, N'Ambedkar Nagar', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (352, N'Amravati', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (157, N'Amreli', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (462, N'Amritsar', 28)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (158, N'Anand', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (5, N'Anantapur', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (213, N'Anantnag', 15)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (428, N'Angul', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (303, N'Anuppur', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (74, N'Araria', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (515, N'Ariyalur', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (302, N'Ashoknagar', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (75, N'Aurangabad', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (353, N'Aurangabad', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (557, N'Azamgarh', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (558, N'Badaun', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (214, N'Badgam', 15)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (304, N'Badwani', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (259, N'Bagalkot', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (624, N'Bageshwar', 35)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (559, N'Baghpat', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (560, N'Bahraich', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (305, N'Balaghat', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (429, N'Balasore', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (561, N'Balia', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (562, N'Balrampur', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (159, N'Banaskantha', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (563, N'Banda', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (249, N'Bangalore', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (260, N'Bangalore Rural', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (258, N'Bangalore-Central', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (256, N'Bangalore-East', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (254, N'Bangalore-North', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (251, N'Bangalore-North East', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (250, N'Bangalore-North West', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (255, N'Bangalore-South', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (253, N'Bangalore-South East', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (252, N'Bangalore-South West', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (257, N'Bangalore-West', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (78, N'Banka', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (636, N'Bankura', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (481, N'Banswara', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (564, N'Barabanki', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (215, N'Baramulla', 15)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (482, N'Baran', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (637, N'Bardhaman', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (565, N'Bareilli', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (433, N'Bargarh', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (483, N'Barmer', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (49, N'Barpeta', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (115, N'Bastar', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (566, N'Basti', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (355, N'Beed', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (76, N'Begusarai', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (261, N'Belgaum', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (262, N'Bellary', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (306, N'Betul', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (432, N'Bhadrak', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (77, N'Bhagalpur', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (354, N'Bhandara', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (484, N'Bharatpur', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (160, N'Bharuch', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (463, N'Bhatinda', 28)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (161, N'Bhavnagar', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (116, N'Bhilai', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (485, N'Bhilwara', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (307, N'Bhind', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (182, N'Bhiwani', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (79, N'Bhojpur', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (308, N'Bhopal', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (263, N'Bidar', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (118, N'Bijapur', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (264, N'Bijapur', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (567, N'Bijnore', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (486, N'Bikaner', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (117, N'Bilaspur', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (201, N'Bilaspur', 14)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (638, N'Birbhum', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (396, N'Bishnupur', 22)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (227, N'Bokaro', 16)
GO
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (430, N'Bolangir', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (50, N'Bongaigaon', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (431, N'Boudh', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (568, N'Bulandshahar', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (356, N'Buldhana', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (487, N'Bundi', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (309, N'Burhanpur', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (80, N'Buxar', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (51, N'Cachar', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (266, N'Chamarajanagar', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (202, N'Chamba', 14)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (625, N'Chamoli', 35)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (626, N'Champawat', 35)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (413, N'Champhai', 24)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (569, N'Chandauli', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (397, N'Chandel', 22)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (114, N'Chandigarh', 6)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (357, N'Chandrapur', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (35, N'Changlang', 3)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (228, N'Chatra', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (516, N'Chennai', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (520, N'Chennai-Central', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (518, N'Chennai-North', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (519, N'Chennai-South', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (517, N'Chennai-West', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (310, N'Chhatarpur', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (414, N'Chhimtuipui', 24)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (311, N'Chhindwara', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (265, N'Chikkaballapur', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (267, N'Chikmagalur', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (268, N'Chitradurga', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (570, N'Chitrakoot', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (6, N'Chittoor', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (488, N'Chittorgarh', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (398, N'Churachandpur', 22)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (489, N'Churu', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (521, N'Coimbatore', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (639, N'Coochbehar', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (522, N'Cuddalore', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (7, N'Cuddapah', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (434, N'Cuttack', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (640, N'Dakshin Dinajpur', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (269, N'Dakshina Kannada', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (135, N'Daman', 9)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (312, N'Damoh', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (119, N'Dantewada', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (82, N'Darbhanga', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (647, N'Darjeeling', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (52, N'Darrang', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (313, N'Datia', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (490, N'Dausa', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (270, N'Davanagere', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (627, N'Dehradun', 35)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (435, N'Deogarh', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (229, N'Deoghar', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (571, N'Deoria', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (314, N'Dewas', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (120, N'Dhamtari', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (230, N'Dhanbad', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (315, N'Dhar', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (523, N'Dharmapuri', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (271, N'Dharwad', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (53, N'Dhemaji', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (436, N'Dhenkanal', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (491, N'Dholpur', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (54, N'Dhubri', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (358, N'Dhule', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (36, N'Dibang and Lower Dibang Valley', 3)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (55, N'Dibrugarh', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (420, N'Dimapur', 25)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (524, N'Dindigul', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (316, N'Dindori', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (56, N'Dispur', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (136, N'Diu', 9)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (216, N'Doda', 15)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (162, N'Dohod', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (231, N'Dumka', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (492, N'Dungarpur', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (121, N'Durg', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (83, N'East Champaran', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (409, N'East Garo Hills', 23)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (8, N'East Godavari', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (37, N'East Kameng', 3)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (405, N'East Khasi Hills', 23)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (38, N'East Siang', 3)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (232, N'East Singhbhum', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (288, N'Ernakulam', 18)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (525, N'Erode', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (572, N'Etah', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (573, N'Etawah', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (574, N'Faizabad', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (137, N'Faridabad', 10)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (183, N'Faridabad', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (464, N'Faridkot', 28)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (576, N'Farukkhabad', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (184, N'Fatehabad', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (465, N'Fatehgarh Sahib', 28)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (575, N'Fatehpur', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (577, N'Firozabad', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (466, N'Firozepur', 28)
GO
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (272, N'Gadag', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (359, N'Gadchiroli', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (438, N'Gajapati', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (164, N'Gandhinagar', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (493, N'Ganganagar', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (511, N'Gangtok', 30)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (437, N'Ganjam', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (233, N'Garhwa', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (579, N'Gautam Buddha Nagar', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (84, N'Gaya', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (578, N'Gaziabad', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (580, N'Gazipur', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (138, N'Ghaziabad', 10)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (234, N'Giridih', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (57, N'Goalpara', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (235, N'Godda', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (58, N'Golaghat', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (581, N'Gonda', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (360, N'Gondia', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (85, N'Gopalganj', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (582, N'Gorakhpur', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (139, N'Greater Noida', 10)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (273, N'Gulbarga', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (236, N'Gumla', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (317, N'Guna', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (9, N'Guntur', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (467, N'Gurdaspur', 28)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (140, N'Gurgaon', 10)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (185, N'Gurgaon', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (59, N'Guwahati', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (318, N'Gwalior', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (512, N'Gyalshing', 30)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (60, N'Hailakandi', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (203, N'Hamirpur', 14)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (583, N'Hamirpur', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (494, N'Hanumangarh', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (319, N'Harda', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (584, N'Hardoi', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (628, N'Hardwar', 35)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (274, N'Hassan', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (585, N'Hathras', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (275, N'Haveri', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (237, N'Hazaribagh', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (361, N'Hingoli', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (186, N'Hisar', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (649, N'Hooghly', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (320, N'Hoshangabad', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (468, N'Hoshiarpur', 28)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (648, N'Howrah', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (10, N'Hyderabad', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (15, N'Hyderabad Central', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (11, N'Hyderabad-East', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (14, N'Hyderabad-North', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (13, N'Hyderabad-South', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (12, N'Hyderabad-West', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (289, N'Idukki', 18)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (400, N'Imphal (East)', 22)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (399, N'Imphal (West)', 22)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (321, N'Indore', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (39, N'Itanagar', 3)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (322, N'Jabalpur', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (439, N'Jagatsinghpur', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (86, N'Jahanabad', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (408, N'Jaintia Hills', 23)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (495, N'Jaipur', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (496, N'Jaisalmer', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (440, N'Jajpur', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (469, N'Jalandhar', 28)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (586, N'Jalaun', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (362, N'Jalgaon', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (363, N'Jalna', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (497, N'Jalore', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (650, N'Jalpaiguri', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (217, N'Jammu', 15)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (165, N'Jamnagar', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (238, N'Jamtara', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (87, N'Jamui', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (124, N'Janjgir-Champa', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (123, N'Jashpur', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (587, N'Jaunpur', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (323, N'Jhabua', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (187, N'Jhajjar', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (498, N'Jhalawar', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (588, N'Jhansi', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (441, N'Jharsuguda', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (499, N'Jhunjhunu', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (188, N'Jind', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (500, N'Jodhpur', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (61, N'Jorhat', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (166, N'Junagadh', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (589, N'Jyotiba Phule Nagar', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (125, N'Kabirdham', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (168, N'Kachchh', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (551, N'Kailashahar', 33)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (81, N'Kaimur (Bhabhua)', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (189, N'Kaithal', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (16, N'Kakinada', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (443, N'Kalahandi', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (526, N'Kancheepuram', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (444, N'Kandhamal', 26)
GO
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (204, N'Kangra', 14)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (122, N'Kanker', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (590, N'Kannauj', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (527, N'Kanniyakumari', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (290, N'Kannur', 18)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (592, N'Kanpur (City)', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (591, N'Kanpur (Dehat)', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (470, N'Kapurthala', 28)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (458, N'Karaikal', 27)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (62, N'Karbi-Anglong', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (218, N'Kargil', 15)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (63, N'Karimganj', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (17, N'Karimnagar', 32)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (190, N'Karnal', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (501, N'Karoli', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (528, N'Karur', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (291, N'Kasaragode', 18)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (219, N'Kathua', 15)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (89, N'Katihar', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (324, N'Katni', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (593, N'Kaushambi', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (301, N'Kavaratti', 19)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (126, N'Kawardha', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (446, N'Kendrapara', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (442, N'Keonjhar', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (90, N'Khagaria', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (18, N'Khammam', 32)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (325, N'Khandwa (East Nimar)', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (326, N'Khargone (West Nimar)', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (167, N'Kheda', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (447, N'Khurda', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (205, N'Kinnaur', 14)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (91, N'Kishanganj', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (276, N'Kodagu', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (239, N'Koderma', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (421, N'Kohima', 25)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (64, N'Kokrajhar', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (277, N'Kolar', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (415, N'Kolasib', 24)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (364, N'Kolhapur', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (641, N'Kolkata', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (646, N'Kolkata-Central', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (642, N'Kolkata-East', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (644, N'Kolkata-North', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (645, N'Kolkata-South', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (643, N'Kolkata-West', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (292, N'Kollam', 18)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (278, N'Koppal', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (445, N'Koraput', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (127, N'Koria', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (502, N'Kota', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (293, N'Kottayam', 18)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (294, N'Kozhikode', 18)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (206, N'Kullu', 14)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (220, N'Kupwara', 15)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (19, N'Kurnool', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (191, N'Kurukshetra', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (594, N'Kushinagar', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (207, N'Lahaul and Spiti', 14)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (65, N'Lakhimpur', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (595, N'Lakhimpur Kheri', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (95, N'Lakhisarai', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (596, N'Lalitpur', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (240, N'Latehar', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (365, N'Latur', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (417, N'Lawngtlai', 24)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (221, N'Leh', 15)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (241, N'Lohardaga', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (40, N'Lohit and Anjaw', 3)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (41, N'Lower Subansiri and Kurung Kumey', 3)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (597, N'Lucknow', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (471, N'Ludhiana', 28)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (416, N'Lunglei', 24)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (92, N'Madhepura', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (93, N'Madhubani', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (529, N'Madurai', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (598, N'Maharajganj', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (128, N'Mahasamund', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (20, N'Mahbubnagar', 32)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (459, N'Mahe', 27)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (192, N'Mahendergarh', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (169, N'Mahesana', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (599, N'Mahoba', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (600, N'Mainpuri', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (295, N'Malappuram', 18)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (651, N'Malda', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (449, N'Malkangiri', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (418, N'Mamit', 24)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (208, N'Mandi', 14)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (327, N'Mandla', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (328, N'Mandsaur', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (279, N'Mandya', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (513, N'Mangan', 30)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (472, N'Mansa', 28)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (66, N'Marigaon', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (601, N'Mathura', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (602, N'Mau', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (448, N'Mayurbhanja', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (21, N'Medak', 32)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (652, N'Medinipur', 36)
GO
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (603, N'Meerut', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (200, N'Mewat', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (604, N'Mirzapur', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (473, N'Moga', 28)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (111, N'Mohali', 6)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (422, N'Mokokchung', 25)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (423, N'Mon', 25)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (605, N'Moradabad', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (329, N'Morena', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (474, N'Muktsar', 28)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (367, N'Mumbai (Sub.)', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (372, N'Mumbai Around Mumbai', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (366, N'Mumbai City', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (371, N'Mumbai-Central Line', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (368, N'Mumbai-Central Mumbai', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (370, N'Mumbai-Harbour Line', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (369, N'Mumbai-South Mumbai', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (94, N'Munger', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (653, N'Murshidabad', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (606, N'Muzaffarnagar', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (97, N'Muzaffarpur', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (280, N'Mysore', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (654, N'Nadia', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (67, N'Nagaon', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (530, N'Nagapattinam', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (503, N'Nagaur', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (374, N'Nagpur', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (629, N'Nainital', 35)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (98, N'Nalanda', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (68, N'Nalbari', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (22, N'Nalgonda', 32)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (531, N'Namakkal', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (514, N'Namchi', 30)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (375, N'Nanded', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (376, N'Nandurbar', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (129, N'Narayanpur', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (170, N'Narmada', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (330, N'Narsinghpur', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (377, N'Nashik', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (373, N'Navi Mumbai', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (171, N'Navsari', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (99, N'Nawada', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (475, N'Nawan Shehar', 28)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (450, N'Nawarangpur', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (451, N'Nayagarh', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (331, N'Neemuch', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (23, N'Nellore', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (141, N'New Delhi', 10)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (149, N'New Delhi-Central', 10)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (147, N'New Delhi-East', 10)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (145, N'New Delhi-North', 10)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (143, N'New Delhi-North East', 10)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (142, N'New Delhi-North West', 10)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (146, N'New Delhi-South', 10)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (144, N'New Delhi-South West', 10)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (148, N'New Delhi-West', 10)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (2, N'Nicobar', 1)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (25, N'Nizamabad', 32)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (150, N'Noida', 10)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (655, N'North 24 Parganas', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (3, N'North and Middle Andaman', 1)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (69, N'North Cachar Hills', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (452, N'Nuapada', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (607, N'Orraiya', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (378, N'Osmanabad', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (242, N'Pakur', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (296, N'Palakkad', 18)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (243, N'Palamu', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (504, N'Pali', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (151, N'Panaji', 11)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (112, N'Panchkula', 6)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (193, N'Panchkula', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (172, N'Panchmahal', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (194, N'Panipat', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (332, N'Panna', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (42, N'Papum-Pare', 3)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (379, N'Parbhani', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (173, N'Patan', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (297, N'Pathanamthitta', 18)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (476, N'Patiala', 28)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (100, N'Patna', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (630, N'Pauri Garhwal', 35)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (532, N'Perambalur', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (424, N'Phek', 25)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (608, N'Pilibhit', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (631, N'Pithoragarh', 35)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (223, N'Poonch', 15)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (174, N'Porbandar', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (24, N'Prakasam', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (609, N'Pratapgarh', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (460, N'Puducherry', 27)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (533, N'Pudukottai', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (222, N'Pulwama', 15)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (380, N'Pune', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (385, N'Pune-Central', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (381, N'Pune-East', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (383, N'Pune-North', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (384, N'Pune-South', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (382, N'Pune-West', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (453, N'Puri', 26)
GO
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (101, N'Purnea', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (656, N'Purulia', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (610, N'Raibareilli', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (281, N'Raichur', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (386, N'Raigad', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (130, N'Raigarh', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (131, N'Raipur', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (333, N'Raisen', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (26, N'Rajahmundry', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (334, N'Rajgarh', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (175, N'Rajkot', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (132, N'Rajnandgaon', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (224, N'Rajouri', 15)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (505, N'Rajsamand', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (282, N'Ramanagar', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (546, N'Ramanathapuram', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (611, N'Rampur', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (244, N'Ranchi', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (335, N'Ratlam', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (387, N'Ratnagiri', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (454, N'Rayagada', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (336, N'Rewa', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (195, N'Rewari', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (407, N'Ri-Bhoi', 23)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (196, N'Rohtak', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (102, N'Rohtas', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (477, N'Roop Nagar', 28)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (632, N'Rudra Prayag', 35)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (176, N'Sabarkantha', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (337, N'Sagar', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (612, N'Saharanpur', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (88, N'Saharsa', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (245, N'Sahebganj', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (534, N'Salem', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (103, N'Samastipur', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (455, N'Sambalpur', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (388, N'Sangli', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (478, N'Sangrur', 28)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (614, N'Sant Kabir Nagar', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (613, N'Sant Ravidas Nagar', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (104, N'Saran', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (133, N'Sarguja', 7)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (389, N'Satara', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (338, N'Satna', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (506, N'Sawai Madhopur', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (339, N'Sehore', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (401, N'Senapati', 22)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (340, N'Seoni', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (246, N'Seraikela Kharsawan', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (419, N'Serchhip', 24)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (341, N'Shahdol', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (615, N'Shahjahanpur', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (342, N'Shajapur', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (343, N'Shayopur', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (96, N'Sheikhpura', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (106, N'Sheohar', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (209, N'Shimla', 14)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (283, N'Shimoga', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (344, N'Shivpuri', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (616, N'Shrawasti', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (70, N'Sibsagar', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (617, N'Siddharthnagar', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (345, N'Sidhi', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (507, N'Sikar', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (71, N'Silchar', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (134, N'Silvassa', 8)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (247, N'Simdega', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (390, N'Sindhudurg', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (210, N'Sirmaur', 14)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (508, N'Sirohi', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (197, N'Sirsa', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (105, N'Sitamarhi', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (618, N'Sitapur', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (547, N'Sivagangai', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (107, N'Siwan', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (211, N'Solan', 14)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (391, N'Solapur', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (619, N'Sonbhadra', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (457, N'Sonepur', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (198, N'Sonipat', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (657, N'South 24 Parganas', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (1, N'South Andaman', 1)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (411, N'South Garo Hills', 23)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (27, N'Srikakulam', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (225, N'Srinagar', 15)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (620, N'Sultanpur', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (456, N'Sundargarh', 26)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (108, N'Supaul', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (177, N'Surat', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (178, N'Surendranagar', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (402, N'Tamenglong', 22)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (43, N'Tawang', 3)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (633, N'Tehri Garhwal', 35)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (72, N'Tezpur', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (392, N'Thane', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (535, N'Thanjavur', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (163, N'The Dangs', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (536, N'The Nilgiris', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (537, N'Theni', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (538, N'Thiruvallur', 31)
GO
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (298, N'Thiruvananthapuram', 18)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (539, N'Thiruvannamalai', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (540, N'Thiruvarur', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (541, N'Thoothukudi', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (403, N'Thoubal', 22)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (299, N'Thrissur', 18)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (346, N'Tikamgarh', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (73, N'Tinsukia', 4)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (44, N'Tirap', 3)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (542, N'Tiruchirappalli', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (543, N'Tirunelveli', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (28, N'Tirupathi', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (509, N'Tonk', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (425, N'Tuensang', 25)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (284, N'Tumkur', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (510, N'Udaipur', 29)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (552, N'Udaipur', 33)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (226, N'Udhampur', 15)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (634, N'Udhamsingh Nagar', 35)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (285, N'Udupi', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (347, N'Ujjain', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (404, N'Ukhrul', 22)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (348, N'Umaria', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (212, N'Una', 14)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (621, N'Unnao', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (45, N'Upper Siang', 3)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (46, N'Upper Subansiri', 3)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (658, N'Uttar Dinajpur', 36)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (286, N'Uttara Kannada', 17)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (635, N'Uttarkashi', 35)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (179, N'Vadodara', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (109, N'Vaishali', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (180, N'Valsad', 12)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (622, N'Varansi', 34)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (544, N'Vellore', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (349, N'Vidisha', 20)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (29, N'Vijayawada', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (30, N'Vikarabad', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (545, N'Villupuram', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (548, N'Virudhunagar', 31)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (31, N'Visakhapatnam', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (32, N'Vizianagaram', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (33, N'Warangal', 32)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (393, N'Wardha', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (394, N'Washim', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (300, N'Wayanad', 18)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (110, N'West Champaran', 5)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (410, N'West Garo Hills', 23)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (34, N'West Godavari', 2)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (48, N'West Kameng', 3)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (406, N'West Khasi Hills', 23)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (47, N'West Siang', 3)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (248, N'West Singhbhum', 16)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (426, N'Wokha', 25)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (199, N'Yamuna Nagar', 13)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (461, N'Yanam', 27)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (395, N'Yavatmal', 21)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (113, N'Zirakhpur', 6)
INSERT [dbo].[City] ([City_ID], [CityName], [State_ID]) VALUES (427, N'Zunheboto', 25)
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (0, N'- Select State -')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (1, N'Andaman and Nicobar Islands')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (2, N'Andhra Pradesh')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (3, N'Arunachal Pradesh')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (4, N'Assam')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (5, N'Bihar')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (6, N'Chandigarh')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (7, N'Chhattisgarh')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (8, N'Dadra and Nagar Haveli')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (9, N'Daman and Diu')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (10, N'Delhi/NCR')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (11, N'Goa')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (12, N'Gujarat')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (13, N'Haryana')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (14, N'Himanchal Pradesh')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (15, N'Jammu and Kashmir')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (16, N'Jharkhand')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (17, N'Karnataka')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (18, N'Kerala')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (19, N'Lakshadweep')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (20, N'Madhya Pradesh')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (21, N'Maharashtra')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (22, N'Manipur')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (23, N'Meghalaya')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (24, N'Mizoram')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (25, N'Nagaland')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (26, N'Orissa')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (27, N'Pondicherry')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (28, N'Punjab')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (29, N'Rajasthan')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (30, N'Sikkim')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (31, N'Tamil Nadu')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (32, N'Telangana')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (33, N'Tripura')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (34, N'Uttar Pradesh')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (35, N'Uttaranchal')
INSERT [dbo].[State] ([State_ID], [State_Name]) VALUES (36, N'West Bengal')
SET IDENTITY_INSERT [dbo].[tblAllotment] ON 

INSERT [dbo].[tblAllotment] ([AllotmentId], [teacherid], [ClassId], [SectionId], [SubId], [Createdby], [Createdon], [Updatedon]) VALUES (1, 1, 4, 3, 1, N'Admin', N'15-05-2019 17:50:21', NULL)
INSERT [dbo].[tblAllotment] ([AllotmentId], [teacherid], [ClassId], [SectionId], [SubId], [Createdby], [Createdon], [Updatedon]) VALUES (2, 2, 4, 2, 4, N'Admin', N'15-05-2019 17:51:04', NULL)
INSERT [dbo].[tblAllotment] ([AllotmentId], [teacherid], [ClassId], [SectionId], [SubId], [Createdby], [Createdon], [Updatedon]) VALUES (3, 3, 3, 1, 6, N'Admin', N'15-05-2019 17:51:32', NULL)
SET IDENTITY_INSERT [dbo].[tblAllotment] OFF
SET IDENTITY_INSERT [dbo].[tblClassMaster] ON 

INSERT [dbo].[tblClassMaster] ([ClassId], [ClassName], [description], [Createdby], [UserId], [Createdon]) VALUES (1, N'Ist', N'Class One', N'Admin', 1, N'13-04-2019 11:27:43')
INSERT [dbo].[tblClassMaster] ([ClassId], [ClassName], [description], [Createdby], [UserId], [Createdon]) VALUES (2, N'IInd', N'Class Second', N'Admin', 1, N'13-04-2019 11:32:24')
INSERT [dbo].[tblClassMaster] ([ClassId], [ClassName], [description], [Createdby], [UserId], [Createdon]) VALUES (3, N'IIIrd', N'Class Third', N'Admin', 1, N'13-04-2019 11:32:49')
INSERT [dbo].[tblClassMaster] ([ClassId], [ClassName], [description], [Createdby], [UserId], [Createdon]) VALUES (4, N'IVth', N'Class Fourth', N'Admin', 1, N'13-04-2019 11:33:18')
INSERT [dbo].[tblClassMaster] ([ClassId], [ClassName], [description], [Createdby], [UserId], [Createdon]) VALUES (5, N'Vth', N'Class Fifth', N'Admin', 1, N'13-04-2019 11:33:40')
INSERT [dbo].[tblClassMaster] ([ClassId], [ClassName], [description], [Createdby], [UserId], [Createdon]) VALUES (6, N'VIth', N'Class Sixth', N'Admin', 1, N'13-04-2019 11:34:10')
INSERT [dbo].[tblClassMaster] ([ClassId], [ClassName], [description], [Createdby], [UserId], [Createdon]) VALUES (7, N'vIIth', N'Class Seventh', N'Admin', 1, N'13-04-2019 11:34:39')
INSERT [dbo].[tblClassMaster] ([ClassId], [ClassName], [description], [Createdby], [UserId], [Createdon]) VALUES (8, N'Viiith', N'Class Eight', N'Admin', 1, N'13-04-2019 11:35:09')
INSERT [dbo].[tblClassMaster] ([ClassId], [ClassName], [description], [Createdby], [UserId], [Createdon]) VALUES (9, N'IXth', N'Class Nineth', N'Admin', 1, N'13-04-2019 11:35:46')
INSERT [dbo].[tblClassMaster] ([ClassId], [ClassName], [description], [Createdby], [UserId], [Createdon]) VALUES (10, N'Xth', N'Class  Tenth', N'Admin', 1, N'13-04-2019 11:36:19')
INSERT [dbo].[tblClassMaster] ([ClassId], [ClassName], [description], [Createdby], [UserId], [Createdon]) VALUES (11, N'Xith', N'Class Eleven', N'Admin', 1, N'13-04-2019 11:36:56')
INSERT [dbo].[tblClassMaster] ([ClassId], [ClassName], [description], [Createdby], [UserId], [Createdon]) VALUES (12, N'XIIth', N'Class Twelth', N'Admin', 1, N'13-04-2019 11:37:30')
SET IDENTITY_INSERT [dbo].[tblClassMaster] OFF
SET IDENTITY_INSERT [dbo].[tblClassTeacher] ON 

INSERT [dbo].[tblClassTeacher] ([Id], [teacherid], [ClassId], [SectionId], [IsClassteacher], [Createdby], [Createdon], [Userid], [Updatedon]) VALUES (1, 1, 2, 1, N'Yes', N'Admin', N'11-05-2019 13:42:11', 1, N'11-05-2019 13:55:52')
SET IDENTITY_INSERT [dbo].[tblClassTeacher] OFF
SET IDENTITY_INSERT [dbo].[tblGenerateStaffSalary] ON 

INSERT [dbo].[tblGenerateStaffSalary] ([SalaryId], [staffid], [SalaryDate], [StaffMonth], [Createdby], [UserId], [Createdon]) VALUES (1, 2, N'18/04/2019', N'April', N'Accountant', 1, N'19-04-2019 12:08:48')
SET IDENTITY_INSERT [dbo].[tblGenerateStaffSalary] OFF
SET IDENTITY_INSERT [dbo].[tblMarksObtained] ON 

INSERT [dbo].[tblMarksObtained] ([ObtId], [ClassId], [SectionId], [SubId], [StudentId], [teacherid], [ExamType], [MarksObt], [UserId], [Createdon], [Updatedon]) VALUES (1, 4, 3, 1, 8, 1, N'Quarterly', 45, 1, N'18-05-2019', N'18-05-2019')
INSERT [dbo].[tblMarksObtained] ([ObtId], [ClassId], [SectionId], [SubId], [StudentId], [teacherid], [ExamType], [MarksObt], [UserId], [Createdon], [Updatedon]) VALUES (2, 4, 3, 1, 9, 1, N'Quarterly', 49, 1, N'18-05-2019', N'18-05-2019')
SET IDENTITY_INSERT [dbo].[tblMarksObtained] OFF
SET IDENTITY_INSERT [dbo].[tblOptionalSubject] ON 

INSERT [dbo].[tblOptionalSubject] ([OptionalId], [ClassId], [SectionId], [SubjectId], [SubId], [teacherid], [StudentId], [StudentAlloted], [Createdby], [Userid], [Createdon], [Updatedon]) VALUES (1, 4, 3, 0, 0, 1003, 8, N'Yes', N'Admin', 1, N'24-05-2019', NULL)
INSERT [dbo].[tblOptionalSubject] ([OptionalId], [ClassId], [SectionId], [SubjectId], [SubId], [teacherid], [StudentId], [StudentAlloted], [Createdby], [Userid], [Createdon], [Updatedon]) VALUES (2, 4, 3, 0, 0, 1003, 9, N'Yes', N'Admin', 1, N'24-05-2019', NULL)
INSERT [dbo].[tblOptionalSubject] ([OptionalId], [ClassId], [SectionId], [SubjectId], [SubId], [teacherid], [StudentId], [StudentAlloted], [Createdby], [Userid], [Createdon], [Updatedon]) VALUES (3, 4, 3, 8, 0, 3, 8, N'Yes', N'Admin', 1, N'24-05-2019', NULL)
INSERT [dbo].[tblOptionalSubject] ([OptionalId], [ClassId], [SectionId], [SubjectId], [SubId], [teacherid], [StudentId], [StudentAlloted], [Createdby], [Userid], [Createdon], [Updatedon]) VALUES (4, 4, 3, 9, 0, 3, 9, N'Yes', N'Admin', 1, N'24-05-2019', NULL)
SET IDENTITY_INSERT [dbo].[tblOptionalSubject] OFF
SET IDENTITY_INSERT [dbo].[tblroutemaster] ON 

INSERT [dbo].[tblroutemaster] ([routeid], [VehicleId], [VehicleNo], [RouteFrom], [RouteTo], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, 1, N'up1234', N'Aligunj Branch ', N'Vikas Nagar', N'Admin', 1, N'16-04-2019 13:28:33', N'10-05-2019 17:09:02')
INSERT [dbo].[tblroutemaster] ([routeid], [VehicleId], [VehicleNo], [RouteFrom], [RouteTo], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (2, 3, N'up9870', N'Aligunj Branch', N'Gomti Nagar', N'Admin', 1, N'16-04-2019 14:25:12', N'10-05-2019 16:49:38')
SET IDENTITY_INSERT [dbo].[tblroutemaster] OFF
SET IDENTITY_INSERT [dbo].[tblScholDailyExpenses] ON 

INSERT [dbo].[tblScholDailyExpenses] ([ExpenseId], [ItemName], [ExpnseInRs], [Expensedesc], [Createdby], [UserId], [Createdon]) VALUES (1, N'Item Test', CAST(85.00 AS Decimal(18, 2)), N'It''s aTest', N'Accountant', 1, N'19-04-2019 15:03:51')
INSERT [dbo].[tblScholDailyExpenses] ([ExpenseId], [ItemName], [ExpnseInRs], [Expensedesc], [Createdby], [UserId], [Createdon]) VALUES (2, N'Test', CAST(85.00 AS Decimal(18, 2)), N'test', N'Accountant', 1, N'19-04-2019 15:08:58')
SET IDENTITY_INSERT [dbo].[tblScholDailyExpenses] OFF
SET IDENTITY_INSERT [dbo].[tblSchoolManagementCurriculumn] ON 

INSERT [dbo].[tblSchoolManagementCurriculumn] ([CurriculumnId], [Date], [Topic], [Curriculumndesc], [Createdby], [UserId], [Createdon]) VALUES (1, N'03/04/2019', N'Test Topic', N'It is a test', N'Admin', 1, N'17-04-2019 18:14:43')
SET IDENTITY_INSERT [dbo].[tblSchoolManagementCurriculumn] OFF
SET IDENTITY_INSERT [dbo].[tblSchoolManagementNotice] ON 

INSERT [dbo].[tblSchoolManagementNotice] ([NoticeId], [Date], [Topic], [Noticedesc], [Createdby], [UserId], [Createdon]) VALUES (1, N'03/04/2019', N'Test Topic', N'it is a Test Records', N'Admin', 1, N'17-04-2019 18:25:34')
SET IDENTITY_INSERT [dbo].[tblSchoolManagementNotice] OFF
SET IDENTITY_INSERT [dbo].[tblSchoolUserDetails] ON 

INSERT [dbo].[tblSchoolUserDetails] ([UserId], [SchoolName], [BranchName], [Address], [Contact], [Mobile], [Email], [username], [pwd], [Createdby], [Createdon]) VALUES (1, N'IphyGenia Solution Pvt.Ltd.', N'GomtinagarBranch', N'Gomti Nagar', N'0522-000000', N'9305795131', N'misrarajanmisra@gmail.com', N'Admin', N'123', N'SuperAdmin', N'03/06/2019 16:51 PM')
SET IDENTITY_INSERT [dbo].[tblSchoolUserDetails] OFF
SET IDENTITY_INSERT [dbo].[tblSectionMaster] ON 

INSERT [dbo].[tblSectionMaster] ([SectionId], [SectionName], [description], [Createdby], [UserId], [Createdon]) VALUES (1, N'A', N'Noe', N'Admin', 1, N'14-05-2019 12:54:08')
INSERT [dbo].[tblSectionMaster] ([SectionId], [SectionName], [description], [Createdby], [UserId], [Createdon]) VALUES (2, N'B', N'None', N'Admin', 1, N'14-05-2019 12:54:24')
INSERT [dbo].[tblSectionMaster] ([SectionId], [SectionName], [description], [Createdby], [UserId], [Createdon]) VALUES (3, N'C', N'None', N'Admin', 1, N'14-05-2019 12:54:35')
INSERT [dbo].[tblSectionMaster] ([SectionId], [SectionName], [description], [Createdby], [UserId], [Createdon]) VALUES (4, N'D', N'None', N'Admin', 1, N'14-05-2019 12:54:49')
SET IDENTITY_INSERT [dbo].[tblSectionMaster] OFF
SET IDENTITY_INSERT [dbo].[tblShifts] ON 

INSERT [dbo].[tblShifts] ([ShiftId], [ShiftName], [WprkingTimeStart], [WorkingTimeEnd], [WorkinghHrs], [WorkingDays], [Createdby], [Userid], [Createdon], [Updatedon]) VALUES (1, N'Staff Day Shift', N'9:00', N'19:00', N'10:00:00', 6, N'Admin', 1, N'17-04-2019 12:32:00', N'08-05-2019 12:31:53')
INSERT [dbo].[tblShifts] ([ShiftId], [ShiftName], [WprkingTimeStart], [WorkingTimeEnd], [WorkinghHrs], [WorkingDays], [Createdby], [Userid], [Createdon], [Updatedon]) VALUES (2, N'Staff Night Shift', N'19:00', N'5:00', N'10:00:00', 5, N'Admin', 1, N'17-04-2019 12:32:00', N'08-05-2019 13:01:34')
INSERT [dbo].[tblShifts] ([ShiftId], [ShiftName], [WprkingTimeStart], [WorkingTimeEnd], [WorkinghHrs], [WorkingDays], [Createdby], [Userid], [Createdon], [Updatedon]) VALUES (3, N'Teacher Day Shift', N'10:00', N'16:00', N'6:00:00', 6, N'Admin', 1, N'17-04-2019 12:32:00', N'17-04-2019 12:45:03')
SET IDENTITY_INSERT [dbo].[tblShifts] OFF
SET IDENTITY_INSERT [dbo].[tblStaff] ON 

INSERT [dbo].[tblStaff] ([Staffid], [Salutation], [StaffFirstName], [StaffMiddleName], [StaffLastName], [Gender], [DOB], [StaffAddress], [StaffState], [StaffCity], [Pincode], [StaffCountry], [StaffContactNo], [StaffMobileNo], [StaffAadharcardNo], [StaffPhoto], [StaffDescription], [TotalWorkinghrs], [StaffType], [employeecode], [username], [pwd], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, N'Mr.', N'Ram', N'Kumar', N'Trivedi', N'Male', N'26.10.1980', N'HazratGunj', N'34', N'597', N'226001', N'INDIA', N'4150500', N'6565666666', N'amupm5891m', N'~/StaffPhoto/Accountant1.jpg', N'4150500', N'1', N'Accounts', N'employee01', N'ram', N'456', N'Admin', 1, N'15-04-2019', N'08-05-2019')
INSERT [dbo].[tblStaff] ([Staffid], [Salutation], [StaffFirstName], [StaffMiddleName], [StaffLastName], [Gender], [DOB], [StaffAddress], [StaffState], [StaffCity], [Pincode], [StaffCountry], [StaffContactNo], [StaffMobileNo], [StaffAadharcardNo], [StaffPhoto], [StaffDescription], [TotalWorkinghrs], [StaffType], [employeecode], [username], [pwd], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (2, N'Mrs.', N'Sarojini', N'Kumar', N'Trivedi', N'Female', N'26.10.1980', N'HazratGunj', N'34', N'597', N'226001', N'INDIA', N'4090500', N'9369640525', N'125252', N'~/StaffPhoto/Staff1.jpg', N'General Staff', N'1', N'Staff (Non Teaching)', N'employee02', N'rani', N'', N'Admin', 1, N'15-04-2019', N'08-05-2019')
INSERT [dbo].[tblStaff] ([Staffid], [Salutation], [StaffFirstName], [StaffMiddleName], [StaffLastName], [Gender], [DOB], [StaffAddress], [StaffState], [StaffCity], [Pincode], [StaffCountry], [StaffContactNo], [StaffMobileNo], [StaffAadharcardNo], [StaffPhoto], [StaffDescription], [TotalWorkinghrs], [StaffType], [employeecode], [username], [pwd], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (3, N'Miss', N'Saroj', N'Kumar', N'Trivedi', N'Female', N'26.10.1980', N'HazratGunj', N'34', N'597', N'226001', N'INDIA', N'4150500', N'9305795131', N'123456789', N'~/StaffPhoto/Staff3.jpg', N'She is General Staff', N'1', N'Staff (Non Teaching)', N'employee03', N'rani', N'666', N'Admin', 1, N'15-04-2019', N'07-05-2019')
INSERT [dbo].[tblStaff] ([Staffid], [Salutation], [StaffFirstName], [StaffMiddleName], [StaffLastName], [Gender], [DOB], [StaffAddress], [StaffState], [StaffCity], [Pincode], [StaffCountry], [StaffContactNo], [StaffMobileNo], [StaffAadharcardNo], [StaffPhoto], [StaffDescription], [TotalWorkinghrs], [StaffType], [employeecode], [username], [pwd], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (4, N'Mr.', N'Kailash', N'', N'Chaturdrvedi', N'Male', N'26.10.1981', N'MahaNagar', N'34', N'597', N'226001', N'INDIA', N'4090500', N'9369640526', N'AMUPM5891M', N'~/StaffPhoto/staff2.jpg', N'AMUPM5891M', N'1', N'Staff (NON Teaching)', N'e04', N'kailash', N'999', N'Admin', 1, N'07-05-2019', N'08-05-2019')
SET IDENTITY_INSERT [dbo].[tblStaff] OFF
SET IDENTITY_INSERT [dbo].[tblStaffAttendance] ON 

INSERT [dbo].[tblStaffAttendance] ([StaffAttendanceId], [Staffid], [Date], [Month], [Day], [Timein], [Tmeout], [TotalWorkingHours], [StaffPresent_Absent], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, 1, N'02/04/2019', N'April', N'Monday', N'9:30', N'18:00', N'08:30:00', N'Present', N'Admin', 1, N'15-04-2019 17:36:33', NULL)
INSERT [dbo].[tblStaffAttendance] ([StaffAttendanceId], [Staffid], [Date], [Month], [Day], [Timein], [Tmeout], [TotalWorkingHours], [StaffPresent_Absent], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (2, 1, N'03/04/2019', N'April', N'Monday', N'9:30', N'18:30', N'09:00:00', N'Present', N'Admin', 1, N'15-04-2019 18:06:24', NULL)
INSERT [dbo].[tblStaffAttendance] ([StaffAttendanceId], [Staffid], [Date], [Month], [Day], [Timein], [Tmeout], [TotalWorkingHours], [StaffPresent_Absent], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (3, 2, N'03/04/2019', N'April', N'Monday', N'9:30', N'18:00', N'08:30:00', N'Present', N'Admin', 1, N'15-04-2019 18:14:55', NULL)
SET IDENTITY_INSERT [dbo].[tblStaffAttendance] OFF
SET IDENTITY_INSERT [dbo].[tblStaffJoiningDetails] ON 

INSERT [dbo].[tblStaffJoiningDetails] ([JoiningId], [SMId], [Staffid], [Staffrole], [JoiningDate], [Status], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, 1, 1, N'Senior Accountant', N'02/04/2019', N'Available', N'Admin', 1, N'15-04-2019 13:51:43', NULL)
INSERT [dbo].[tblStaffJoiningDetails] ([JoiningId], [SMId], [Staffid], [Staffrole], [JoiningDate], [Status], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (2, 6, 2, N'Aaya', N'02/04/2019', N'Available', N'Admin', 1, N'15-04-2019 13:51:43', NULL)
INSERT [dbo].[tblStaffJoiningDetails] ([JoiningId], [SMId], [Staffid], [Staffrole], [JoiningDate], [Status], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (3, 2, 3, N'Aaya', N'02/04/2019', N'Available', N'Admin', 1, N'15-04-2019 13:51:43', NULL)
INSERT [dbo].[tblStaffJoiningDetails] ([JoiningId], [SMId], [Staffid], [Staffrole], [JoiningDate], [Status], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (4, 2, 4, N'Care Taker', N'08/05/2019', N'Available', N'Admin', 1, N'07-05-2019 14:40:06', NULL)
SET IDENTITY_INSERT [dbo].[tblStaffJoiningDetails] OFF
SET IDENTITY_INSERT [dbo].[tblStaffSalary] ON 

INSERT [dbo].[tblStaffSalary] ([SalaryId], [Staffid], [Basic], [TA], [DA], [HRA], [OtherDeductions], [ActualPay], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, 1, 12000, 300, 100, 200, 200, 12500, N'Admin', 1, N'15-04-2019 13:52:02', NULL)
INSERT [dbo].[tblStaffSalary] ([SalaryId], [Staffid], [Basic], [TA], [DA], [HRA], [OtherDeductions], [ActualPay], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (2, 2, 7000, 300, 100, 200, 200, 7400, N'Admin', 1, N'15-04-2019 13:52:02', NULL)
INSERT [dbo].[tblStaffSalary] ([SalaryId], [Staffid], [Basic], [TA], [DA], [HRA], [OtherDeductions], [ActualPay], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (3, 3, 7000, 300, 100, 200, 200, 7400, N'Admin', 1, N'15-04-2019 13:52:02', NULL)
INSERT [dbo].[tblStaffSalary] ([SalaryId], [Staffid], [Basic], [TA], [DA], [HRA], [OtherDeductions], [ActualPay], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (4, 4, 5000, 200, 100, 300, 300, 5600, N'Admin', 1, N'07-05-2019 14:40:10', NULL)
SET IDENTITY_INSERT [dbo].[tblStaffSalary] OFF
SET IDENTITY_INSERT [dbo].[tblStaffTypeMaster] ON 

INSERT [dbo].[tblStaffTypeMaster] ([SMId], [SMType], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, N'Accountant', N'Admim', 1, N'12-04-2019 17:49:34', N'09-05-2019 11:26:03')
INSERT [dbo].[tblStaffTypeMaster] ([SMId], [SMType], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (3, N'Gardener', N'Admim', 1, N'12-04-2019 17:57:26', NULL)
INSERT [dbo].[tblStaffTypeMaster] ([SMId], [SMType], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (4, N'Gate Keeper', N'Admim', 1, N'12-04-2019 17:58:09', NULL)
INSERT [dbo].[tblStaffTypeMaster] ([SMId], [SMType], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (5, N'Nurse', N'Admim', 1, N'12-04-2019 17:58:25', NULL)
INSERT [dbo].[tblStaffTypeMaster] ([SMId], [SMType], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (6, N'Care Taker', N'Admim', 1, N'13-04-2019 10:10:21', NULL)
INSERT [dbo].[tblStaffTypeMaster] ([SMId], [SMType], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (7, N'Helper', N'Admim', 1, N'13-04-2019 10:10:29', NULL)
INSERT [dbo].[tblStaffTypeMaster] ([SMId], [SMType], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (8, N'Aaya', N'Admin', 1, N'07-05-2019 13:48:43', NULL)
INSERT [dbo].[tblStaffTypeMaster] ([SMId], [SMType], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (9, N'General Staff', N'Admin', 1, N'07-05-2019 14:26:01', NULL)
INSERT [dbo].[tblStaffTypeMaster] ([SMId], [SMType], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (10, N'Peon', N'Admin', 1, N'08-05-2019 12:19:10', NULL)
SET IDENTITY_INSERT [dbo].[tblStaffTypeMaster] OFF
SET IDENTITY_INSERT [dbo].[tblStudent] ON 

INSERT [dbo].[tblStudent] ([StudentId], [StudentFirstName], [StudentMiddleName], [StudentLastName], [Gender], [DOB], [BloodGroup], [StudentEnrollmentNo], [StudentRollNo], [StudentAadharNo], [StudentPhoto], [StudentCorrespondanceAddress], [StudentPermanentAddress], [StateId], [CityId], [Pincode], [HomeContactNo], [StudentContactNo], [StudentFatherName], [StudentFatherContactNo], [StudentFatherOccupation], [StudentFatherDesignation], [StudentFatherIncome], [StudentMotherName], [StudentMotherContactNo], [StudentMotherOccupation], [StudentMotherDesignation], [StudentMotherIncome], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, N'Rajan', N'', N'Misra', N'Male', N'26.10.2015', N'A+', N'789', N'666', N'6666666666', N'~/StudentPhoto/Student6.jpg', N'Hussaingunj', N'Hussaingunj', 34, 597, N'226001', N'4090500', N'9305795131', N'Lt J N Misra  ', N'9369640525', N'Business Man', N'Owner', N'5000', N'Lt Malti Misra', N'9305795131', N'House Wife', N'House Wife', N'00', N'Admin', 1, N'18-04-2019', N'22-04-2019')
INSERT [dbo].[tblStudent] ([StudentId], [StudentFirstName], [StudentMiddleName], [StudentLastName], [Gender], [DOB], [BloodGroup], [StudentEnrollmentNo], [StudentRollNo], [StudentAadharNo], [StudentPhoto], [StudentCorrespondanceAddress], [StudentPermanentAddress], [StateId], [CityId], [Pincode], [HomeContactNo], [StudentContactNo], [StudentFatherName], [StudentFatherContactNo], [StudentFatherOccupation], [StudentFatherDesignation], [StudentFatherIncome], [StudentMotherName], [StudentMotherContactNo], [StudentMotherOccupation], [StudentMotherDesignation], [StudentMotherIncome], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (2, N'Sajan', N'', N'Misra', N'Male', N'14.10.2013', N'B+', N'788', N'667', N'6666666666', N'~/StudentPhoto/Student5.jpg', N'Hussaingunj', N'Hussaingunj', 34, 597, N'226002', N'4090500', N'9305795131', N'Lt J N Misra  ', N'9369640525', N'Business Man', N'Owner', N'5000', N'Lt Malti Misra', N'9305795131', N'House Wife', N'House Wife', N'00', N'Admin', 1, N'18-04-2019', N'07-05-YYYY')
INSERT [dbo].[tblStudent] ([StudentId], [StudentFirstName], [StudentMiddleName], [StudentLastName], [Gender], [DOB], [BloodGroup], [StudentEnrollmentNo], [StudentRollNo], [StudentAadharNo], [StudentPhoto], [StudentCorrespondanceAddress], [StudentPermanentAddress], [StateId], [CityId], [Pincode], [HomeContactNo], [StudentContactNo], [StudentFatherName], [StudentFatherContactNo], [StudentFatherOccupation], [StudentFatherDesignation], [StudentFatherIncome], [StudentMotherName], [StudentMotherContactNo], [StudentMotherOccupation], [StudentMotherDesignation], [StudentMotherIncome], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (3, N'Mahajan', N'', N'Misra', N'Male', N'14.10.2014', N'A+', N'787', N'668', N'6666666666', N'~/StudentPhoto/Student4.jpg', N'Hussaingunj', N'Hussaingunj', 34, 597, N'226003', N'4090500', N'9305795131', N'Lt J N Misra  ', N'9369640525', N'Business Man', N'Owner', N'5000', N'Lt Malti Misra', N'9305795131', N'House Wife', N'House Wife', N'00', N'Admin', 1, N'18-04-2019', NULL)
INSERT [dbo].[tblStudent] ([StudentId], [StudentFirstName], [StudentMiddleName], [StudentLastName], [Gender], [DOB], [BloodGroup], [StudentEnrollmentNo], [StudentRollNo], [StudentAadharNo], [StudentPhoto], [StudentCorrespondanceAddress], [StudentPermanentAddress], [StateId], [CityId], [Pincode], [HomeContactNo], [StudentContactNo], [StudentFatherName], [StudentFatherContactNo], [StudentFatherOccupation], [StudentFatherDesignation], [StudentFatherIncome], [StudentMotherName], [StudentMotherContactNo], [StudentMotherOccupation], [StudentMotherDesignation], [StudentMotherIncome], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (4, N'Rajani', N'', N'Misra', N'Female', N'26.10.2012', N'AB+', N'786', N'669', N'6666666666', N'~/StudentPhoto/Student3.jpg', N'Hussaingunj', N'Hussaingunj', 34, 597, N'226004', N'4090500', N'9305795131', N'Lt J N Misra  ', N'9369640525', N'Business Man', N'Owner', N'5000', N'Lt Malti Misra', N'9305795131', N'House Wife', N'House Wife', N'00', N'Admin', 1, N'18-04-2019', NULL)
INSERT [dbo].[tblStudent] ([StudentId], [StudentFirstName], [StudentMiddleName], [StudentLastName], [Gender], [DOB], [BloodGroup], [StudentEnrollmentNo], [StudentRollNo], [StudentAadharNo], [StudentPhoto], [StudentCorrespondanceAddress], [StudentPermanentAddress], [StateId], [CityId], [Pincode], [HomeContactNo], [StudentContactNo], [StudentFatherName], [StudentFatherContactNo], [StudentFatherOccupation], [StudentFatherDesignation], [StudentFatherIncome], [StudentMotherName], [StudentMotherContactNo], [StudentMotherOccupation], [StudentMotherDesignation], [StudentMotherIncome], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (5, N'Savita', N'', N'Misra', N'Female', N'14.10.2013', N'B+', N'785', N'6610', N'6666666666', N'~/StudentPhoto/Student2.jpg', N'Hussaingunj', N'Hussaingunj', 34, 597, N'226005', N'4090500', N'9305795131', N'Lt J N Misra  ', N'9369640525', N'Business Man', N'Owner', N'5000', N'Lt Malti Misra', N'9305795131', N'House Wife', N'House Wife', N'00', N'Admin', 1, N'18-04-2019', NULL)
INSERT [dbo].[tblStudent] ([StudentId], [StudentFirstName], [StudentMiddleName], [StudentLastName], [Gender], [DOB], [BloodGroup], [StudentEnrollmentNo], [StudentRollNo], [StudentAadharNo], [StudentPhoto], [StudentCorrespondanceAddress], [StudentPermanentAddress], [StateId], [CityId], [Pincode], [HomeContactNo], [StudentContactNo], [StudentFatherName], [StudentFatherContactNo], [StudentFatherOccupation], [StudentFatherDesignation], [StudentFatherIncome], [StudentMotherName], [StudentMotherContactNo], [StudentMotherOccupation], [StudentMotherDesignation], [StudentMotherIncome], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (6, N'Manoj', N'', N'Misra', N'Male', N'14.10.2014', N'O-', N'784', N'6611', N'6666666666', N'~/StudentPhoto/Student1.jpg', N'Hussaingunj', N'Hussaingunj', 34, 597, N'226006', N'4090500', N'9305795131', N'Lt J N Misra  ', N'9369640525', N'Business Man', N'Owner', N'5000', N'Lt Malti Misra', N'9305795131', N'House Wife', N'House Wife', N'00', N'Admin', 1, N'18-04-2019', NULL)
INSERT [dbo].[tblStudent] ([StudentId], [StudentFirstName], [StudentMiddleName], [StudentLastName], [Gender], [DOB], [BloodGroup], [StudentEnrollmentNo], [StudentRollNo], [StudentAadharNo], [StudentPhoto], [StudentCorrespondanceAddress], [StudentPermanentAddress], [StateId], [CityId], [Pincode], [HomeContactNo], [StudentContactNo], [StudentFatherName], [StudentFatherContactNo], [StudentFatherOccupation], [StudentFatherDesignation], [StudentFatherIncome], [StudentMotherName], [StudentMotherContactNo], [StudentMotherOccupation], [StudentMotherDesignation], [StudentMotherIncome], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (7, N'Rajmanohar', N'', N'Misra', N'Male', N'06/05/2019', N'AB+', N'22545', N'', N'125456587', N'~/StudentPhoto/sms2.jpg', N'test', N'test', 34, 597, N'226007', N'000000', N'7897529870', N'Mr.JN Misra', N'9369640525', N'test', N'test', N'5000', N't2.3', N'78668745214', N'test', N'test', N'0', N'Admin', 1, N'07-05-YYYY', N'21-05-2019')
INSERT [dbo].[tblStudent] ([StudentId], [StudentFirstName], [StudentMiddleName], [StudentLastName], [Gender], [DOB], [BloodGroup], [StudentEnrollmentNo], [StudentRollNo], [StudentAadharNo], [StudentPhoto], [StudentCorrespondanceAddress], [StudentPermanentAddress], [StateId], [CityId], [Pincode], [HomeContactNo], [StudentContactNo], [StudentFatherName], [StudentFatherContactNo], [StudentFatherOccupation], [StudentFatherDesignation], [StudentFatherIncome], [StudentMotherName], [StudentMotherContactNo], [StudentMotherOccupation], [StudentMotherDesignation], [StudentMotherIncome], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (8, N'ranu', N'', N'Srivastava', N'Male', N'08/05/2019', N'B+', N'254', N'125', N'58525lp', N'~/StudentPhoto/sms7.jpg', N'test', N'test', 34, 597, N'226008', N'4150500', N'898988989', N'JN Sharma', N'6544566996', N'tester', N'poptest', N'7000', N'MLO', N'0', N'HW', N'popins', N'0', N'Admin', 1, N'08-05-YYYY', N'08-05-2019')
INSERT [dbo].[tblStudent] ([StudentId], [StudentFirstName], [StudentMiddleName], [StudentLastName], [Gender], [DOB], [BloodGroup], [StudentEnrollmentNo], [StudentRollNo], [StudentAadharNo], [StudentPhoto], [StudentCorrespondanceAddress], [StudentPermanentAddress], [StateId], [CityId], [Pincode], [HomeContactNo], [StudentContactNo], [StudentFatherName], [StudentFatherContactNo], [StudentFatherOccupation], [StudentFatherDesignation], [StudentFatherIncome], [StudentMotherName], [StudentMotherContactNo], [StudentMotherOccupation], [StudentMotherDesignation], [StudentMotherIncome], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (9, N'ranu', N'', N'sharma', N'Male', N'08/05/2019', N'A+', N'254', N'126', N'58525lp', N'~/StudentPhoto/sms7.jpg', N'test', N'test', 34, 597, N'226009', N'4150500', N'898988989', N'JN Sharma', N'6544566996', N'tester', N'poptest', N'7000', N'MLO', N'0', N'HW', N'popins', N'0', N'Admin', 1, N'08-05-YYYY', N'09-05-2019')
INSERT [dbo].[tblStudent] ([StudentId], [StudentFirstName], [StudentMiddleName], [StudentLastName], [Gender], [DOB], [BloodGroup], [StudentEnrollmentNo], [StudentRollNo], [StudentAadharNo], [StudentPhoto], [StudentCorrespondanceAddress], [StudentPermanentAddress], [StateId], [CityId], [Pincode], [HomeContactNo], [StudentContactNo], [StudentFatherName], [StudentFatherContactNo], [StudentFatherOccupation], [StudentFatherDesignation], [StudentFatherIncome], [StudentMotherName], [StudentMotherContactNo], [StudentMotherOccupation], [StudentMotherDesignation], [StudentMotherIncome], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (10, N'Raj', N'Narayan', N'Misra', N'Male', N'12.12.2012', N'A+', N'123', N'321', N'lop12', N'~/StudentPhoto/sms5.jpg', N'test', N'test', 34, 597, N'226001', N'252525', N'4564566554', N'Mr Deepak Misra', N'65656565655', N'Business Man', N'Owner', N'5000', N'Mrs Neeta Misra', N'00000000', N'HW', N'HW', N'0', N'Admin', 1, N'10-05-2019', N'10-05-2019')
SET IDENTITY_INSERT [dbo].[tblStudent] OFF
SET IDENTITY_INSERT [dbo].[tblStudentAttendance] ON 

INSERT [dbo].[tblStudentAttendance] ([StudentAttendanceId], [StudentId], [Date], [Month], [Day], [IsPresent_Absent], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, 8, N'18/05/2019', N'May', N'Saturday', N'P', N'Teacher', 1, N'18-05-2019 12:45:42', NULL)
INSERT [dbo].[tblStudentAttendance] ([StudentAttendanceId], [StudentId], [Date], [Month], [Day], [IsPresent_Absent], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (2, 9, N'18/05/2019', N'May', N'Saturday', N'P', N'Teacher', 1, N'18-05-2019 12:45:42', NULL)
INSERT [dbo].[tblStudentAttendance] ([StudentAttendanceId], [StudentId], [Date], [Month], [Day], [IsPresent_Absent], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (3, 8, N'20/05/2019', N'May', N'Monday', N'P', N'Teacher', 1, N'20-05-2019 12:07:38', NULL)
INSERT [dbo].[tblStudentAttendance] ([StudentAttendanceId], [StudentId], [Date], [Month], [Day], [IsPresent_Absent], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (4, 9, N'20/05/2019', N'May', N'Monday', N'P', N'Teacher', 1, N'20-05-2019 12:07:38', NULL)
INSERT [dbo].[tblStudentAttendance] ([StudentAttendanceId], [StudentId], [Date], [Month], [Day], [IsPresent_Absent], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (5, 7, N'23/05/2019', N'May', N'Thursday', N'P', N'Teacher', 2, N'23-05-2019 10:35:18', NULL)
SET IDENTITY_INSERT [dbo].[tblStudentAttendance] OFF
SET IDENTITY_INSERT [dbo].[tblStudentClassAllotment] ON 

INSERT [dbo].[tblStudentClassAllotment] ([AllotmentId], [StudentId], [IsEntraneExaminationPassed], [ClassId], [SectionId], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, 1, N'Yes', 5, 1, N'Admin', 1, N'18-04-2019 16:45:13', NULL)
INSERT [dbo].[tblStudentClassAllotment] ([AllotmentId], [StudentId], [IsEntraneExaminationPassed], [ClassId], [SectionId], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (2, 2, N'Yes', 5, 1, N'Admin', 1, N'18-04-2019 16:45:13', NULL)
INSERT [dbo].[tblStudentClassAllotment] ([AllotmentId], [StudentId], [IsEntraneExaminationPassed], [ClassId], [SectionId], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (3, 3, N'Yes', 0, 0, N'Admin', 1, N'18-04-2019 16:45:13', NULL)
INSERT [dbo].[tblStudentClassAllotment] ([AllotmentId], [StudentId], [IsEntraneExaminationPassed], [ClassId], [SectionId], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (4, 4, N'Yes', 5, 1, N'Admin', 1, N'18-04-2019 16:45:13', NULL)
INSERT [dbo].[tblStudentClassAllotment] ([AllotmentId], [StudentId], [IsEntraneExaminationPassed], [ClassId], [SectionId], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (5, 5, N'Yes', 5, 1, N'Admin', 1, N'18-04-2019 16:45:13', NULL)
INSERT [dbo].[tblStudentClassAllotment] ([AllotmentId], [StudentId], [IsEntraneExaminationPassed], [ClassId], [SectionId], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (6, 6, N'Yes', 5, 1, N'Admin', 1, N'18-04-2019 16:45:13', NULL)
INSERT [dbo].[tblStudentClassAllotment] ([AllotmentId], [StudentId], [IsEntraneExaminationPassed], [ClassId], [SectionId], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (7, 7, N'Yes', 4, 2, N'Admin', 1, N'07-05-2019 14:45:40', NULL)
INSERT [dbo].[tblStudentClassAllotment] ([AllotmentId], [StudentId], [IsEntraneExaminationPassed], [ClassId], [SectionId], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (8, 8, N'Yes', 4, 3, N'Admin', 1, N'08-05-2019 11:54:55', NULL)
INSERT [dbo].[tblStudentClassAllotment] ([AllotmentId], [StudentId], [IsEntraneExaminationPassed], [ClassId], [SectionId], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (9, 9, N'Yes', 4, 3, N'Admin', 1, N'08-05-2019 11:55:03', NULL)
INSERT [dbo].[tblStudentClassAllotment] ([AllotmentId], [StudentId], [IsEntraneExaminationPassed], [ClassId], [SectionId], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1007, 10, N'Yes', 2, 2, N'Admin', 1, N'10-05-2019 10:16:27', NULL)
SET IDENTITY_INSERT [dbo].[tblStudentClassAllotment] OFF
SET IDENTITY_INSERT [dbo].[tblStudentExtraCurricularActivityDetails] ON 

INSERT [dbo].[tblStudentExtraCurricularActivityDetails] ([ActivityId], [StudentId], [ClassId], [SectionId], [StudentExtraCurricularActivity], [Description], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, 1, 4, 2, N'test', N'test', N'Teacher', 2, N'20-04-2019 18:04:25', NULL)
SET IDENTITY_INSERT [dbo].[tblStudentExtraCurricularActivityDetails] OFF
SET IDENTITY_INSERT [dbo].[tblStudentMarks] ON 

INSERT [dbo].[tblStudentMarks] ([MarksId], [StudentId], [ClassId], [SectionId], [SemesterType], [Reading], [Writing], [English], [Hindi], [Maths], [Science], [Computers], [SocialStudies], [Health], [PhysicalEducation], [Comment], [Createdby], [Userid], [Createdon]) VALUES (1, 1, 5, 5, N'Quarterly', 8, 8, 70, 80, 80, 80, 70, 70, 99, N'60', N'Excellent Works', N'Teacher', 2, N'23-04-2019 15:11:32')
INSERT [dbo].[tblStudentMarks] ([MarksId], [StudentId], [ClassId], [SectionId], [SemesterType], [Reading], [Writing], [English], [Hindi], [Maths], [Science], [Computers], [SocialStudies], [Health], [PhysicalEducation], [Comment], [Createdby], [Userid], [Createdon]) VALUES (2, 1, 5, 5, N'Half Yearly', 8, 8, 70, 80, 80, 80, 70, 70, 99, N'60', N'test', N'Teacher', 2, N'29-04-2019 17:32:28')
SET IDENTITY_INSERT [dbo].[tblStudentMarks] OFF
SET IDENTITY_INSERT [dbo].[tblStudentTC] ON 

INSERT [dbo].[tblStudentTC] ([TCId], [StudentId], [ClassId], [SectionId], [IsGeneratedTC], [Description], [Createdby], [Createdon]) VALUES (1, 3, 5, 5, N'Generated', N'test', N'Admin', N'29-04-2019 14:19:15')
SET IDENTITY_INSERT [dbo].[tblStudentTC] OFF
SET IDENTITY_INSERT [dbo].[tblSubjectMaster] ON 

INSERT [dbo].[tblSubjectMaster] ([SubjectId], [SubjectName], [TotalMarks], [SubjectType], [SubjectDescription], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, N'English', 100, N'Core', N'English', N'Admin', 1, N'14-05-2019 12:47:19', N'22-05-2019 10:04:26')
INSERT [dbo].[tblSubjectMaster] ([SubjectId], [SubjectName], [TotalMarks], [SubjectType], [SubjectDescription], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (2, N'Hindi', 150, N'Core', N'Hindi', N'Admin', 1, N'14-05-2019 12:47:35', N'17-05-2019 14:31:52')
INSERT [dbo].[tblSubjectMaster] ([SubjectId], [SubjectName], [TotalMarks], [SubjectType], [SubjectDescription], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (3, N'Maths', 200, N'Core', N'Maths', N'Admin', 1, N'14-05-2019 12:47:52', N'17-05-2019 12:58:39')
INSERT [dbo].[tblSubjectMaster] ([SubjectId], [SubjectName], [TotalMarks], [SubjectType], [SubjectDescription], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (4, N'Physics', 100, N'Core', N'Physics', N'Admin', 1, N'14-05-2019 12:48:20', N'17-05-2019 12:58:50')
INSERT [dbo].[tblSubjectMaster] ([SubjectId], [SubjectName], [TotalMarks], [SubjectType], [SubjectDescription], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (5, N'Chemistry', 100, N'Core', N'Chemistry', N'Admin', 1, N'14-05-2019 12:48:40', N'17-05-2019 12:59:02')
INSERT [dbo].[tblSubjectMaster] ([SubjectId], [SubjectName], [TotalMarks], [SubjectType], [SubjectDescription], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (6, N'Biology', 100, N'Core', N'Biology', N'Admin', 1, N'14-05-2019 12:48:57', N'17-05-2019 12:59:26')
INSERT [dbo].[tblSubjectMaster] ([SubjectId], [SubjectName], [TotalMarks], [SubjectType], [SubjectDescription], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (7, N'Computers', 100, N'Core', N'Computers', N'Admin', 1, N'14-05-2019 12:49:18', N'17-05-2019 12:59:40')
INSERT [dbo].[tblSubjectMaster] ([SubjectId], [SubjectName], [TotalMarks], [SubjectType], [SubjectDescription], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (8, N'French', 100, N'Optional', N'test', N'Admin', 1, N'22-05-2019 10:50:54', NULL)
INSERT [dbo].[tblSubjectMaster] ([SubjectId], [SubjectName], [TotalMarks], [SubjectType], [SubjectDescription], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (9, N'German', 100, N'Optional', N'test', N'Admin', 1, N'22-05-2019 18:51:04', NULL)
SET IDENTITY_INSERT [dbo].[tblSubjectMaster] OFF
SET IDENTITY_INSERT [dbo].[tblSubSubjectMaster] ON 

INSERT [dbo].[tblSubSubjectMaster] ([SubId], [SubjectId], [SubSubjectName], [Marks], [Createdby], [Createdon], [Updatedon]) VALUES (1, 1, N'English I', 50, N'Admin', N'17-05-2019 14:30:10', NULL)
INSERT [dbo].[tblSubSubjectMaster] ([SubId], [SubjectId], [SubSubjectName], [Marks], [Createdby], [Createdon], [Updatedon]) VALUES (2, 1, N'English II', 50, N'Admin', N'17-05-2019 14:30:50', NULL)
INSERT [dbo].[tblSubSubjectMaster] ([SubId], [SubjectId], [SubSubjectName], [Marks], [Createdby], [Createdon], [Updatedon]) VALUES (3, 2, N'Hindi I', 50, N'Admin', N'17-05-2019 14:34:24', NULL)
INSERT [dbo].[tblSubSubjectMaster] ([SubId], [SubjectId], [SubSubjectName], [Marks], [Createdby], [Createdon], [Updatedon]) VALUES (4, 2, N'Hindi II', 50, N'Admin', N'17-05-2019 14:34:41', NULL)
INSERT [dbo].[tblSubSubjectMaster] ([SubId], [SubjectId], [SubSubjectName], [Marks], [Createdby], [Createdon], [Updatedon]) VALUES (5, 2, N'Hindi III', 50, N'Admin', N'17-05-2019 14:34:58', NULL)
INSERT [dbo].[tblSubSubjectMaster] ([SubId], [SubjectId], [SubSubjectName], [Marks], [Createdby], [Createdon], [Updatedon]) VALUES (6, 3, N'Maths I', 100, N'Admin', N'17-05-2019 14:35:36', N'17-05-2019')
INSERT [dbo].[tblSubSubjectMaster] ([SubId], [SubjectId], [SubSubjectName], [Marks], [Createdby], [Createdon], [Updatedon]) VALUES (7, 3, N'Mths II', 50, N'Admin', N'17-05-2019 14:35:51', NULL)
INSERT [dbo].[tblSubSubjectMaster] ([SubId], [SubjectId], [SubSubjectName], [Marks], [Createdby], [Createdon], [Updatedon]) VALUES (8, 3, N'Maths III', 50, N'Admin', N'17-05-2019 14:36:10', NULL)
INSERT [dbo].[tblSubSubjectMaster] ([SubId], [SubjectId], [SubSubjectName], [Marks], [Createdby], [Createdon], [Updatedon]) VALUES (1002, 8, N'French Reading', 50, N'Admin', N'22-05-2019 11:26:22', N'22-05-2019')
INSERT [dbo].[tblSubSubjectMaster] ([SubId], [SubjectId], [SubSubjectName], [Marks], [Createdby], [Createdon], [Updatedon]) VALUES (1003, 8, N'French Writing', 50, N'Admin', N'22-05-2019 11:27:18', N'22-05-2019')
INSERT [dbo].[tblSubSubjectMaster] ([SubId], [SubjectId], [SubSubjectName], [Marks], [Createdby], [Createdon], [Updatedon]) VALUES (1004, 9, N'German Reading', 50, N'Admin', N'22-05-2019 18:51:36', NULL)
INSERT [dbo].[tblSubSubjectMaster] ([SubId], [SubjectId], [SubSubjectName], [Marks], [Createdby], [Createdon], [Updatedon]) VALUES (1005, 9, N'German Writing', 50, N'Admin', N'22-05-2019 18:51:58', NULL)
SET IDENTITY_INSERT [dbo].[tblSubSubjectMaster] OFF
SET IDENTITY_INSERT [dbo].[tblteacher] ON 

INSERT [dbo].[tblteacher] ([teacherid], [Salutation], [teacherFirstName], [teacherMiddleName], [teacherLastName], [Gender], [DOB], [SubjectId], [teacherAddress], [teacherState], [teacherCity], [Pincode], [teacherCountry], [teacherContactNo], [teacherMobileNo], [teacherAadharcardNo], [teacherPANNo], [teacherPhoto], [teacherDescription], [TotalWorkinghrs], [employeecode], [username], [Pwd], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, N'Mr.', N'Santosh', N'Kumar', N'Bajpai', N'Male', N'26.10.1981', 2, N'Hussaingunj', N'34', N'597', N'226001', N'India', N'4150500', N'9305795131', N'6666666666', N'AMUPM5891M', N'~/teacherPhoto/teacher1.jpg', N'He is A General Subject teacher', N'3', N'teacher123', N'santosh', N'333', N'Admin', 1, N'16-04-2019', N'22-04-2019')
INSERT [dbo].[tblteacher] ([teacherid], [Salutation], [teacherFirstName], [teacherMiddleName], [teacherLastName], [Gender], [DOB], [SubjectId], [teacherAddress], [teacherState], [teacherCity], [Pincode], [teacherCountry], [teacherContactNo], [teacherMobileNo], [teacherAadharcardNo], [teacherPANNo], [teacherPhoto], [teacherDescription], [TotalWorkinghrs], [employeecode], [username], [Pwd], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (2, N'Mr.', N'Ravi', N'Kumar', N'Malhotra', N'Male', N'13.11.1980', 2, N'Hussaingunj', N'34', N'597', N'226001', N'India', N'4150500', N'9305795132', N'6666666666', N'AMUPM5891M', N'~/teacherPhoto/teacher2.jpg', N'He is A General Subject teacher', N'3', N'teacher456', N'ravi', N'111', N'Admin', 1, N'16-04-2019 ', N'08-05-2019')
INSERT [dbo].[tblteacher] ([teacherid], [Salutation], [teacherFirstName], [teacherMiddleName], [teacherLastName], [Gender], [DOB], [SubjectId], [teacherAddress], [teacherState], [teacherCity], [Pincode], [teacherCountry], [teacherContactNo], [teacherMobileNo], [teacherAadharcardNo], [teacherPANNo], [teacherPhoto], [teacherDescription], [TotalWorkinghrs], [employeecode], [username], [Pwd], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (3, N'Mr.', N'SatyaJeet', N'', N'Mishra', N'Male', N'09/05/2019', 2, N'test', N'34', N'597', N'226001', N'India', N'4151501', N'7777777777', N'654565456', N'AMUPM5891M', N'~/teacherPhoto/teacher3.jpg', N'He is A General Subject teacher', N'3', N'teacher666', N'satya', N'999', N'Admin', 1, N'08-05-2019', N'08-05-2019')
INSERT [dbo].[tblteacher] ([teacherid], [Salutation], [teacherFirstName], [teacherMiddleName], [teacherLastName], [Gender], [DOB], [SubjectId], [teacherAddress], [teacherState], [teacherCity], [Pincode], [teacherCountry], [teacherContactNo], [teacherMobileNo], [teacherAadharcardNo], [teacherPANNo], [teacherPhoto], [teacherDescription], [TotalWorkinghrs], [employeecode], [username], [Pwd], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1003, N'Mr.', N'John', N'', N'Johnathan', N'Male', N'22/05/1965', 8, N'test', N'19', N'301', N'226005', N'India', N'258525', N'2222222222', N'12345215', N'jkipm6789', N'~/teacherPhoto/rajan.jpg', N'Teacher', N'3', N'e5', N'john', N'john@123', N'Admin', 1, N'22-05-2019', NULL)
SET IDENTITY_INSERT [dbo].[tblteacher] OFF
SET IDENTITY_INSERT [dbo].[tblteacherAttendance] ON 

INSERT [dbo].[tblteacherAttendance] ([teacherAttendanceId], [teacherid], [Date], [Month], [Day], [Timein], [Tmeout], [TotalWorkingHours], [teacherPresent_Absent], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, 2, N'02/04/2019', N'April', N'9:30', N'Wednesday', N'18:00', N'08:30:00', N'Present', N'Admin', 1, N'17-04-2019 16:06:11', NULL)
SET IDENTITY_INSERT [dbo].[tblteacherAttendance] OFF
SET IDENTITY_INSERT [dbo].[tblteacherJoiningDetails] ON 

INSERT [dbo].[tblteacherJoiningDetails] ([JoiningId], [teacherid], [Teacherrole], [Subjectid], [JoiningDate], [Status], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, 1, N'General Subject Teacher', 1, N'02/04/2019', N'Available', N'Admin', 1, N'16-04-2019 16:57:21', NULL)
INSERT [dbo].[tblteacherJoiningDetails] ([JoiningId], [teacherid], [Teacherrole], [Subjectid], [JoiningDate], [Status], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (2, 2, N'General Subject Teacher', 1, N'02/04/2019', N'Available', N'Admin', 1, N'16-04-2019 16:57:21', NULL)
INSERT [dbo].[tblteacherJoiningDetails] ([JoiningId], [teacherid], [Teacherrole], [Subjectid], [JoiningDate], [Status], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (3, 3, N'Teacher', 1, N'08/05/2019', N'Available', N'Admin', 1, N'08-05-2019 11:46:48', NULL)
INSERT [dbo].[tblteacherJoiningDetails] ([JoiningId], [teacherid], [Teacherrole], [Subjectid], [JoiningDate], [Status], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (4, 1003, N'Foreign Language Teacher', 8, N'22/05/2019', N'Available', N'Admin', 1, N'22-05-2019 15:21:31', NULL)
SET IDENTITY_INSERT [dbo].[tblteacherJoiningDetails] OFF
SET IDENTITY_INSERT [dbo].[tblTeacherPerformance] ON 

INSERT [dbo].[tblTeacherPerformance] ([PerformanceId], [teacherid], [Date], [Month], [Level], [PerformanceDescription], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, 1, N'03/04/2019', N'April', N'Excellent', N'It''s A Test', N'Admin', 1, N'17-04-2019 17:20:09', NULL)
INSERT [dbo].[tblTeacherPerformance] ([PerformanceId], [teacherid], [Date], [Month], [Level], [PerformanceDescription], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (2, 1, N'26/04/2019', N'April', N'Excellent', N'testing', N'Admin', 1, N'26-04-2019 16:29:22', NULL)
SET IDENTITY_INSERT [dbo].[tblTeacherPerformance] OFF
SET IDENTITY_INSERT [dbo].[tblteacherSalary] ON 

INSERT [dbo].[tblteacherSalary] ([SalaryId], [teacherid], [Basic], [TA], [DA], [HRA], [OtherDeductions], [ActualPay], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, 1, 12000, 300, 100, 200, 200, 12500, N'Admin', 1, N'16-04-2019 16:57:39', NULL)
INSERT [dbo].[tblteacherSalary] ([SalaryId], [teacherid], [Basic], [TA], [DA], [HRA], [OtherDeductions], [ActualPay], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (2, 2, 12000, 300, 100, 200, 200, 12500, N'Admin', 1, N'16-04-2019 16:57:39', NULL)
INSERT [dbo].[tblteacherSalary] ([SalaryId], [teacherid], [Basic], [TA], [DA], [HRA], [OtherDeductions], [ActualPay], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (3, 3, 8000, 300, 0, 0, 25, 8325, N'Admin', 1, N'08-05-2019 11:46:59', NULL)
INSERT [dbo].[tblteacherSalary] ([SalaryId], [teacherid], [Basic], [TA], [DA], [HRA], [OtherDeductions], [ActualPay], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1003, 1003, 8000, 200, 200, 200, 200, 8600, N'Admin', 1, N'22-05-2019 15:21:31', NULL)
SET IDENTITY_INSERT [dbo].[tblteacherSalary] OFF
SET IDENTITY_INSERT [dbo].[tblTeacherTimeTable] ON 

INSERT [dbo].[tblTeacherTimeTable] ([TimeTableId], [Date], [Day], [teacherid], [TPeriod], [TFrom], [Till], [SubsubjectId], [ClassId], [SectionId], [ISClassTeacher], [ClassDesc], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, N'18/04/2019', N'Wednesday', 1, N'Vth Period', N'11:00', N'11:40', 1, 4, 3, N'teacher', N'test', N'Admin', 1, N'18-04-2019 11:54:44', N'09-05-2019 11:44:09')
INSERT [dbo].[tblTeacherTimeTable] ([TimeTableId], [Date], [Day], [teacherid], [TPeriod], [TFrom], [Till], [SubsubjectId], [ClassId], [SectionId], [ISClassTeacher], [ClassDesc], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (2, N'20/05/2019', N'Monday', 2, N'Ist Period', N'7:20', N'8:00', 4, 4, 2, N'teacher', N'Test', N'Admin', 1, N'20-05-2019 18:46:32', NULL)
SET IDENTITY_INSERT [dbo].[tblTeacherTimeTable] OFF
SET IDENTITY_INSERT [dbo].[tblVehicleDetails] ON 

INSERT [dbo].[tblVehicleDetails] ([VehicleId], [VehicleType], [VehicleNo], [DriverName], [DriverAadharNo], [ConductorName], [ConductorAadharNo], [VehicleDesc], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (1, N'Bus', N'up1234', N'Ram Naresh', N'123456789', N'Shivpal', N'555555550', N'Test', N'Admin', 1, N'16-04-2019 12:33:31', N'6/8/2019 1:21:32 PM')
INSERT [dbo].[tblVehicleDetails] ([VehicleId], [VehicleType], [VehicleNo], [DriverName], [DriverAadharNo], [ConductorName], [ConductorAadharNo], [VehicleDesc], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (2, N'Rickshaw', N'up4321', N'Ram pal', N'123654897', N'Shivnaresh', N'66666666', N'test', N'Admin', 1, N'16-04-2019 12:34:56', NULL)
INSERT [dbo].[tblVehicleDetails] ([VehicleId], [VehicleType], [VehicleNo], [DriverName], [DriverAadharNo], [ConductorName], [ConductorAadharNo], [VehicleDesc], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (3, N'Van', N'up9870', N'Ramesh Tewari', N'123654897', N'Shivpant', N'77777777', N'test', N'Admin', 1, N'16-04-2019 12:34:56', NULL)
INSERT [dbo].[tblVehicleDetails] ([VehicleId], [VehicleType], [VehicleNo], [DriverName], [DriverAadharNo], [ConductorName], [ConductorAadharNo], [VehicleDesc], [Createdby], [UserId], [Createdon], [Updatedon]) VALUES (4, N'Bus', N'upp11234', N'Ram Naresh', N'8989898989898', N'Pawan', N'9999999999', N'test', N'Admin', 1, N'6/8/2019 1:26:32 PM', NULL)
SET IDENTITY_INSERT [dbo].[tblVehicleDetails] OFF
/****** Object:  StoredProcedure [dbo].[GetAllTimeTable]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllTimeTable] 
as
declare @temp table (teacherid int,[Day] varchar(15),P1 varchar(50),P2 varchar(50),P3 varchar(50),P4 varchar(50),P5 varchar(50),P6 varchar(50),P7 varchar(50),P8 varchar(50));
DECLARE @str VARCHAR(max);
Declare @str1 VARCHAR(max);

select @str1=(a.teacherid) from tblTeacherTimeTable a
inner join tblteacher t on a.teacherid=t.teacherid
inner join tblAllotment dt on a.teacherid=dt.teacherid

insert into @temp(teacherid,[Day]) values (@str1,'Monday');
insert into @temp(teacherid,[Day]) values (@str1,'Tuesday');
insert into @temp(teacherid,[Day]) values (@str1,'Wednesday');
insert into @temp(teacherid,[Day]) values (@str1,'Thursday');
insert into @temp(teacherid,[Day]) values (@str1,'Friday');
insert into @temp(teacherid,[Day]) values (@str1,'Saturday');

select @str=(t.teacherFirstName+' '+t.teacherMiddleName+' '+t.teacherLastName+' '+ b.ClassName+' '+c.SectionName+' '+s.SubSubjectName+a.TFrom+a.Till) from tblTeacherTimeTable a
inner join tblClassMaster b on a.ClassId=b.ClassId
inner join tblteacher t on a.teacherid=t.teacherid
inner join tblAllotment dt on a.teacherid=dt.teacherid
inner join tblSubSubjectMaster s on a.SubsubjectId=s.SubId
inner join tblSectionMaster c on a.SectionId=c.SectionId;

update @temp  set P5=@str
where [Day]='Monday';

update @temp  set P5=@str
where [Day]='Tuesday';

update @temp  set P5=@str
where [Day]='Wednesday';

update @temp  set P5=@str
where [Day]='Thursday';

update @temp  set P5=@str
where [Day]='Friday';

update @temp  set P5=@str
where [Day]='Saturday';


select * from @temp;

--------------

GO
/****** Object:  StoredProcedure [dbo].[GetTimeTable]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetTimeTable] 
@teacherid int
as
declare @temp table (teacherid int,[Day] varchar(15),P1 varchar(50),P2 varchar(50),P3 varchar(50),P4 varchar(50),P5 varchar(50),P6 varchar(50),P7 varchar(50),P8 varchar(50));
DECLARE @str VARCHAR(max);
insert into @temp(teacherid,[Day]) values (@teacherid,'Monday');
insert into @temp(teacherid,[Day]) values (@teacherid,'Tuesday');
insert into @temp(teacherid,[Day]) values (@teacherid,'Wednesday');
insert into @temp(teacherid,[Day]) values (@teacherid,'Thursday');
insert into @temp(teacherid,[Day]) values (@teacherid,'Friday');
insert into @temp(teacherid,[Day]) values (@teacherid,'Saturday');

select @str=(t.teacherFirstName+' '+t.teacherMiddleName+' '+t.teacherLastName+' '+ b.ClassName+' '+c.SectionName+' '+s.SubSubjectName+a.TFrom+a.Till) from tblTeacherTimeTable a
inner join tblClassMaster b on a.ClassId=b.ClassId
inner join tblteacher t on a.teacherid=t.teacherid
inner join tblAllotment dt on a.teacherid=dt.teacherid
inner join tblSubSubjectMaster s on a.SubsubjectId=s.SubId
inner join tblSectionMaster c on a.SectionId=c.SectionId where a.teacherid=@teacherid;

update @temp  set P5=@str
where [Day]='Monday';

update @temp  set P5=@str
where [Day]='Tuesday';

update @temp  set P5=@str
where [Day]='Wednesday';

update @temp  set P5=@str
where [Day]='Thursday';

update @temp  set P5=@str
where [Day]='Friday';

update @temp  set P5=@str
where [Day]='Saturday';


select * from @temp;

--------------

GO
/****** Object:  StoredProcedure [dbo].[prc_UpdateStaff]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_UpdateStaff]
(
@Staffid int,
@Salutation varchar(10),
@StaffFirstName varchar(30),
@StaffMiddleName varchar(30),
@StaffLastName varchar(30),
@Gender varchar(30),
@DOB varchar(20),
@StaffAddress varchar(200),
@StaffState varchar(30),
@StaffCity varchar(30),
@Pincode varchar(10),
@StaffCountry varchar(30),
@StaffContactNo varchar(30),
@StaffMobileNo varchar(30),
@StaffAadharcardNo varchar(30),
@StaffDescription varchar(max),
@TotalWorkinghrs varchar(10),
@StaffType varchar(20),
@employeecode varchar(50),
@username varchar(10),
@pwd varchar(10),
@Createdby varchar(20),
@UserId int,
@Updatedon varchar(30)
)
As 
Update tblStaff set Salutation=@Salutation,StaffFirstName=@StaffFirstName,StaffMiddleName=@StaffMiddleName,StaffLastName=@StaffLastName,Gender=@Gender,DOB=@DOB,
StaffAddress=@StaffAddress,StaffState=@StaffState,StaffCity=@StaffCity,Pincode=@Pincode,StaffCountry=@StaffCountry,StaffContactNo=@StaffContactNo,StaffMobileNo=@StaffMobileNo,
StaffAadharcardNo=@StaffAadharcardNo,StaffDescription=@StaffDescription,TotalWorkinghrs=@TotalWorkinghrs,StaffType=@StaffType,employeecode=@employeecode,username=@username,pwd=@pwd,Createdby=@Createdby,UserId=@UserId,
Updatedon=@Updatedon where staffid=@Staffid

GO
/****** Object:  StoredProcedure [dbo].[proc_AddAllotment]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_AddAllotment]
(
@teacherid int,
@ClassId int,
@SectionId int,
@SubId int,
@Createdby varchar(10),
@Createdon varchar(max)
)
As
insert into tblAllotment(teacherid,ClassId,SectionId,SubId,Createdby,Createdon)
values(@teacherid,@ClassId,@SectionId,@SubId,@Createdby,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddClass]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_AddClass]
(
@ClassName varchar(30),
@description varchar(30),
@Createdby varchar(30),
@UserId int,
@Createdon varchar(30)
)
As
Insert into tblClassMaster(ClassName,description,Createdby,UserId,Createdon)values(@ClassName,@description,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddClassPromotion]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddClassPromotion]
(
@StudentId int,
@promotedClassId int,
@promotedSectionId int,
@IsPromoted varchar(15),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblClassPromotion(StudentId,promotedClassId,promotedSectionId,IsPromoted,Createdby,UserId,Createdon)
values(@StudentId,@promotedClassId,@promotedSectionId,@IsPromoted,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddClassTeacher]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_AddClassTeacher]
(
@teacherid int,
@ClassId int,
@SectionId int,
@IsClassteacher varchar(5),
@Createdby varchar(10),
@Createdon varchar(30),
@Userid int
)
As insert into tblClassTeacher(teacherid,ClassId,SectionId,IsClassteacher,Createdby,Createdon,Userid)
values(@teacherid,@ClassId,@SectionId,@IsClassteacher,@Createdby,@Createdon,@Userid)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddCurriclumn]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_AddCurriclumn]
(
@Date varchar(20),
@Topic varchar(20),
@Curriculumndesc varchar(max),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As 
insert into tblSchoolManagementCurriculumn(Date,Topic,Curriculumndesc,Createdby,UserId,Createdon)
values(@Date,@Topic,@Curriculumndesc,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddExpense]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddExpense]
(
@ItemName varchar(20),
@ExpnseInRs decimal(18, 2),
@Expensedesc varchar(200),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblScholDailyExpenses(ItemName,ExpnseInRs,Expensedesc,Createdby,UserId,Createdon)
values(@ItemName,@ExpnseInRs,@Expensedesc,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddExtraCurricularActivityDetails]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddExtraCurricularActivityDetails]
(
@StudentId int,
@ClassId int,
@SectionId int,
@StudentExtraCurricularActivity varchar(max),
@Description varchar(max),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblStudentExtraCurricularActivityDetails(StudentId,ClassId,SectionId,StudentExtraCurricularActivity,Description,Createdby,UserId,Createdon)
values(@StudentId,@ClassId,@SectionId,@StudentExtraCurricularActivity,@Description,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddFee]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddFee]
(
@Date varchar(15),
@Month varchar(12),
@StudentId int,
@ClassId int,
@SectionId int,
@VehicleId int,
@TutionFee int,
@LibraryFee int,
@TrnsportationFee int,
@Others int,
@Otherdesc varchar(100),
@TotalFee int,
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblStudentFeeDetail(Date,Month,StudentId,ClassId,SectionId,VehicleId,TutionFee,LibraryFee,TrnsportationFee,Others,Otherdesc,TotalFee,Createdby,UserId,Createdon)
values(@Date,@Month,@StudentId,@ClassId,@SectionId,@VehicleId,@TutionFee,@LibraryFee,@TrnsportationFee,@Others,@Otherdesc,@TotalFee,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddMarks]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddMarks]
(
@StudentId int,
@ClassId int,
@SectionId int,
@SemesterType varchar(15),
@Reading int,
@Writing int,
@English int,
@Hindi int,
@Maths int,
@Science int,
@Computers int,
@SocialStudies int,
@Health int,
@PhysicalEducation varchar(5),
@Comment varchar(max),
@Createdby varchar(10),
@Userid int,
@Createdon varchar(30)
)
As
insert into tblStudentMarks(StudentId,ClassId,SectionId,SemesterType,Reading,Writing,English,Hindi,Maths,Science,Computers,SocialStudies,Health,PhysicalEducation,Comment,Createdby,Userid,Createdon)
values(@StudentId,@ClassId,@SectionId,@SemesterType,@Reading,@Writing,@English,@Hindi,@Maths,@Science,@Computers,@SocialStudies,@Health,@PhysicalEducation,@Comment,@Createdby,@Userid,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddMarksObtained]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddMarksObtained]
(
@ClassId int,
@SectionId int,
@SubId int,
@StudentId int,
@teacherid int,
@ExamType varchar(15),
@MarksObt int,
@UserId int,
@Createdon varchar(50)
)
As
Insert into tblMarksObtained(ClassId,SectionId,SubId,StudentId,teacherid,ExamType,MarksObt,UserId,Createdon)
values(@ClassId,@SectionId,@SubId,@StudentId,@teacherid,@ExamType,@MarksObt,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddNotice]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[proc_AddNotice]
(
@Date varchar(20),
@Topic varchar(20),
@Noticedesc varchar(max),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As 
insert into tblSchoolManagementNotice(Date,Topic,Noticedesc,Createdby,UserId,Createdon)
values(@Date,@Topic,@Noticedesc,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddOptionalSubject]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[proc_AddOptionalSubject]
(
@ClassId int,
@SectionId int,
@SubjectId int,
@SubId int,
@teacherid int,
@StudentId int,
@StudentAlloted varchar(5),
@Createdby varchar(20),
@Userid int,
@Createdon varchar(50)
)
As
insert into tblOptionalSubject(ClassId,SectionId,SubjectId,SubId,teacherid,StudentId,StudentAlloted,Createdby,Userid,Createdon)
values(@ClassId,@SectionId,@SubjectId,@SubId,@teacherid,@StudentId,@StudentAlloted,@Createdby,@Userid,@Createdon) 

GO
/****** Object:  StoredProcedure [dbo].[proc_AddPerformance]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddPerformance]
(
@StudentId int,
@ClassId int,
@SectionId int,
@PerformanceLevel varchar(20),
@PerfeormanceDscription varchar(max),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblStudentPerformancedetail(StudentId,ClassId,SectionId,PerformanceLevel,PerfeormanceDscription,Createdby,UserId,Createdon)
values(@StudentId,@ClassId,@SectionId,@PerformanceLevel,@PerfeormanceDscription,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddRouteMater]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddRouteMater]
(
@VehicleId int,
@VehicleNo varchar(20),
@RouteFrom varchar(20),
@RouteTo  varchar(20),
@Createdby varchar(30),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblroutemaster(VehicleId,VehicleNo,RouteFrom,RouteTo,Createdby,UserId,Createdon)
values(@VehicleId,@VehicleNo,@RouteFrom,@RouteTo,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddSalary]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_AddSalary]
(
@Staffid int,
@Basic int,
@TA int,
@DA int,
@HRA int,
@OtherDeductions int,
@ActualPay int,
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblStaffSalary(Staffid,Basic,TA,DA,HRA,OtherDeductions,ActualPay,Createdby,UserId,Createdon)
values(@Staffid,@Basic,@TA,@DA,@HRA,@OtherDeductions,@ActualPay,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddSection]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_AddSection]
(
@SectionName varchar(30),
@description varchar(30),
@Createdby varchar(30),
@UserId int,
@Createdon varchar(30)
)
As
Insert into tblSectionMaster(SectionName,description,Createdby,UserId,Createdon)values(@SectionName,@description,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddShifts]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddShifts]
(
@ShiftName varchar(20),
@WprkingTimeStart varchar(20),
@WorkingTimeEnd varchar(20),
@WorkinghHrs varchar(20),
@WorkingDays int,
@Createdby varchar(10),
@Userid int,
@Createdon varchar(30)
)
As
insert into tblShifts(ShiftName,WprkingTimeStart,WorkingTimeEnd,WorkinghHrs,WorkingDays,Createdby,Userid,Createdon)
values(@ShiftName,@WprkingTimeStart,@WorkingTimeEnd,@WorkinghHrs,@WorkingDays,@Createdby,@Userid,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddStaff]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddStaff]
(
@Salutation varchar(10),
@StaffFirstName varchar(30),
@StaffMiddleName varchar(30),
@StaffLastName varchar(30),
@Gender varchar(30),
@DOB varchar(20),
@StaffAddress varchar(200),
@StaffState varchar(30),
@StaffCity varchar(30),
@Pincode varchar(10),
@StaffCountry varchar(30),
@StaffContactNo varchar(30),
@StaffMobileNo varchar(30),
@StaffAadharcardNo varchar(30),
@StaffPhoto varchar(30),
@StaffDescription varchar(max),
@TotalWorkinghrs varchar(10),
@StaffType	varchar(20),
@employeecode varchar(50),
@username	varchar(20),
@pwd	varchar(10),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblStaff(Salutation,StaffFirstName,StaffMiddleName,StaffLastName,Gender,DOB,StaffAddress,StaffState,StaffCity,Pincode,
StaffCountry,StaffContactNo,StaffMobileNo,StaffAadharcardNo,StaffPhoto,StaffDescription,TotalWorkinghrs,StaffType,employeecode,username,pwd,Createdby,UserId,Createdon)
values(@Salutation,@StaffFirstName,@StaffMiddleName,@StaffLastName,@Gender,@DOB,@StaffAddress,@StaffState,@StaffCity,@Pincode,
@StaffCountry,@StaffContactNo,@StaffMobileNo,@StaffAadharcardNo,@StaffPhoto,@StaffDescription,@TotalWorkinghrs,@StaffType,@employeecode,@username,@pwd,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddStaffAttendance]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddStaffAttendance]
(
@Staffid int,
@Date varchar(20),
@Month varchar(20),
@Day varchar(20),
@Timein varchar(20),
@Tmeout varchar(20),
@TotalWorkingHours varchar(20), 
@StaffPresent_Absent varchar(20),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
Insert into tblStaffAttendance(Staffid,Date,Month,Day,Timein,Tmeout,TotalWorkingHours,StaffPresent_Absent,Createdby ,UserId,Createdon)
values(@Staffid,@Date,@Month,@Day,@Timein,@Tmeout,@TotalWorkingHours, @StaffPresent_Absent,@Createdby ,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddStaffJoiningDetails]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[proc_AddStaffJoiningDetails]
(
@SMId int,
@Staffid int,
@Staffrole varchar(20),
@JoiningDate varchar(20),
@Status varchar(30),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblStaffJoiningDetails(SMId,Staffid,Staffrole,JoiningDate,Status,Createdby,UserId,Createdon)
values(@SMId,@Staffid,@Staffrole,@JoiningDate,@Status,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddStaffTypeMaster]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddStaffTypeMaster]
(
@SMType varchar(50),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblStaffTypeMaster(SMType,Createdby,UserId,Createdon)values(@SMType,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddStudent]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[proc_AddStudent]
(
@StudentFirstName varchar(30),
@StudentMiddleName varchar(30),
@StudentLastName varchar(30),
@Gender varchar(10),
@DOB varchar(20),
@BloodGroup varchar(10),
@StudentEnrollmentNo varchar(20),
@StudentRollNo varchar(12),
@StudentAadharNo varchar(30),
@StudentPhoto varchar(30),
@StudentCorrespondanceAddress varchar(100),
@StudentPermanentAddress varchar(200),
@StateId int,
@CityId int,
@Pincode varchar(10),
@HomeContactNo varchar(30),
@StudentContactNo varchar(30),
@StudentFatherName varchar(30),
@StudentFatherContactNo varchar(30),
@StudentFatherOccupation varchar(30),
@StudentFatherDesignation varchar(30),
@StudentFatherIncome varchar(30),
@StudentMotherName varchar(30),
@StudentMotherContactNo varchar(30),
@StudentMotherOccupation varchar(30),
@StudentMotherDesignation varchar(30),
@StudentMotherIncome varchar(30),
@Createdby varchar(30),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblStudent(StudentFirstName,StudentMiddleName,StudentLastName,Gender,DOB,BloodGroup,StudentEnrollmentNo,StudentRollNo,StudentAadharNo,
StudentPhoto,StudentCorrespondanceAddress,StudentPermanentAddress,StateId,CityId,Pincode,HomeContactNo,StudentContactNo,StudentFatherName,
StudentFatherContactNo,StudentFatherOccupation,StudentFatherDesignation,StudentFatherIncome,
StudentMotherName,StudentMotherContactNo,StudentMotherOccupation,
StudentMotherDesignation,StudentMotherIncome,Createdby,UserId,Createdon)
values(@StudentFirstName,@StudentMiddleName,@StudentLastName,@Gender,@DOB,@BloodGroup,@StudentEnrollmentNo,@StudentRollNo,@StudentAadharNo,
@StudentPhoto,@StudentCorrespondanceAddress,@StudentPermanentAddress,@StateId,@CityId,@Pincode,@HomeContactNo,@StudentContactNo,@StudentFatherName,
@StudentFatherContactNo,@StudentFatherOccupation,@StudentFatherDesignation,@StudentFatherIncome,
@StudentMotherName,@StudentMotherContactNo,@StudentMotherOccupation,
@StudentMotherDesignation,@StudentMotherIncome,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddStudentAttendance]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_AddStudentAttendance]
(
@StudentId int,
@Date varchar(20),
@Month varchar(20),
@Day varchar(10),
@IsPresent_Absent varchar(5),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
Insert into tblStudentAttendance(StudentId,Date,Month,Day,IsPresent_Absent,Createdby,UserId,Createdon)
values(@StudentId,@Date,@Month,@Day,@IsPresent_Absent,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddStudentClassAllotment]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddStudentClassAllotment] 
(
@StudentId int,
@IsEntraneExaminationPassed varchar(5),
@ClassId int,
@SectionId int,
@Createdby varchar(30),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblStudentClassAllotment(StudentId,IsEntraneExaminationPassed,ClassId,SectionId,Createdby,UserId,Createdon)
values(@StudentId,@IsEntraneExaminationPassed,@ClassId,@SectionId,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddSubjectMaster]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddSubjectMaster]
(
@SubjectName varchar(30),
@TotalMarks int,
@SubjectType varchar(30),
@SubjectDescription varchar(max),
@Createdby varchar(30),
@UserId int,
@Createdon varchar(30)
)
As insert into tblSubjectMaster
(SubjectName,TotalMarks,SubjectType,SubjectDescription,Createdby,UserId,Createdon)
values(@SubjectName,@TotalMarks,@SubjectType,@SubjectDescription,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddSubSubject]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddSubSubject]
(
@SubjectId int,
@SubSubjectName varchar(20),
@Marks int,
@Createdby varchar(10),
@Createdon varchar(max)
)
As
insert into tblSubSubjectMaster(SubjectId,SubSubjectName,Marks,Createdby,Createdon)values(@SubjectId,@SubSubjectName,@Marks,@Createdby,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddTC]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[proc_AddTC]
(
@StudentId int,
@ClassId int,
@SectionId int,
@IsGeneratedTC varchar(10),
@Description varchar(200),
@Createdby varchar(10),
@Createdon varchar(20)
)
As
Insert into tblStudentTC(StudentId,ClassId,SectionId,IsGeneratedTC,Description,Createdby,Createdon)
values(@StudentId,@ClassId,@SectionId,@IsGeneratedTC,@Description,@Createdby,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_Addteacher]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_Addteacher]
(
@Salutation varchar(10),
@teacherFirstName varchar(30),
@teacherMiddleName varchar(30),
@teacherLastName varchar(30),
@Gender varchar(10),
@DOB varchar(15),
@SubjectId int,
@teacherAddress varchar(200),
@teacherState varchar(30),
@teacherCity varchar(30),
@Pincode varchar(10),
@teacherCountry varchar(30),
@teacherContactNo varchar(30),
@teacherMobileNo varchar(30),
@teacherAadharcardNo varchar(30),
@teacherPANNo varchar(30),
@teacherPhoto varchar(30),
@teacherDescription varchar(max),
@TotalWorkinghrs varchar(10),
@employeecode varchar(50),
@username varchar(30),
@Pwd varchar(30),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)As
insert into tblteacher(Salutation,teacherFirstName,teacherMiddleName,teacherLastName,Gender,DOB,SubjectId,teacherAddress,teacherState,teacherCity,Pincode,teacherCountry,teacherContactNo,teacherMobileNo,
teacherAadharcardNo,teacherPANNo,teacherPhoto,teacherDescription,TotalWorkinghrs,employeecode,username,Pwd,Createdby,UserId,Createdon)
values(@Salutation,@teacherFirstName,@teacherMiddleName,@teacherLastName,@Gender,@DOB,@SubjectId,@teacherAddress,@teacherState,@teacherCity,@Pincode,@teacherCountry,@teacherContactNo,@teacherMobileNo,
@teacherAadharcardNo,@teacherPANNo,@teacherPhoto,@teacherDescription,@TotalWorkinghrs,@employeecode,@username,@Pwd,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddteacherAttendance]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddteacherAttendance]
(
@teacherid int,
@Date varchar(20),
@Month varchar(20),
@Day varchar(20),
@Timein varchar(20),
@Tmeout varchar(20),
@TotalWorkingHours varchar(20),
@teacherPresent_Absent varchar(20),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblteacherAttendance(teacherid,Date,Month,Day,Timein,Tmeout,TotalWorkingHours,teacherPresent_Absent,Createdby,UserId,Createdon)
values(@teacherid,@Date,@Month,@Timein,@Day,@Tmeout,@TotalWorkingHours,@teacherPresent_Absent,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddteacherJoiningDetails]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddteacherJoiningDetails]
(
@teacherid int,
@Teacherrole varchar(50),
@Subjectid int,
@JoiningDate varchar(20),
@Status varchar(30),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblteacherJoiningDetails(teacherid,Teacherrole,Subjectid,JoiningDate,Status,Createdby,UserId,Createdon)
values(@teacherid,@Teacherrole,@Subjectid,@JoiningDate,@Status,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddteacherPerformance]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_AddteacherPerformance]
(
@teacherid int,
@Date varchar(20),
@Month varchar(20),
@Level varchar(20), 
@PerformanceDescription varchar(max),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblTeacherPerformance(teacherid,Date,Month,Level,PerformanceDescription,Createdby,UserId,Createdon)
values(@teacherid,@Date,@Month,@Level,@PerformanceDescription,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddteacherSalary]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_AddteacherSalary]
(
@teacherid int,
@Basic int,
@TA int,
@DA int,
@HRA int,
@OtherDeductions int,
@ActualPay int,
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblteacherSalary(teacherid,Basic,TA,DA,HRA,OtherDeductions,ActualPay,Createdby,UserId,Createdon)
values(@teacherid,@Basic,@TA,@DA,@HRA,@OtherDeductions,@ActualPay,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddTimeTable]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddTimeTable]
(
@Date varchar(30),
@Day Varchar(10),
@teacherid int,
@TPeriod varchar(10),
@TFrom varchar(10),
@Till varchar(10),
@SubsubjectId int,
@ClassId int,
@SectionId int,
@ISClassTeacher varchar(10),
@ClassDesc varchar(max),
@Createdby varchar(30),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblTeacherTimeTable(Date,Day,teacherid,TPeriod,TFrom,Till,SubsubjectId,ClassId,SectionId,ISClassTeacher,ClassDesc,Createdby,UserId,Createdon)
values( @Date,@Day,@teacherid,@TPeriod,@TFrom,@Till,@SubsubjectId,@ClassId,@SectionId,@ISClassTeacher,@ClassDesc,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_AddVehicleDetails]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddVehicleDetails]
(
@VehicleType varchar(20),
@VehicleNo varchar(20),
@DriverName varchar(20),
@DriverAadharNo  varchar(20),
@ConductorName varchar(20),
@ConductorAadharNo varchar(20),
@VehicleDesc varchar(max),
@Createdby varchar(30),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblVehicleDetails(VehicleType,VehicleNo,DriverName,ConductorName,DriverAadharNo,ConductorAadharNo,VehicleDesc,Createdby,UserId,Createdon)
values(@VehicleType,@VehicleNo,@DriverName,@ConductorName,@DriverAadharNo,@ConductorAadharNo,@VehicleDesc,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_ChangeAdminPassWord]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[proc_ChangeAdminPassWord]
(
@Pwd varchar(10)
)
As
update tblSchoolUserDetails set Pwd=@Pwd where UserId=1

GO
/****** Object:  StoredProcedure [dbo].[proc_ChangeteacherPassWord]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[proc_ChangeteacherPassWord]
(
@teacherid int,
@Pwd varchar(10)
)
As
update tblteacher set Pwd=@Pwd where teacherid=@teacherid

GO
/****** Object:  StoredProcedure [dbo].[proc_CheckLogin]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CheckLogin] 
(
@username varchar(20),
@pwd varchar(20)
)
As
select UserId,SchoolName,BranchName,Address,Contact,Mobile,username,pwd,Createdby,Createdon from tblSchoolUserDetails where username=@username And pwd=@pwd

GO
/****** Object:  StoredProcedure [dbo].[proc_CheckStaffLogin]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_CheckStaffLogin]
(
@username varchar(20),
@pwd varchar(20)
)
As
select staffid,Salutation+' '+StaffFirstName+' '+StaffMiddleName+' '+StaffLastName+'('+employeecode+')' as 'Staff Name',StaffAddress,StaffState,StaffCity,
StaffCountry,StaffContactNo,StaffMobileNo,StaffAadharcardNo,StaffPhoto,StaffDescription,TotalWorkinghrs,StaffType,username,pwd,Createdby,UserId,Createdon from tblstaff
where username=@username And pwd=@Pwd

GO
/****** Object:  StoredProcedure [dbo].[proc_CheckTeacherLogin]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_CheckTeacherLogin]
(
@username varchar(20),
@pwd varchar(20)
)
As
select teacherid,Salutation+' '+teacherFirstName+' '+teacherMiddleName+' '+teacherLastName+'('+employeecode+')' as 'Teacher Name',SubjectId,teacherAddress,teacherState,teacherCity,
teacherCountry,teacherContactNo,teacherMobileNo,teacherAadharcardNo,teacherPhoto,teacherDescription,TotalWorkinghrs,username,Pwd,Createdby,UserId,Createdon from tblteacher
where username=@username And pwd=@Pwd

GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteAllotment]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[proc_DeleteAllotment]
(
@AllotmentId int
)
As
Delete from tblAllotment where AllotmentId=@AllotmentId

GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteClass]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_DeleteClass]
(
@ClassId int
)
As
Delete from tblClassMaster where ClassId=@ClassId

GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteClassTeacher]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_DeleteClassTeacher]
(
@Id int
)
As
delete from tblClassTeacher where Id=@Id

GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteCurriCulm]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_DeleteCurriCulm]
(
@CurriculumnId int
)
As
Delete from tblSchoolManagementCurriculumn where CurriculumnId=@CurriculumnId

GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteMarksObtained]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[proc_DeleteMarksObtained]
(
@ObtId int
)
As
Delete from tblMarksObtained where ObtId=@ObtId

GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteNotice]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_DeleteNotice]
(
@NoticeId int
)
As
Delete from tblSchoolManagementNotice where NoticeId=@NoticeId

GO
/****** Object:  StoredProcedure [dbo].[proc_Deleterouute]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_Deleterouute]
(
@routeid int
)
As
Delete from tblroutemaster where routeid=@routeid

GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteSection]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_DeleteSection]
(
@SectionId int
)
As
Delete from tblSectionMaster where SectionId=@SectionId

GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteShifts]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[proc_DeleteShifts]
(
@ShiftId int
)
As
Delete From tblShifts Where ShiftId=@ShiftId

GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteStaff]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[proc_DeleteStaff]
(
@Staffid int
)
As
Delete from tblStaff  where staffid=@Staffid
delete from tblStaffJoiningDetails where staffid=@Staffid
delete from tblStaffSalary where staffid=@Staffid

GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteStaffTypeMaster]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_DeleteStaffTypeMaster]
(
@SMId int
)
As
Delete from tblStaffTypeMaster where SMId=@SMId

GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteStudent]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_DeleteStudent]
(
@StudentId int
)
As
delete from tblStudent where StudentId=@StudentId
delete tblStudentClassAllotment where StudentId=@StudentId

GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteSubjectMaster]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_DeleteSubjectMaster]
(
@SubjectId int
)
As
Delete from tblSubjectMaster where SubjectId=@SubjectId

GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteSubSubject]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_DeleteSubSubject]
(
@SubId int
)
As
Delete from tblSubSubjectMaster where SubId=@SubId

GO
/****** Object:  StoredProcedure [dbo].[proc_Deleteteacher]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_Deleteteacher]
(
@teacherid int
)
As
Delete from tblteacher  where teacherid=@teacherid
delete from tblteacherJoiningDetails where teacherid=@teacherid

GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteTimeTable]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  procedure [dbo].[proc_DeleteTimeTable]
(
@TimeTableId int
)
As
Delete tblTeacherTimeTable where TimeTableId=@TimeTableId

GO
/****** Object:  StoredProcedure [dbo].[proc_DeleteVehicle]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[proc_DeleteVehicle]
(
@VehicleId int
)
As
Delete From tblVehicleDetails where VehicleId=@VehicleId

GO
/****** Object:  StoredProcedure [dbo].[proc_GenerateteacherSalary]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_GenerateteacherSalary]
(
@teacherid int,
@SalaryDate varchar(20),
@StaffMonth varchar(20),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblGenerateteacherSalary(teacherid,SalaryDate,StaffMonth,Createdby,UserId,Createdon)
values(@teacherid,@SalaryDate,@StaffMonth,@Createdby,@UserId,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_GetCity]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_GetCity]
(
@StateID int
)
As
Select City_ID,CityName from City where State_ID=@StateID

GO
/****** Object:  StoredProcedure [dbo].[proc_GetClassSection]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_GetClassSection] 
(
@StudentId int
)
As
select ClassId,SectionId from tblStudentClassAllotment where StudentId=@StudentId

GO
/****** Object:  StoredProcedure [dbo].[proc_GetStudent]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_GetStudent]
(
@ClassId int,
@SectionId int
)
As
select  st.studentid,st.StudentRollNo,st.StudentFirstName+st.StudentMiddleName+st.StudentLastName as 'Student Name' from tblStudentClassAllotment b
inner join tblStudent st on b.StudentId=st.StudentId
inner join tblStudent s on b.StudentId=s.StudentId
inner join tblClassMaster c on b.ClassId=c.ClassId
inner join tblSectionMaster d on b.SectionId=d.SectionId where b.ClassId=@ClassId and b.SectionId=@SectionId 

GO
/****** Object:  StoredProcedure [dbo].[proc_GetStudentAttendance]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_GetStudentAttendance]
(
@teacherid int
)
As
select  st.studentid,st.StudentFirstName+st.StudentMiddleName+st.StudentLastName as 'Student Name',d.ClassName,e.SectionName,b.* from tblStudentAttendance b
inner join tblStudent st on b.StudentId=st.StudentId
inner join tblStudentClassAllotment c on b.StudentId=c.StudentId
inner join tblClassMaster d on c.ClassId=d.ClassId
inner join tblSectionMaster e on c.SectionId=e.SectionId where b.UserId=@teacherid

GO
/****** Object:  StoredProcedure [dbo].[proc_IDCard]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_IDCard]
 (
 @StudentId int
 )
 As
 select B.StudentFirstName+' '+B.StudentMiddleName+' '+B.StudentLastName as 'Name',B.StudentRollNo,B.StudentCorrespondanceAddress,B.StudentPermanentAddress,
 B.DOB,B.BloodGroup,B.StudentPhoto,B.StudentFatherName,B.StudentMotherName,B.StudentFatherContactNo,B.StudentMotherContactNo,C.ClassName,S.SectionName from tblStudent B
 inner join tblStudentClassAllotment A on B.StudentId=A.StudentId
 inner join tblClassMaster C on A.ClassId=C.ClassId
 inner Join tblSectionMaster S on A.SectionId=S.SectionId
 where B.StudentId= @StudentId

GO
/****** Object:  StoredProcedure [dbo].[proc_MarksHS]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_MarksHS]
(
@StudentId int,
@ClassId int,
@SectionId int,
@SemesterType varchar(15),
@English_Ist int,
@English_IInd int,
@Hindi_Ist int,
@Hindi_IInd int,
@Math_Ist int,
@Math_IInd int,
@Physics int,
@Chemistry int,
@Bio int,
@Computers int,
@SocialStudies int,
@Createdby varchar(10),
@Userid int,
@Createdon varchar(30)
)
As
insert into tblStudentMarksHigherStandard(StudentId,ClassId,SectionId,SemesterType,English_Ist,English_IInd,Hindi_Ist,Hindi_IInd,Math_Ist,Math_IInd,Physics,
Chemistry,Bio,Computers,SocialStudies,Createdby,Userid,Createdon)
values(@StudentId,@ClassId,@SectionId,@SemesterType,@English_Ist,@English_IInd,@Hindi_Ist,@Hindi_IInd,@Math_Ist,@Math_IInd,@Physics,
@Chemistry,@Bio,@Computers,@SocialStudies,@Createdby,@Userid,@Createdon)

GO
/****** Object:  StoredProcedure [dbo].[proc_PrintForm]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_PrintForm]
(
@RollNo varchar(10)
)
As 
Select b.StudentId,b.StudentFirstName,b.StudentMiddleName,b.StudentLastName,c.ClassName,d.SectionName,a.IsEntraneExaminationPassed,b.Gender,b.DOB,b.BloodGroup,b.StudentEnrollmentNo,b.StudentRollNo,b.StudentAadharNo,
b.StudentPhoto,b.StudentCorrespondanceAddress,b.StudentPermanentAddress,b.StateId,b.CityId,s.State_Name,cty.CityName,b.Pincode,b.HomeContactNo,b.StudentContactNo,b.StudentFatherName,
b.StudentFatherContactNo,b.StudentFatherOccupation,b.StudentFatherDesignation,b.StudentFatherIncome,
b.StudentMotherName,b.StudentMotherContactNo,b.StudentMotherOccupation,
b.StudentMotherDesignation,b.StudentMotherIncome,b.Createdby,b.UserId,CONVERT(VARCHAR,b.Createdon,108)as 'Createdon',b.Updatedon from tblStudent b
inner join tblStudentClassAllotment a on a.StudentId=b.StudentId
inner join tblClassMaster c on a.ClassId=c.ClassId
inner join tblSectionMaster d on a.sectionid=d.sectionid
inner join State s on b.StateId=s.State_ID
inner join City cty on b.CityId=cty.City_ID 
where b.StudentRollNo=@RollNo

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectAllotment]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectAllotment]
As
select b.AllotmentId,t.teacherid,t.teacherFirstName+' '+t.teacherMiddleName+' '+t.teacherLastName as 'TeacherName',
c.ClassId,c.ClassName,s.SectionId,s.SectionName,sub.SubId,sub.SubSubjectName,b.Createdon,b.Updatedon from tblAllotment b
inner join tblteacher t on b.teacherid=t.teacherid
inner join tblClassMaster c on b.ClassId=c.ClassId
inner join tblSectionMaster s on b.SectionId=s.SectionId
inner join tblSubSubjectMaster sub on b.SubId=sub.SubId

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectCity]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[proc_SelectCity]
As
Select City_ID,CityName from City

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectClass]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectClass]
As
Select ClassId,ClassName,description,Createdby,UserId,Createdon from tblClassMaster

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectClassIdWise]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectClassIdWise]
(
@teacherid int
)
As
Select c.ClassId,c.ClassName from tblClassMaster c inner join tblAllotment al on c.ClassId=al.ClassId and al.teacherid=@teacherid

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectClassTeacher]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectClassTeacher]
As
select b.Id,b.teacherid,c.teacherFirstName+' '+c.teacherMiddleName+' '+c.teacherLastName as 'teacher Name',
b.ClassId,d.ClassName,b.SectionId,e.SectionName,b.IsClassteacher,b.Createdby,b.Userid,b.Createdon,b.Updatedon from tblClassTeacher b
inner join tblteacher c on b.teacherid=c.teacherid
inner join tblClassMaster d on b.ClassId=d.ClassId
inner join tblSectionMaster e on b.SectionId=e.SectionId

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectCurriclumn]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectCurriclumn]
As
select CurriculumnId,Date,Topic,Curriculumndesc,Createdby,UserId,Createdon from tblSchoolManagementCurriculumn order by CurriculumnId desc

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectExpense]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectExpense]
As
select ExpenseId,ItemName,ExpnseInRs,Expensedesc,Createdby,UserId,Createdon from tblScholDailyExpenses

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectMarks]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectMarks]
As
select b.MarksId,b.StudentId,st.StudentFirstName+st.StudentMiddleName+st.StudentLastName as 'Student Name',c.ClassName,sn.SectionName,b.SemesterType,
b.Reading,b.Writing,b.English,b.Hindi,b.Maths,b.Science,b.Computers,b.SocialStudies,b.Health,b.PhysicalEducation,b.Comment from tblStudentMarks b
inner join tblStudent st on b.StudentId=st.StudentId
inner join tblClassMaster c on b.ClassId=c.ClassId
inner join tblSectionMaster sn on b.SectionId=sn.SectionId

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectMarksHS]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectMarksHS]
As
select b.StudentId,st.StudentFirstName+st.StudentMiddleName+st.StudentLastName as 'Student Name',c.ClassName,sn.SectionName,b.* from tblStudentMarksHigherStandard b
inner join tblStudent st on b.StudentId=st.StudentId
inner join tblClassMaster c on b.ClassId=c.ClassId
inner join tblSectionMaster sn on b.SectionId=sn.SectionId 

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectMarksObtained]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectMarksObtained] 
(
@teacherid int
)
As
select m.ObtId,m.ClassId,c.ClassName,m.SectionId,s.SectionName,m.SubId,sub.SubSubjectName,m.ExamType,m.StudentId,st.StudentFirstName+' '+st.StudentMiddleName+' '+st.StudentLastName as 'Student Name',
st.StudentRollNo,m.teacherid,t.teacherFirstName+' '+t.teacherMiddleName+' '+t.teacherLastName as 'Teacher Name',m.MarksObt,m.Createdon,
m.Updatedon from tblMarksObtained m
inner join tblClassMaster c on m.ClassId=c.ClassId
inner join tblSectionMaster s on m.SectionId=s.SectionId
inner join tblSubSubjectMaster sub on m.SubId=sub.SubId
inner join tblStudent st on m.StudentId=st.StudentId
inner join tblteacher t on m.teacherid=t.teacherid
 where m.teacherid=@teacherid order by m.ObtId desc

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectMarksObtainedAdmin]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectMarksObtainedAdmin] 
As
select m.ObtId,m.ClassId,c.ClassName,m.SectionId,s.SectionName,m.SubId,sub.SubSubjectName,m.ExamType,m.StudentId,st.StudentFirstName+' '+st.StudentMiddleName+' '+st.StudentLastName as 'Student Name',
st.StudentRollNo,m.teacherid,t.teacherFirstName+' '+t.teacherMiddleName+' '+t.teacherLastName as 'Teacher Name',m.MarksObt,m.Createdon,
m.Updatedon from tblMarksObtained m
inner join tblClassMaster c on m.ClassId=c.ClassId
inner join tblSectionMaster s on m.SectionId=s.SectionId
inner join tblSubSubjectMaster sub on m.SubId=sub.SubId
inner join tblStudent st on m.StudentId=st.StudentId
inner join tblteacher t on m.teacherid=t.teacherid
order by m.ObtId desc

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectMarksStudentWise]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectMarksStudentWise]
(
@StudentId int
)
As
select b.StudentId,st.StudentFirstName+st.StudentMiddleName+st.StudentLastName as 'Student Name',c.ClassName,sn.SectionName,b.SemesterType,
b.Reading,b.Writing,b.English,b.Hindi,b.Maths,b.Science,b.Computers,b.SocialStudies,b.Health,b.PhysicalEducation,b.Comment from tblStudentMarks b
inner join tblStudent st on b.StudentId=st.StudentId
inner join tblClassMaster c on b.ClassId=c.ClassId
inner join tblSectionMaster sn on b.SectionId=sn.SectionId where b.StudentId=@StudentId

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectMarksStudentWiseHS]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectMarksStudentWiseHS]
(
@StudentId int
)
As
select b.StudentId,st.StudentFirstName+st.StudentMiddleName+st.StudentLastName as 'Student Name',c.ClassName,sn.SectionName,b.SemesterType,
b.English_Ist,b.English_IInd,b.Hindi_Ist,b.Hindi_IInd,b.Math_Ist,b.Math_IInd,b.Physics,
b.Chemistry,b.Bio,Computers,b.SocialStudies from tblStudentMarksHigherStandard b
inner join tblStudent st on b.StudentId=st.StudentId
inner join tblClassMaster c on b.ClassId=c.ClassId
inner join tblSectionMaster sn on b.SectionId=sn.SectionId where b.StudentId=@StudentId

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectNotice]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectNotice]
As
select NoticeId,Date,Topic,Noticedesc,Createdby,UserId,Createdon from tblSchoolManagementNotice order by NoticeId desc

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectOptionalSubjectAllotment]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[proc_SelectOptionalSubjectAllotment]
As
select m.OptionalId,c.ClassName,s.SectionName,s1.SubjectName,t.teacherFirstName+t.teacherMiddleName+t.teacherLastName As 'TeacherName',
st.StudentFirstName+st.StudentMiddleName+st.StudentLastName As 'StudentName',st.StudentRollNo,m.StudentAlloted,m.Createdon from tblOptionalSubject m
inner join tblSubjectMaster s1 on m.SubjectId=s1.SubjectId
inner join tblClassMaster c on m.ClassId=c.ClassId
inner join tblSectionMaster s on m.SectionId=s.SectionId
inner join tblStudent st on m.StudentId=st.StudentId
inner join tblteacher t on m.teacherid=t.teacherid order by m.OptionalId desc

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectPromotion]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectPromotion]
As
select a.StudentFirstName+a.StudentMiddleName+a.StudentLastName as 'Student Name',c.ClassName,d.SectionName,b.* from tblClassPromotion b
inner join tblStudent a on b.StudentId=a.StudentId
inner join tblStudentClassAllotment a1 on a1.StudentId=b.StudentId
inner join tblClassMaster c on a1.ClassId=c.ClassId
inner join tblSectionMaster d on a1.sectionid=d.sectionid

GO
/****** Object:  StoredProcedure [dbo].[proc_Selectroute]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_Selectroute]
As
select a.routeid,b.VehicleId,b.VehicleType,a.VehicleNo,b.DriverName,b.ConductorName,a.* from tblVehicleDetails b
inner join tblroutemaster a on b.VehicleId=a.VehicleId

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectSection]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectSection]
As
Select SectionId,SectionName,description,Createdby,UserId,Createdon from tblSectionMaster

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectSectionIdWise]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[proc_SelectSectionIdWise]
(
@teacherid int
)
As
Select s.SectionId,s.SectionName from tblSectionMaster s inner join tblAllotment al on s.SectionId=al.SectionId and al.teacherid=@teacherid

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectShift]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectShift]
As
Select ShiftId,ShiftName,WprkingTimeStart,WorkingTimeEnd,WorkinghHrs,WorkingDays,Createdby,Userid,Createdon,Updatedon from tblShifts

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectShiftIdWise]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[proc_SelectShiftIdWise]
As
Select ShiftId,ShiftName from tblShifts

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectShiftIdWise1]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[proc_SelectShiftIdWise1]
@ShiftId int
As
select ShiftId,ShiftName,WprkingTimeStart,WorkingTimeEnd,WorkinghHrs,WorkingDays from tblShifts Where ShiftId=@ShiftId

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectStaff]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectStaff]
As
select b.staffid,b.Salutation,b.StaffFirstName,b.StaffMiddleName,b.StaffLastName,b.Gender,b.DOB,StaffAddress,b.StaffState,b.StaffCity,f.State_Name,g.CityName,b.Pincode,
b.StaffCountry,b.StaffContactNo,b.StaffMobileNo,b.StaffAadharcardNo,b.StaffPhoto,b.StaffDescription,b.TotalWorkinghrs,b.StaffType,b.employeecode,b.username,b.pwd,b.Createdby,
c.Staffrole,c.JoiningDate,d.Basic,d.TA,d.DA,d.HRA,OtherDeductions,
d.ActualPay,b.UserId,b.Createdon,b.Updatedon from tblstaff b
inner join tblStaffJoiningDetails c on c.Staffid=b.Staffid
inner join tblStaffSalary d on d.Staffid=b.Staffid
inner join State f on b.StaffState=f.State_ID
inner join City g on b.StaffCity=g.City_ID

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectStaffIdWise]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectStaffIdWise]
As
select staffid,Salutation+StaffFirstName+StaffMiddleName+StaffLastName as 'FullName' from tblstaff

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectStaffJoiningDate]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[proc_SelectStaffJoiningDate]
As
select a.JoiningId,a.SMId,c.SMType,a.Staffid,b.StaffFirstName+' '+b.StaffMiddleName+' '+b.StaffLastName as 'StaffName',a.Staffrole,a.JoiningDate,a.Status,a.Createdby,a.UserId,a.Createdon,a.Updatedon from tblStaffJoiningDetails a
inner join tblStaff b on b.Staffid=a.Staffid
inner join tblStaffTypeMaster c on a.SMId=c.SMId order by a.JoiningId desc

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectStaffTypeMaster]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectStaffTypeMaster]
As
select SMId,SMType,Createdby,Createdon,Updatedon  from tblStaffTypeMaster

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectState]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectState]
As
select State_ID,State_Name from State

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectStudent]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectStudent]
As
Select b.StudentId,b.StudentFirstName,b.StudentMiddleName,b.StudentLastName,c.ClassName,d.SectionName,a.IsEntraneExaminationPassed,b.Gender,b.DOB,b.BloodGroup,b.StudentEnrollmentNo,b.StudentRollNo,b.StudentAadharNo,
b.StudentPhoto,b.StudentCorrespondanceAddress,b.StudentPermanentAddress,b.StateId,b.CityId,s.State_Name,cty.CityName,b.Pincode,b.HomeContactNo,b.StudentContactNo,b.StudentFatherName,
b.StudentFatherContactNo,b.StudentFatherOccupation,b.StudentFatherDesignation,b.StudentFatherIncome,
b.StudentMotherName,b.StudentMotherContactNo,b.StudentMotherOccupation,
b.StudentMotherDesignation,b.StudentMotherIncome,b.Createdby,b.UserId,CONVERT(VARCHAR,b.Createdon,108)as 'Createdon',b.Updatedon from tblStudent b
inner join tblStudentClassAllotment a on a.StudentId=b.StudentId
inner join tblClassMaster c on a.ClassId=c.ClassId
inner join tblSectionMaster d on a.sectionid=d.sectionid
inner join State s on b.StateId=s.State_ID
inner join City cty on b.CityId=cty.City_ID
order by b.StudentId desc

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectStudentClassAllotment]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectStudentClassAllotment]
As 
select b.StudentFirstName,c.ClassName,d.SectionName,a.* from tblStudent b
inner join tblStudentClassAllotment a on a.StudentId=b.StudentId
inner join tblClassMaster c on a.ClassId=c.ClassId
inner join tblSectionMaster d on a.sectionid=d.sectionid

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectStudentExtraCurricularActivity]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectStudentExtraCurricularActivity]
(
@teacherid int
)
As
select a.StudentFirstName+a.StudentMiddleName+a.StudentLastName as 'Name',c.ClassName,d.SectionName,b.* from tblStudentExtraCurricularActivityDetails b
inner join tblStudent a on b.StudentId=a.StudentId
inner join tblStudentClassAllotment a1 on a1.StudentId=b.StudentId
inner join tblClassMaster c on b.ClassId=c.ClassId
inner join tblSectionMaster d on b.sectionid=d.sectionid where b.UserId=@teacherid

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectStudentFee]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectStudentFee]
As
select a.StudentFirstName,c.ClassName,d.SectionName,e.VehicleType,b.* from tblStudentFeeDetail b
inner join tblStudent a on b.StudentId=a.StudentId
inner join tblClassMaster c on b.ClassId=c.ClassId
inner join tblSectionMaster d on b.sectionid=d.sectionid
inner join tblVehicleDetails e on b.VehicleId=e.VehicleId

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectStudentPerformance]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectStudentPerformance]
(
@teacherid int
)
As
select a.StudentFirstName+a.StudentMiddleName+a.StudentLastName as 'Name',c.ClassName,d.SectionName,b.* from tblStudentPerformancedetail b
inner join tblStudent a on b.StudentId=a.StudentId
inner join tblClassMaster c on b.ClassId=c.ClassId
inner join tblSectionMaster d on b.sectionid=d.sectionid where b.UserId=@teacherid 

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectSubject]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectSubject]
As
select SubjectId,SubjectName,TotalMarks,SubjectType,SubjectDescription,Createdby,UserId,Createdon,Updatedon from tblSubjectMaster

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectSubjectIdWise]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectSubjectIdWise]
As
select SubjectId,SubjectName from tblSubjectMaster

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectSubSubject]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectSubSubject]
As
select b.SubId,b.SubjectId,a.SubjectName,a.TotalMarks,b.SubSubjectName,b.Marks,b.Createdby,b.Createdon,b.Updatedon from  tblSubSubjectMaster b
inner join tblSubjectMaster a on b.SubjectId=a.SubjectId

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectSubSubjectIdWise]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectSubSubjectIdWise]
As
select SubId,SubSubjectName from tblSubSubjectMaster

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectSudentIdWise]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectSudentIdWise]
(
@teacherid int
)
As
select b.StudentId,b.StudentFirstName+b.StudentMiddleName+b.StudentLastName As 'FullName' from tblStudent b
inner join tblStudentClassAllotment a on b.StudentId=a.StudentId 
inner join tblAllotment al on a.ClassId=al.ClassId and a.SectionId=al.SectionId 
where al.teacherid=@teacherid

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectTC]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectTC]
As
Select b.StudentId,st.StudentFirstName+st.StudentMiddleName+st.StudentLastName as 'Student Name',st.StudentFatherName,b.TCId,b.ClassId,b.SectionId,d.ClassName,e.SectionName,b.IsGeneratedTC,
b.Description,b.Createdby,b.Createdon
from tblStudentTC b
inner join tblStudent st on b.StudentId=st.StudentId
inner join tblClassMaster d on b.ClassId=d.ClassId
inner join tblSectionMaster e on b.SectionId=e.SectionId

GO
/****** Object:  StoredProcedure [dbo].[proc_Selectteacher]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_Selectteacher]
As
select b.teacherid,b.Salutation,b.teacherFirstName,b.teacherMiddleName,b.teacherLastName,b.Gender,b.SubjectId,s.SubjectName,b.teacherAddress,b.teacherState,b.teacherCity,f.State_Name,g.CityName
,b.DOB,b.Pincode,b.teacherPANNo,
b.teacherCountry,b.teacherContactNo,b.teacherMobileNo,b.teacherAadharcardNo,b.teacherPhoto,b.teacherDescription,b.TotalWorkinghrs,b.employeecode,b.username,Pwd,b.Createdby,
c.Teacherrole,c.JoiningDate,d.Basic,d.TA,d.DA,d.HRA,OtherDeductions,
d.ActualPay,b.UserId,b.Createdon,b.Updatedon from tblteacher b
inner join tblteacherJoiningDetails c on c.teacherid=b.teacherid
inner join tblteacherSalary d on d.teacherid=b.teacherid
inner join State f on b.teacherState=f.State_ID
inner join City g on b.teacherCity=g.City_ID
inner join tblSubjectMaster s on b.SubjectId=s.SubjectId

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectteacherIdWise]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectteacherIdWise]
As
select t.teacherid,t.Salutation+' '+t.teacherFirstName+' '+t.teacherMiddleName+' '+t.teacherLastName as 'FullName' from tblteacher t
inner join tblSubjectMaster s on t.SubjectId=s.SubjectId

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectteacherJoiningDate]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectteacherJoiningDate]
As
select a.JoiningId,a.teacherid,b.teacherFirstName+b.teacherMiddleName+b.teacherLastName As 'TeacherName',a.teacherrole,a.JoiningDate,a.Status,a.Createdby,a.UserId,a.Createdon,a.Updatedon from tblteacherJoiningDetails a
inner join tblteacher b on b.teacherid=a.teacherid

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectTeacherTimeTable]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectTeacherTimeTable]
(
@teacherid int
)
As
select b.TimeTableId,b.Date,b.Day,b.TPeriod,b.TFrom,b.Till,b.teacherid,a.Salutation+' '+a.teacherFirstName+' '+a.teacherMiddleName+' '+a.teacherLastName as 'TeacherName',
b.SubsubjectId,c.SubSubjectName,b.ClassId,d.ClassName,b.SectionId,e.SectionName,
b.ISClassTeacher,b.ClassDesc,b.Createdby,b.UserId,b.Createdon,b.Updatedon from tblTeacherTimeTable b
inner join tblteacher a on b.teacherid=a.teacherid
inner join tblSubSubjectMaster c on b.SubsubjectId=c.SubId
inner join tblClassMaster d on b.ClassId=d.ClassId
inner join tblSectionMaster e on b.SectionId=e.SectionId where b.teacherid=@teacherid

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectVehicle]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectVehicle]
As
select VehicleId,VehicleType,VehicleNo,DriverName,ConductorName,DriverAadharNo,ConductorAadharNo,
VehicleDesc,Createdby,UserId,Createdon,Updatedon from tblVehicleDetails

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectVehicleIdWise]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[proc_SelectVehicleIdWise]
As
select VehicleId,VehicleType   from tblVehicleDetails

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectVehicleIdWiseNo]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectVehicleIdWiseNo]
@VehicleNo varchar(20)
As
select VehicleId,VehicleType from tblVehicleDetails where VehicleNo=@VehicleNo 

GO
/****** Object:  StoredProcedure [dbo].[proc_SelectVehicleNoIdWise]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectVehicleNoIdWise]
As
select VehicleId,VehicleNo  from tblVehicleDetails

GO
/****** Object:  StoredProcedure [dbo].[proc_SelestTimeTable]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelestTimeTable]
As
select b.TimeTableId,b.Date,b.Day,b.TPeriod,b.TFrom,b.Till,b.teacherid,a.Salutation+' '+a.teacherFirstName+' '+a.teacherMiddleName+' '+a.teacherLastName as 'TeacherName',
b.SubsubjectId,c.SubSubjectName,b.ClassId,d.ClassName,b.SectionId,e.SectionName,
b.ISClassTeacher,b.ClassDesc,b.Createdby,b.UserId,b.Createdon,b.Updatedon from tblTeacherTimeTable b
inner join tblteacher a on b.teacherid=a.teacherid
inner join tblSubSubjectMaster c on b.SubsubjectId=c.SubId
inner join tblClassMaster d on b.ClassId=d.ClassId
inner join tblSectionMaster e on b.SectionId=e.SectionId

GO
/****** Object:  StoredProcedure [dbo].[proc_SelestTimeTable_teacher]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[proc_SelestTimeTable_teacher] 
(
@teacherid int
)
As
select b.TimeTableId,b.Date,b.Day,b.TPeriod,b.TFrom,b.Till,b.teacherid,a.Salutation+' '+a.teacherFirstName+' '+a.teacherMiddleName+' '+a.teacherLastName as 'TeacherName',
b.SubsubjectId,c.SubSubjectName,b.ClassId,d.ClassName,b.SectionId,e.SectionName,
b.ISClassTeacher,b.ClassDesc,b.Createdby,b.UserId,b.Createdon,b.Updatedon from tblTeacherTimeTable b
inner join tblteacher a on b.teacherid=a.teacherid
inner join tblSubSubjectMaster c on b.SubsubjectId=c.SubId
inner join tblClassMaster d on b.ClassId=d.ClassId
inner join tblSectionMaster e on b.SectionId=e.SectionId where b.teacherid=@teacherid

GO
/****** Object:  StoredProcedure [dbo].[proc_StaffChangepassword]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_StaffChangepassword]
(
@userid int,
@pwd varchar(10)
)
As
update tblStaff set pwd=@pwd where
StaffType='Accountant' And userid=@userid

GO
/****** Object:  StoredProcedure [dbo].[proc_Student]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_Student]
(
@ClassId int,
@sectionid int
)
As
Select b.StudentId,b.StudentFirstName,b.StudentMiddleName,b.StudentLastName,c.ClassName,d.SectionName,a.IsEntraneExaminationPassed,b.Gender,b.DOB,b.StudentEnrollmentNo,b.StudentRollNo,b.StudentAadharNo,
b.StudentPhoto,b.StudentCorrespondanceAddress,b.StudentPermanentAddress,b.StateId,b.CityId,s.State_Name,cty.CityName,b.Pincode,b.HomeContactNo,b.StudentContactNo,b.StudentFatherName,
b.StudentFatherContactNo,b.StudentFatherOccupation,b.StudentFatherDesignation,b.StudentFatherIncome,
b.StudentMotherName,b.StudentMotherContactNo,b.StudentMotherOccupation,
b.StudentMotherDesignation,b.StudentMotherIncome,b.Createdby,b.UserId,CONVERT(VARCHAR,b.Createdon,108)as 'Createdon',b.Updatedon from tblStudent b
inner join tblStudentClassAllotment a on a.StudentId=b.StudentId
inner join tblClassMaster c on a.ClassId=c.ClassId
inner join tblSectionMaster d on a.sectionid=d.sectionid
inner join State s on b.StateId=s.State_ID
inner join City cty on b.CityId=cty.City_ID
where c.ClassId=@ClassId and d.sectionid=@sectionid order by a.StudentId desc

GO
/****** Object:  StoredProcedure [dbo].[proc_Student_Class]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_Student_Class]
(
@ClassId int
)
As
Select b.StudentId,b.StudentFirstName,b.StudentMiddleName,b.StudentLastName,c.ClassName,d.SectionName,a.IsEntraneExaminationPassed,b.Gender,b.DOB,b.StudentEnrollmentNo,b.StudentRollNo,b.StudentAadharNo,
b.StudentPhoto,b.StudentCorrespondanceAddress,b.StudentPermanentAddress,b.StateId,b.CityId,s.State_Name,cty.CityName,b.Pincode,b.HomeContactNo,b.StudentContactNo,b.StudentFatherName,
b.StudentFatherContactNo,b.StudentFatherOccupation,b.StudentFatherDesignation,b.StudentFatherIncome,
b.StudentMotherName,b.StudentMotherContactNo,b.StudentMotherOccupation,
b.StudentMotherDesignation,b.StudentMotherIncome,b.Createdby,b.UserId,CONVERT(VARCHAR,b.Createdon,108)as 'Createdon',b.Updatedon from tblStudent b
inner join tblStudentClassAllotment a on a.StudentId=b.StudentId
inner join tblClassMaster c on a.ClassId=c.ClassId
inner join tblSectionMaster d on a.sectionid=d.sectionid
inner join State s on b.StateId=s.State_ID
inner join City cty on b.CityId=cty.City_ID
where c.ClassId=@ClassId  order by a.StudentId desc

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateAllotment]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_UpdateAllotment]
(
@AllotmentId int,
@teacherid int,
@ClassId int,
@SectionId int,
@SubId int,
@Updatedon  varchar(max)
)
As
Update tblAllotment set teacherid=@teacherid,ClassId=@ClassId,SectionId=@SectionId,SubId=@SubId,Updatedon=@Updatedon where AllotmentId=@AllotmentId

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateClass]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_UpdateClass]
(
@ClassId int,
@ClassName varchar(30),
@description varchar(30)
)
As
Update tblClassMaster set  ClassName=@ClassName,description=@description where ClassId=@ClassId

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateClassTeacher]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_UpdateClassTeacher]
(
@Id int,
@teacherid int,
@ClassId int,
@SectionId int,
@IsClassteacher varchar(5),
@Updatedon varchar(30)
)
As Update tblClassTeacher set teacherid=@teacherid,ClassId=@ClassId,SectionId=@SectionId,IsClassteacher=@IsClassteacher,Updatedon=@Updatedon where Id=@Id

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateCurriCulm]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_UpdateCurriCulm]
(
@CurriculumnId int,
@Date varchar(20),
@Topic varchar(20),
@Curriculumndesc varchar(max)
)
As
Update tblSchoolManagementCurriculumn set Date=@Date,Topic=@Topic,Curriculumndesc=@Curriculumndesc where CurriculumnId=@CurriculumnId

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateMarksObtained]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_UpdateMarksObtained]
(
@ObtId int,
@MarksObt int,
@Updatedon varchar(50)
)
As
Update tblMarksObtained set MarksObt=@MarksObt,Updatedon=@Updatedon
where ObtId=@ObtId

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateNotice]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_UpdateNotice]
(
@NoticeId int,
@Date varchar(20),
@Topic varchar(20),
@Noticedesc varchar(max)
)
As
Update tblSchoolManagementNotice set Date=@Date,Topic=@Topic,Noticedesc=@Noticedesc where NoticeId=@NoticeId

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateRoute]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_UpdateRoute]
(
@routeid int,
@VehicleId int,
@VehiclNo varchar(20),
@RouteFrom varchar(20),
@RouteTo  varchar(20),
@Updatedon varchar(30)
)
As
update tblroutemaster set VehicleId=@VehicleId,VehicleNo=@VehiclNo,RouteFrom=@RouteFrom,RouteTo=@RouteTo,Updatedon=@Updatedon where routeid=@routeid

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateSection]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[proc_UpdateSection]
(
@SectionId int,
@SectionName varchar(30),
@description varchar(30)
)
As
Update tblSectionMaster set  SectionName=@SectionName,description=@description where SectionId=@SectionId

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateShifts]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_UpdateShifts]
(
@ShiftId int,
@ShiftName varchar(20),
@WprkingTimeStart varchar(20),
@WorkingTimeEnd varchar(20),
@WorkinghHrs varchar(20),
@WorkingDays int,
@Createdby varchar(10),
@Userid int,
@Updatedon varchar(30)
)
As
Update tblShifts set
ShiftName=@ShiftName,
WprkingTimeStart=@WprkingTimeStart,
WorkingTimeEnd=@WorkingTimeEnd,
WorkinghHrs=@WorkinghHrs,
WorkingDays=@WorkingDays,
Createdby=@Createdby,
Userid=@Userid,
Updatedon=@Updatedon
Where ShiftId=@ShiftId

GO
/****** Object:  StoredProcedure [dbo].[Proc_UpdatestaffJoining]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Proc_UpdatestaffJoining]
(
@Staffid int,
@Staffrole varchar(20),
@JoiningDate varchar(20),
@Status varchar(30)
)
As
update tblStaffJoiningDetails set Staffrole=@Staffrole,JoiningDate=@JoiningDate,Status=@Status where Staffid=@Staffid

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateStaffSalary]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[proc_UpdateStaffSalary]
(
@Staffid int,
@Basic int,
@TA int,
@DA int,
@HRA int,
@OtherDeductions int,
@ActualPay int
)
As
Update tblStaffSalary set Basic=@Basic,TA=@TA,DA=@DA,HRA=@HRA,OtherDeductions=@OtherDeductions where Staffid=@Staffid

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateStaffTypeMaster]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_UpdateStaffTypeMaster]
(
@SMId int,
@SMType varchar(50),
@UserId int,
@Updatedon varchar(30)
)
As
update tblStaffTypeMaster set SMType=@SMType,UserId=@UserId,Updatedon=@Updatedon where SMId=@SMId

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateStaffTypeMasterIdWise]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_UpdateStaffTypeMasterIdWise]
AS
select SMId,SMType from tblStaffTypeMaster

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateStudent]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_UpdateStudent]
(
@StudentId int,
@StudentFirstName varchar(30),
@StudentMiddleName varchar(30),
@StudentLastName varchar(30),
@Gender varchar(10),
@DOB varchar(20),
@BloodGroup varchar(10),
@StudentEnrollmentNo varchar(20),
@StudentRollNo varchar(12),
@StudentAadharNo varchar(30),
@StudentCorrespondanceAddress varchar(100),
@StudentPermanentAddress varchar(200),
@StateId int,
@CityId int,
@Pincode varchar(10),
@HomeContactNo varchar(30),
@StudentContactNo varchar(30),
@StudentFatherName varchar(30),
@StudentFatherContactNo varchar(30),
@StudentFatherOccupation varchar(30),
@StudentFatherDesignation varchar(30),
@StudentFatherIncome varchar(30),
@StudentMotherName varchar(30),
@StudentMotherContactNo varchar(30),
@StudentMotherOccupation varchar(30),
@StudentMotherDesignation varchar(30),
@StudentMotherIncome varchar(30),
@Updatedon varchar(30)
)
As
update tblStudent set StudentFirstName=@StudentFirstName,
StudentMiddleName=@StudentMiddleName,
StudentLastName=@StudentLastName,
Gender=@Gender,
DOB=@DOB,
BloodGroup=@BloodGroup,
StudentEnrollmentNo=@StudentEnrollmentNo,
StudentRollNo=@StudentRollNo,
StudentAadharNo=@StudentAadharNo,
StudentCorrespondanceAddress=@StudentCorrespondanceAddress,
StudentPermanentAddress=@StudentPermanentAddress,
StateId=@StateId,
CityId=@CityId,
Pincode=@Pincode,
HomeContactNo=@HomeContactNo,
StudentContactNo=@StudentContactNo,
StudentFatherName=@StudentFatherName,
StudentFatherContactNo=@StudentFatherContactNo,
StudentFatherOccupation=@StudentFatherOccupation,
StudentFatherDesignation=@StudentFatherDesignation,
StudentFatherIncome=@StudentFatherIncome,
StudentMotherName=@StudentMotherName,
StudentMotherContactNo=@StudentMotherContactNo,
StudentMotherOccupation=@StudentMotherOccupation,
StudentMotherDesignation=@StudentMotherDesignation,
StudentMotherIncome=@StudentMotherIncome,
Updatedon=@Updatedon
where 
StudentId=@StudentId

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateStudentClassAllottment]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[proc_UpdateStudentClassAllottment]
(
@StudentId int,
@ClassId int,
@SectionId int
)
As
update tblStudentClassAllotment set ClassId=@ClassId,SectionId=@SectionId where StudentId=@StudentId

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateSubjectMaster]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_UpdateSubjectMaster]
(
@SubjectId int,
@SubjectName varchar(30),
@TotalMarks int,
@SubjectType varchar(30),
@SubjectDescription varchar(max),
@Createdby varchar(30),
@UserId int,
@Updatedon varchar(30)
)
As
update tblSubjectMaster set SubjectName=@SubjectName,TotalMarks=@TotalMarks,SubjectType=@SubjectType,SubjectDescription=@SubjectDescription,Createdby=@Createdby,UserId=@UserId,Updatedon=@Updatedon  where SubjectId=@SubjectId

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateSubSubject]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_UpdateSubSubject]
(
@SubId int,
@SubjectId int,
@SubSubjectName varchar(20),
@Marks int,
@Updatedon varchar(10)
)
As
Update tblSubSubjectMaster set SubjectId=@SubjectId,SubSubjectName=@SubSubjectName,Marks=@Marks, Updatedon=@Updatedon where SubId=@SubId

GO
/****** Object:  StoredProcedure [dbo].[proc_Updateteacher]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_Updateteacher]
(
@teacherid int,
@Salutation varchar(10),
@teacherFirstName varchar(30),
@teacherMiddleName varchar(30),
@teacherLastName varchar(30),
@Gender varchar(10),
@DOB varchar(15),
@SubjectId int,
@teacherAddress varchar(200),
@teacherState varchar(30),
@teacherCity varchar(30),
@Pincode varchar(10),
@teacherContactNo varchar(30),
@teacherMobileNo varchar(30),
@teacherAadharcardNo varchar(30),
@teacherPANNo varchar(30),
@teacherDescription varchar(max),
@TotalWorkinghrs varchar(10),
@employeecode varchar(50),
@Createdby varchar(20),
@UserId int,
@Updatedon varchar(30)
)
As
Update tblteacher set 
Salutation=@Salutation,
teacherFirstName=@teacherFirstName,
teacherMiddleName=@teacherMiddleName,
teacherLastName=@teacherLastName,
Gender=@Gender,
DOB=@DOB,
SubjectId=@SubjectId,
teacherAddress=@teacherAddress,
teacherState=@teacherState,
teacherCity=@teacherCity,
Pincode=@Pincode,
teacherContactNo=@teacherContactNo,
teacherMobileNo=@teacherMobileNo,
teacherAadharcardNo=@teacherAadharcardNo,
teacherPANNo=@teacherPANNo,
teacherDescription=@teacherDescription,
TotalWorkinghrs=@TotalWorkinghrs,
employeecode=@employeecode,
Createdby=@Createdby,
UserId=@UserId,
Updatedon=@Updatedon where teacherid=@teacherid

GO
/****** Object:  StoredProcedure [dbo].[Proc_UpdateteacherJoining]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Proc_UpdateteacherJoining]
(
@teacherid int,
@teacherrole varchar(50),
@JoiningDate varchar(50),
@Status varchar(30)
)
As
update tblteacherJoiningDetails set teacherrole=@teacherrole,JoiningDate=@JoiningDate,Status=@Status where teacherid=@teacherid

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateteacherSalary]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_UpdateteacherSalary]
(
@teacherid int,
@Basic int,
@TA int,
@DA int,
@HRA int,
@OtherDeductions int,
@ActualPay int
)
As
Update tblteacherSalary set Basic=@Basic,TA=@TA,DA=@DA,HRA=@HRA,OtherDeductions=@OtherDeductions where teacherid=@teacherid

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateTimeTable]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[proc_UpdateTimeTable]
(
@TimeTableId int,
@Date varchar(30),
@Day Varchar(10),
@teacherid int,
@TPeriod varchar(10),
@TFrom varchar(10),
@Till varchar(10),
@SubsubjectId int,
@ClassId int,
@SectionId int,
@ISClassTeacher varchar(10),
@ClassDesc varchar(max),
@Createdby varchar(30),
@UserId int,
@Updatedon varchar(30)
)
As
update tblTeacherTimeTable set Date=@Date,Day=@Day,teacherid=@teacherid,TPeriod=@TPeriod,TFrom=@TFrom,Till=@Till,SubsubjectId=@SubsubjectId,ClassId=@ClassId,
SectionId=@SectionId,ISClassTeacher=@ISClassTeacher,ClassDesc=@ClassDesc,Createdby=@Createdby,UserId=@UserId,Updatedon=@Updatedon where TimeTableId=@TimeTableId

GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateVehicle]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_UpdateVehicle]
(
@VehicleId int,
@VehicleType varchar(20),
@VehicleNo varchar(20),
@DriverName varchar(20),
@DriverAadharNo  varchar(20),
@ConductorName varchar(20),
@ConductorAadharNo varchar(20),
@VehicleDesc varchar(max),
@Updatedon varchar(30)
)
As
Update tblVehicleDetails set VehicleType=@VehicleType,VehicleNo=@VehicleNo,
DriverName=@DriverName,ConductorName=@ConductorName,DriverAadharNo=@DriverAadharNo,ConductorAadharNo=@ConductorAadharNo,
VehicleDesc=@VehicleDesc,Updatedon=@Updatedon where VehicleId=@VehicleId

GO
/****** Object:  StoredProcedure [dbo].[proc_ViewMarks]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[proc_ViewMarks]
 (
 @ClassId int,
 @SectionId int
 )
 As
select m.ObtId,m.ClassId,c.ClassName,m.SectionId,s.SectionName,m.SubId,sub.SubSubjectName,m.ExamType,m.StudentId,st.StudentFirstName+' '+st.StudentMiddleName+' '+st.StudentLastName as 'Student Name',
st.StudentRollNo,m.teacherid,t.teacherFirstName+' '+t.teacherMiddleName+' '+t.teacherLastName as 'Teacher Name',m.MarksObt,m.Createdon,
m.Updatedon from tblMarksObtained m
inner join tblClassMaster c on m.ClassId=c.ClassId
inner join tblSectionMaster s on m.SectionId=s.SectionId
inner join tblSubSubjectMaster sub on m.SubId=sub.SubId
inner join tblStudent st on m.StudentId=st.StudentId
inner join tblteacher t on m.teacherid=t.teacherid
where m.ClassId=@ClassId And m.SectionId=@SectionId
order by m.ObtId desc

GO
/****** Object:  StoredProcedure [dbo].[proc_ViewTeacherMarks]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_ViewTeacherMarks]
(
@teacherid int
)
As
select m.ObtId,m.ClassId,c.ClassName,m.SectionId,s.SectionName,m.SubId,sub.SubSubjectName,m.ExamType,m.StudentId,st.StudentFirstName+' '+st.StudentMiddleName+' '+st.StudentLastName as 'Student Name',
st.StudentRollNo,m.teacherid,t.teacherFirstName+' '+t.teacherMiddleName+' '+t.teacherLastName as 'Teacher Name',m.MarksObt,m.Createdon,
m.Updatedon from tblMarksObtained m
inner join tblClassMaster c on m.ClassId=c.ClassId
inner join tblSectionMaster s on m.SectionId=s.SectionId
inner join tblSubSubjectMaster sub on m.SubId=sub.SubId
inner join tblStudent st on m.StudentId=st.StudentId
inner join tblteacher t on m.teacherid=t.teacherid
where m.teacherid=@teacherid
order by m.ObtId desc

GO
/****** Object:  StoredProcedure [dbo].[procGenerateSalary]    Script Date: 6/8/2019 6:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[procGenerateSalary]
(
@staffid int,
@SalaryDate varchar(20),
@StaffMonth varchar(20),
@Createdby varchar(20),
@UserId int,
@Createdon varchar(30)
)
As
insert into tblGenerateStaffSalary(staffid,SalaryDate,StaffMonth,Createdby,UserId,Createdon)
values(@staffid,@SalaryDate,@StaffMonth,@Createdby,@UserId,@Createdon)

GO
