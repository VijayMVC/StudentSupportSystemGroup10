CREATE DATABASE [IS2G10_DBSSS];

USE [IS2G10_DBSSS]
GO
/****** Object:  Table [dbo].[ATTENDANCE]    Script Date: 2015/10/08 01:39:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ATTENDANCE](
	[student_id] [int] NOT NULL,
	[student_activity_id] [int] NOT NULL,
	[student_activity_tutorrating] [int] NULL,
	[student_activity_rating] [int] NULL,
	[student_arrived] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[student_id] ASC,
	[student_activity_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CONSULTATION]    Script Date: 2015/10/08 01:39:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONSULTATION](
	[consultation_id] [int] IDENTITY(1,1) NOT NULL,
	[coordinator_id] [int] NOT NULL,
	[tutor_id] [int] NOT NULL,
	[student_id] [int] NULL,
	[consultation_details] [nvarchar](255) NULL,
	[consultation_date] [datetime] NULL,
	[student_arrived] [bit] NULL,
	[consultation_rating] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[consultation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COURSE]    Script Date: 2015/10/08 01:39:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COURSE](
	[course_id] [int] IDENTITY(1,1) NOT NULL,
	[course_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ENROLLMENT]    Script Date: 2015/10/08 01:39:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENROLLMENT](
	[course_id] [int] NOT NULL,
	[student_id] [int] NOT NULL,
	[class_mark] [float] NULL,
	[exam_mark] [float] NULL,
	[year_mark] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[course_id] ASC,
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GROUP]    Script Date: 2015/10/08 01:39:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GROUP](
	[group_id] [int] IDENTITY(1,1) NOT NULL,
	[group_name] [nvarchar](255) NULL,
	[group_day] [nvarchar](10) NULL,
	[group_time] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SESSION]    Script Date: 2015/10/08 01:39:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SESSION](
	[tutor_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
	[updated_attendance] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tutor_id] ASC,
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SSS_COORDINATOR]    Script Date: 2015/10/08 01:39:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSS_COORDINATOR](
	[coordinator_id] [int] NOT NULL,
	[coordinator_firstname] [nvarchar](255) NULL,
	[coordinator_lastname] [nvarchar](255) NULL,
	[coordinator_id_passport] [nvarchar](255) NULL,
	[coordinator_dateofbirth] [datetime] NULL,
	[coordinator_emailaddress] [nvarchar](255) NULL,
	[coordinator_cellnumber] [nvarchar](14) NULL,
PRIMARY KEY CLUSTERED 
(
	[coordinator_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STUDENT]    Script Date: 2015/10/08 01:39:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT](
	[student_id] [int] NOT NULL,
	[coordinator_id] [int] NOT NULL,
	[group_id] [int] NULL,
	[student_firstname] [nvarchar](255) NULL,
	[student_lastname] [nvarchar](255) NULL,
	[student_id_passport] [nvarchar](255) NULL,
	[student_dateofbirth] [datetime] NULL,
	[student_emailaddress] [nvarchar](255) NULL,
	[student_mobilenumber] [nvarchar](14) NULL,
	[student_yearofstudy] [int] NULL,
	[student_degreeprogramme] [nvarchar](255) NULL,
	[student_status] [nvarchar](255) NULL,
	[student_points] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STUDENT_ACTIVITY]    Script Date: 2015/10/08 01:39:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT_ACTIVITY](
	[student_activity_id] [int] IDENTITY(1,1) NOT NULL,
	[student_activity_name] [nvarchar](255) NULL,
	[student_activity_pointvalue] [int] NULL,
	[student_activity_week] [int] NULL,
	[student_activity_description] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[student_activity_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TUTOR]    Script Date: 2015/10/08 01:39:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TUTOR](
	[tutor_id] [int] NOT NULL,
	[tutor_firstname] [nvarchar](255) NULL,
	[tutor_lastname] [nvarchar](255) NULL,
	[tutor_id_passport] [nvarchar](255) NULL,
	[tutor_dateofbirth] [datetime] NULL,
	[tutor_emailaddress] [nvarchar](255) NULL,
	[tutor_cellnumber] [nvarchar](14) NULL,
	[tutor_trainingstatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[tutor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USERPROFILE]    Script Date: 2015/10/08 01:39:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERPROFILE](
	[user_id] [int] NOT NULL,
	[user_name] [nvarchar](255) NULL,
	[student_id] [int] NULL,
	[coordinator_id] [int] NULL,
	[tutor_id] [int] NULL,
	[password_hash] [nvarchar](255) NULL,
	[password_salt] [nvarchar](255) NULL,
	[PrimaryAccent] [nvarchar](255) NULL,
	[SecondaryAccent] [nvarchar](255) NULL,
	[isDark] [bit] NOT NULL,
	[resetPassword] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10003, 1, 5, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10003, 2, 4, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10003, 3, 4, 5, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10003, 4, 4, 3, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10003, 5, 3, 2, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10003, 6, 5, 5, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10003, 7, 3, 2, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10003, 8, 5, 1, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10003, 9, 4, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10003, 10, 4, 5, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10004, 1, 2, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10004, 2, 2, 3, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10004, 3, 1, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10004, 4, 2, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10004, 5, 2, 3, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10004, 6, 2, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10004, 7, 1, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10004, 8, 1, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10004, 9, 2, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10004, 10, 1, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10005, 1, 2, 3, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10005, 2, 1, 3, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10005, 3, 2, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10005, 4, 2, 3, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10005, 5, 2, 3, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10005, 6, 2, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10005, 7, 2, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10005, 8, 2, 3, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10005, 9, 1, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10005, 10, 2, 3, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10010, 1, 2, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10010, 2, 2, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10010, 3, 1, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10010, 4, 2, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10010, 5, 1, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10010, 6, 2, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10010, 7, 1, 3, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10010, 8, 1, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10010, 9, 2, 3, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10010, 10, 1, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10013, 1, 2, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10013, 2, 2, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10013, 3, 1, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10013, 4, 2, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10013, 5, 1, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10013, 6, 2, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10013, 7, 1, 3, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10013, 8, 1, 4, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10013, 9, 2, 3, 1)
INSERT [dbo].[ATTENDANCE] ([student_id], [student_activity_id], [student_activity_tutorrating], [student_activity_rating], [student_arrived]) VALUES (10013, 10, 1, 4, 1)
SET IDENTITY_INSERT [dbo].[CONSULTATION] ON 

INSERT [dbo].[CONSULTATION] ([consultation_id], [coordinator_id], [tutor_id], [student_id], [consultation_details], [consultation_date], [student_arrived], [consultation_rating]) VALUES (4, 76582, 20001, 10003, N'Having trouble with login into the system', CAST(N'2015-08-20 00:00:00.000' AS DateTime), 1, 4)
INSERT [dbo].[CONSULTATION] ([consultation_id], [coordinator_id], [tutor_id], [student_id], [consultation_details], [consultation_date], [student_arrived], [consultation_rating]) VALUES (5, 76582, 20001, 10024, N'Having problems with information systems diagrams.', CAST(N'2015-08-22 00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[CONSULTATION] ([consultation_id], [coordinator_id], [tutor_id], [student_id], [consultation_details], [consultation_date], [student_arrived], [consultation_rating]) VALUES (7, 76582, 20005, 10024, N'sdgdsg', CAST(N'2015-08-01 00:00:00.000' AS DateTime), 1, 5)
SET IDENTITY_INSERT [dbo].[CONSULTATION] OFF
SET IDENTITY_INSERT [dbo].[COURSE] ON 

INSERT [dbo].[COURSE] ([course_id], [course_name]) VALUES (1, N'Information Systems')
INSERT [dbo].[COURSE] ([course_id], [course_name]) VALUES (2, N'Computer Science')
INSERT [dbo].[COURSE] ([course_id], [course_name]) VALUES (3, N'Law')
INSERT [dbo].[COURSE] ([course_id], [course_name]) VALUES (4, N'Electrical Engineering')
INSERT [dbo].[COURSE] ([course_id], [course_name]) VALUES (5, N'Macro Economics')
INSERT [dbo].[COURSE] ([course_id], [course_name]) VALUES (6, N'Micro Economics')
INSERT [dbo].[COURSE] ([course_id], [course_name]) VALUES (7, N'Mathematics')
INSERT [dbo].[COURSE] ([course_id], [course_name]) VALUES (8, N'Statistics')
INSERT [dbo].[COURSE] ([course_id], [course_name]) VALUES (9, N'Computational and Applied Mathematics')
INSERT [dbo].[COURSE] ([course_id], [course_name]) VALUES (10, N'Geography')
SET IDENTITY_INSERT [dbo].[COURSE] OFF
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10003, 50, 50, 50)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10004, 45, 55, 65)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10005, 32, 44, 67)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10007, 80, 80, 80)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10008, 98, 65, 78)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10009, 66, 66, 66)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10010, 34, 35, 34.5)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10013, 33.33, 33.33, 33.33)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10014, 66, 67, 66.5)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10022, 76, 77, 76.5)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10023, 87, 82, 84)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10024, 83, 82, 83.4)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10026, 72, 72, 72)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10027, 74.5, 74.5, 74.5)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10028, 73.3, 73.3, 73.3)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10029, 67.8, 67.8, 67.8)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10032, 64.7, 64.7, 64.7)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10033, 68, 68, 68)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10034, 72, 76, 75)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (1, 10035, 77, 78, 77)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (2, 10003, 87, 72, 78)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (2, 10004, 56, 56, 56)
INSERT [dbo].[ENROLLMENT] ([course_id], [student_id], [class_mark], [exam_mark], [year_mark]) VALUES (2, 10032, 82, 82, 82)
SET IDENTITY_INSERT [dbo].[GROUP] ON 

INSERT [dbo].[GROUP] ([group_id], [group_name], [group_day], [group_time]) VALUES (1, N'Group 1', N'Monday', CAST(N'14:00:00' AS Time))
INSERT [dbo].[GROUP] ([group_id], [group_name], [group_day], [group_time]) VALUES (2, N'Group 2', N'Tuesday', CAST(N'08:00:00' AS Time))
INSERT [dbo].[GROUP] ([group_id], [group_name], [group_day], [group_time]) VALUES (3, N'Group 3', N'Wednesday', CAST(N'08:00:00' AS Time))
INSERT [dbo].[GROUP] ([group_id], [group_name], [group_day], [group_time]) VALUES (4, N'Group 4', N'Thursday', CAST(N'14:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[GROUP] OFF
INSERT [dbo].[SESSION] ([tutor_id], [group_id], [updated_attendance]) VALUES (20001, 1, 1)
INSERT [dbo].[SESSION] ([tutor_id], [group_id], [updated_attendance]) VALUES (20001, 2, 0)
INSERT [dbo].[SESSION] ([tutor_id], [group_id], [updated_attendance]) VALUES (20010, 3, 0)
INSERT [dbo].[SESSION] ([tutor_id], [group_id], [updated_attendance]) VALUES (20010, 4, 1)
INSERT [dbo].[SSS_COORDINATOR] ([coordinator_id], [coordinator_firstname], [coordinator_lastname], [coordinator_id_passport], [coordinator_dateofbirth], [coordinator_emailaddress], [coordinator_cellnumber]) VALUES (69857, N'Sam', N'Gap', N'3253654678766', CAST(N'1958-01-02 00:00:00.000' AS DateTime), N'Sam.Gap@sss.com', N'(071)667 6778')
INSERT [dbo].[SSS_COORDINATOR] ([coordinator_id], [coordinator_firstname], [coordinator_lastname], [coordinator_id_passport], [coordinator_dateofbirth], [coordinator_emailaddress], [coordinator_cellnumber]) VALUES (76582, N'Charles', N'Peters', N'8990060656183', CAST(N'1989-06-13 00:00:00.000' AS DateTime), N'Charles.Peters@sss.com', N'(071)567 2854')
INSERT [dbo].[SSS_COORDINATOR] ([coordinator_id], [coordinator_firstname], [coordinator_lastname], [coordinator_id_passport], [coordinator_dateofbirth], [coordinator_emailaddress], [coordinator_cellnumber]) VALUES (76589, N'Zuko', N'Singhdee', N'2103313207185', CAST(N'1968-05-05 00:00:00.000' AS DateTime), N'Zuko.Singhdee@sss.com', N'(073)555 5555')
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10003, 76582, NULL, N'Jill', N'Hill', N'9415362161183', CAST(N'1994-07-12 00:00:00.000' AS DateTime), N'Jill.Hill@sss.com', N'(084)228 2135', 1, N'SB000', N'BLUE', 60)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10004, 76582, 1, N'Nathan', N'De Beer', N'0005050797181', CAST(N'1995-06-06 00:00:00.000' AS DateTime), N'Nathan.De.Beer@sss.com', N'(072)569 4585', 1, N'SB000', N'BRONZE', 130)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10005, 76582, 1, N'Anne', N'Hunt', N'3212233008182', CAST(N'1996-09-09 00:00:00.000' AS DateTime), N'Anne.Hunt@sss.com', N'(081)235 2213', 1, N'ACSCI', N'BLUE', 50)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10007, 76582, 1, N'Nadine', N'Steps', N'3212211318181', CAST(N'1995-08-16 00:00:00.000' AS DateTime), N'Nadine.Steps@sss.com', N'(084)228 2135', 1, N'ACSCI', N'BLUE', 70)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10008, 76582, 2, N'Dan', N'Patterson', N'9890060656183', CAST(N'1994-03-02 00:00:00.000' AS DateTime), N'Dan.Patterson@sss.com', N'(071)789 2567', 2, N'ACSCI', N'SILVER', 150)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10009, 76582, 2, N'Harry', N'Key', N'0105060144182', CAST(N'1995-08-08 00:00:00.000' AS DateTime), N'Harry.Key@sss.com', N'(071)549 5634', 2, N'ACSCI', N'BRONZE', 100)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10010, 76582, 2, N'Hermione', N'Jilly', N'1302024907189', CAST(N'1995-06-07 00:00:00.000' AS DateTime), N'Hermione.Jilly@sss.com', N'(083)556 1566', 2, N'ACSCI', N'BRONZE', 120)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10013, 76582, 3, N'Savannah', N'Price', N'4604060443186', CAST(N'1995-10-21 00:00:00.000' AS DateTime), N'Savannah.Price@sss.com', N'(065)456 2870', 3, N'ACSCI', N'SILVER', 150)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10014, 76582, 3, N'Prakesh', N'Naidoo', N'0005050797181', CAST(N'1995-07-14 00:00:00.000' AS DateTime), N'Prakesh.Naidoo@sss.com', N'(071)213 1465', 1, N'ACSCI', N'SILVER', 160)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10022, 76582, 3, N'Dane', N'Smith', N'5408311677181', CAST(N'1996-09-30 00:00:00.000' AS DateTime), N'Dane.Smith@sss.com', N'(073)851 1354', 1, N'ACSCI', N'GOLD', 180)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10023, 76582, 4, N'Shane', N'Potter', N'1203214646183', CAST(N'1995-03-02 00:00:00.000' AS DateTime), N'Shane.Potter@sss.com', N'(073)148 1234', 1, N'ACSCI', N'BRONZE', 100)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10024, 76582, 4, N'Amir', N'Cohen', N'4604060443186', CAST(N'1995-04-04 00:00:00.000' AS DateTime), N'Amir.Cohen@sss.com', N'(084)254 2548', 1, N'ACSCI', N'SILVER', 150)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10026, 76582, 4, N'Abe', N'Jameson', N'5555510501187', CAST(N'1995-01-01 00:00:00.000' AS DateTime), N'Abe.Jameson@sss.com', N'(084)228 2135', 1, N'ACSCI', N'BRONZE', 100)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10027, 76582, 4, N'Gera', N'Feld', N'2103313207185', CAST(N'1995-01-10 00:00:00.000' AS DateTime), N'Gera.Feld@sss.com', N'(071)774 3259', 1, N'ACSCI', N'SILVER', 160)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10028, 76582, 3, N'Uriel', N'Ruiz', N'2103212427181', CAST(N'1995-04-06 00:00:00.000' AS DateTime), N'Uriel.Ruiz@sss.com', N'(084)228 2135', 1, N'ACSCI', N'SILVER', 150)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10029, 76582, 2, N'Leon', N'Holmes', N'2203033540186', CAST(N'1997-09-09 00:00:00.000' AS DateTime), N'Leon.Holmes@sss.com', N'(084)285 5465', 1, N'ACSCI', N'SILVER', 150)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10032, 76582, 1, N'Andreas', N'Watson', N'9890060656183', CAST(N'1995-08-06 00:00:00.000' AS DateTime), N'Andreas.Watson@sss.com', N'(083)556 1566', 1, N'SB000', N'SILVER', 160)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10033, 76582, NULL, N'Yair', N'Levin', N'3303033626180', CAST(N'1995-11-11 00:00:00.000' AS DateTime), N'Yair.Levin@sss.com', N'(071)789 2567', 1, N'ACSCI', N'WHITE', 15)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10034, 76582, NULL, N'Nevil', N'Anderson', N'2103212427181', CAST(N'1995-09-17 00:00:00.000' AS DateTime), N'Nevil.Anderson@sss.com', N'(084)333 4568', 2, N'ACSCI', N'WHITE', 10)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10035, 76582, NULL, N'Jonny', N'Cave', N'9405366364086', CAST(N'1995-11-18 00:00:00.000' AS DateTime), N'Jonny.Cave@sss.com', N'(071)774 3259', 2, N'ACSCI', N'WHITE', 20)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10036, 76582, 1, N'Blair', N'Kettle', N'5987442615111', CAST(N'1995-03-01 00:00:00.000' AS DateTime), N'Blair.Kettle@sss.com', N'(083)226 6333', 2, N'ACSCI', N'WHITE', 30)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10037, 76582, 2, N'Daniel', N'Johnson', N'9401202200355', CAST(N'1994-03-01 16:21:58.000' AS DateTime), N'danieljohnson@sss.com', N'(085)545 4243', 2, N'BSc', N'WHITE', 25)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10038, 76582, 4, N'Pete ', N'Jackson', N'9302144455672', CAST(N'1993-01-09 00:00:00.000' AS DateTime), N'petejackson@sss.com', N'(086)548 4545', 1, N'Bcom', N'WHITE', 5)
INSERT [dbo].[STUDENT] ([student_id], [coordinator_id], [group_id], [student_firstname], [student_lastname], [student_id_passport], [student_dateofbirth], [student_emailaddress], [student_mobilenumber], [student_yearofstudy], [student_degreeprogramme], [student_status], [student_points]) VALUES (10039, 76582, 3, N'Daisy', N'Blue', N'9213421134325', CAST(N'1992-04-03 00:00:00.000' AS DateTime), N'DaisyBlue@sss.com', N'(076)548 9222', 1, N'Bcom', N'WHITE', 30)
SET IDENTITY_INSERT [dbo].[STUDENT_ACTIVITY] ON 

INSERT [dbo].[STUDENT_ACTIVITY] ([student_activity_id], [student_activity_name], [student_activity_pointvalue], [student_activity_week], [student_activity_description]) VALUES (1, N'Reading-Level Test', 10, 1, N'This evaluates students reading competencies.')
INSERT [dbo].[STUDENT_ACTIVITY] ([student_activity_id], [student_activity_name], [student_activity_pointvalue], [student_activity_week], [student_activity_description]) VALUES (2, N'Time Management Workshop', 10, 2, N'This teaches students time management techniques.')
INSERT [dbo].[STUDENT_ACTIVITY] ([student_activity_id], [student_activity_name], [student_activity_pointvalue], [student_activity_week], [student_activity_description]) VALUES (3, N'Study Skills Workshop', 10, 3, N'This teaches different methods of studying.')
INSERT [dbo].[STUDENT_ACTIVITY] ([student_activity_id], [student_activity_name], [student_activity_pointvalue], [student_activity_week], [student_activity_description]) VALUES (4, N'Note Taking Strategies Workshop', 10, 4, N'This teaches students different ways to take notes.')
INSERT [dbo].[STUDENT_ACTIVITY] ([student_activity_id], [student_activity_name], [student_activity_pointvalue], [student_activity_week], [student_activity_description]) VALUES (5, N'Test Taking Strategies Workshop', 10, 5, N'This teaches students different ways to take and cope with tests and exams.')
INSERT [dbo].[STUDENT_ACTIVITY] ([student_activity_id], [student_activity_name], [student_activity_pointvalue], [student_activity_week], [student_activity_description]) VALUES (6, N'Block 1 Reflection Quiz', 10, 7, N'This tests students on all the activites in block 1.')
INSERT [dbo].[STUDENT_ACTIVITY] ([student_activity_id], [student_activity_name], [student_activity_pointvalue], [student_activity_week], [student_activity_description]) VALUES (7, N'Reflection and Motivation Workshop ', 10, 8, N'Teaches students how to reflect on ones goals and how to remain motivated.')
INSERT [dbo].[STUDENT_ACTIVITY] ([student_activity_id], [student_activity_name], [student_activity_pointvalue], [student_activity_week], [student_activity_description]) VALUES (8, N'Learning from Mistakes Workshop', 10, 9, N'This teaches students that everyone makes misakes.')
INSERT [dbo].[STUDENT_ACTIVITY] ([student_activity_id], [student_activity_name], [student_activity_pointvalue], [student_activity_week], [student_activity_description]) VALUES (9, N'Examination Study Planning Workshop', 10, 12, N'This teaches students about how to plan for examinations.')
INSERT [dbo].[STUDENT_ACTIVITY] ([student_activity_id], [student_activity_name], [student_activity_pointvalue], [student_activity_week], [student_activity_description]) VALUES (10, N'Block 2 Reflection Quiz ', 10, 13, N'This is a quiz testing general knowledge learnt in block 2.')
SET IDENTITY_INSERT [dbo].[STUDENT_ACTIVITY] OFF
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20001, N'Susan', N'Kotzen', N'9415362161183', CAST(N'1993-07-12 00:00:00.000' AS DateTime), N'Susan.Kotzen@sss.com', N'(071)549 5634', 1)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20002, N'Nathan', N'De Beer', N'9405366364086', CAST(N'1995-08-08 00:00:00.000' AS DateTime), N'Nathan.De Beer@sss.com', N'(084)333 4568', 1)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20003, N'Anne', N'Junt', N'1905052659181', CAST(N'1991-01-05 00:00:00.000' AS DateTime), N'Anne.Junt@sss.com', N'(065)456 2870', 1)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20004, N'Nadine', N'Steps', N'0105060144182', CAST(N'1988-05-06 00:00:00.000' AS DateTime), N'Nadine.Steps@sss.com', N'(073)851 1354', 1)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20005, N'Dan', N'Patterson', N'0005050797181', CAST(N'1987-06-06 00:00:00.000' AS DateTime), N'Dan.Patterson@sss.com', N'(084)685 2969', 1)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20006, N'Harry', N'Key', N'1302024907189', CAST(N'1994-07-12 00:00:00.000' AS DateTime), N'Harry.Key@sss.com', N'(072)932 4235', 1)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20007, N'Hermione', N'Jilly', N'2103030745186', CAST(N'1969-12-30 00:00:00.000' AS DateTime), N'Hermione.Jilly@sss.com', N'(083)445 1245', 1)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20008, N'Savannah', N'Price', N'3212233008182', CAST(N'1992-03-05 00:00:00.000' AS DateTime), N'Savannah.Price@sss.com', N'(071)774 3259', 1)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20009, N'Prakesh', N'Naidoo', N'2103212427181', CAST(N'1993-08-25 00:00:00.000' AS DateTime), N'Prakesh.Naidoo@sss.com', N'(083)556 1566', 1)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20010, N'Darryn', N'Spouse', N'2103313207185', CAST(N'1992-02-29 00:00:00.000' AS DateTime), N'Darryn.Spouse@sss.com', N'(084)228 2135', 0)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20011, N'Catherine', N'Jennings', N'3212211318181', CAST(N'1995-03-08 00:00:00.000' AS DateTime), N'Catherine.Jennings@sss.com', N'(083)267 1546', 0)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20012, N'James', N'Door', N'4604060443186', CAST(N'1994-01-10 00:00:00.000' AS DateTime), N'James.Door@sss.com', N'(071)213 1465', 0)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20013, N'Keith', N'Gate', N'9890060656183', CAST(N'1994-06-03 00:00:00.000' AS DateTime), N'Keith.Gate@sss.com', N'(072)569 4585', 0)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20014, N'Tom', N'Van De Merwe', N'9868230899180', CAST(N'1994-08-08 00:00:00.000' AS DateTime), N'Tom.Van De Merwe@sss.com', N'(084)285 5465', 0)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20015, N'Jack', N'Black', N'1203214646183', CAST(N'1994-09-04 00:00:00.000' AS DateTime), N'Jack.Black@sss.com', N'(073)148 1234', 0)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20016, N'Tato', N'Muda', N'2203033540186', CAST(N'1994-03-07 00:00:00.000' AS DateTime), N'Tato.Muda@sss.com', N'(081)235 2213', 0)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20017, N'Sarah', N'Jackson', N'5555510501187', CAST(N'1992-06-22 00:00:00.000' AS DateTime), N'Sarah.Jackson@sss.com', N'(072)241 2356', 0)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20018, N'Jones', N'Johnson', N'3303033626180', CAST(N'1993-01-14 00:00:00.000' AS DateTime), N'Jones.Johnson@sss.com', N'(083)856 2354', 0)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20019, N'Susan', N'Stuart', N'5408311677181', CAST(N'1994-07-12 00:00:00.000' AS DateTime), N'Susan.Stuart@sss.com', N'(084)254 2548', 0)
INSERT [dbo].[TUTOR] ([tutor_id], [tutor_firstname], [tutor_lastname], [tutor_id_passport], [tutor_dateofbirth], [tutor_emailaddress], [tutor_cellnumber], [tutor_trainingstatus]) VALUES (20020, N'Zoe', N'Caplin', N'3203133010188', CAST(N'1992-01-01 00:00:00.000' AS DateTime), N'Zoe.Caplin@sss.com ', N'(071)789 2567', 0)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10003, N'Jill.Hill@sss.com', 10003, NULL, NULL, N'h8yK+1k0AEz/z9uC54lmsAi2Qjwulcns8HkSXzVQQa9zmm1k2rJFr8LSKWeM7uw8L3Dp0KBcuH8sMgwL5c42ZA==', N'QdtcQ5oKBNgUdICygd2CWZmlzvPlO/uR0I1wZgqm+HBr6UEO9yOUylZwOaR96UCPnfOhQlkJNwMwxE2Z7rXCVQ==', NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10004, N'Nathan.De.Beer@sss.com', 10004, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10005, N'Anne.Hunt@sss.com', 10005, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10007, N'Nadine.Steps@sss.com', 10007, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10008, N'Dan.Patterson@sss.com', 10008, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10009, N'Harry.Key@sss.com', 10009, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10010, N'Hermione.Jilly@sss.com', 10010, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10013, N'Savannah.Price@sss.com', 10013, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10014, N'Prakesh.Naidoo@sss.com', 10014, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10022, N'Dane.Smith@sss.com', 10022, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10023, N'Shane.Potter@sss.com', 10023, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10024, N'Amir.Cohen@sss.com', 10024, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10026, N'Abe.Jameson@sss.com', 10026, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10027, N'Gera.Feld@sss.com', 10027, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10028, N'Uriel.Ruiz@sss.com', 10028, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10029, N'Leon.Holmes@sss.com', 10029, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10032, N'Andreas.Watson@sss.com', 10032, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10033, N'Yair.Levin@sss.com', 10033, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10034, N'Nevil.Anderson@sss.com', 10034, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10035, N'Jonny.Cave@sss.com', 10035, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10036, N'Blair.Kettle@sss.com', 10036, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10037, N'danieljohnson@sss.com', 10037, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10038, N'petejackson@sss.com', 10038, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (10039, N'DaisyBlue@sss.com', 10039, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20001, N'Susan.Kotzen@sss.com', NULL, NULL, 20001, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20002, N'Nathan.De Beer@sss.com', NULL, NULL, 20002, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20003, N'Anne.Junt@sss.com', NULL, NULL, 20003, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20004, N'Nadine.Steps@sss.com', NULL, NULL, 20004, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20005, N'Dan.Patterson@sss.com', NULL, NULL, 20005, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20006, N'Harry.Key@sss.com', NULL, NULL, 20006, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20007, N'Hermione.Jilly@sss.com', NULL, NULL, 20007, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20008, N'Savannah.Price@sss.com', NULL, NULL, 20008, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20009, N'Prakesh.Naidoo@sss.com', NULL, NULL, 20009, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20010, N'Darryn.Spouse@sss.com', NULL, NULL, 20010, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20011, N'Catherine.Jennings@sss.com', NULL, NULL, 20011, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20012, N'James.Door@sss.com', NULL, NULL, 20012, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20013, N'Keith.Gate@sss.com', NULL, NULL, 20013, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20014, N'Tom.Van De Merwe@sss.com', NULL, NULL, 20014, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20015, N'Jack.Black@sss.com', NULL, NULL, 20015, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20016, N'Tato.Muda@sss.com', NULL, NULL, 20016, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20017, N'Sarah.Jackson@sss.com', NULL, NULL, 20017, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20018, N'Jones.Johnson@sss.com', NULL, NULL, 20018, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20019, N'Susan.Stuart@sss.com', NULL, NULL, 20019, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (20020, N'Zoe.Caplin@sss.com ', NULL, NULL, 20020, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (69857, N'Sam.Gap@sss.com', NULL, 69857, NULL, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (76582, N'Charles.Peters@sss.com', NULL, 76582, NULL, N'h8yK+1k0AEz/z9uC54lmsAi2Qjwulcns8HkSXzVQQa9zmm1k2rJFr8LSKWeM7uw8L3Dp0KBcuH8sMgwL5c42ZA==', N'iUEf19fwb3GDB5noX00XsrdknBSY+TeZz4jomkaURCsDoPxtsctgocGlK5Y9TAdn1fX4q+Da7pZIHoIB0xFaOw==', NULL, NULL, 0, 0)
INSERT [dbo].[USERPROFILE] ([user_id], [user_name], [student_id], [coordinator_id], [tutor_id], [password_hash], [password_salt], [PrimaryAccent], [SecondaryAccent], [isDark], [resetPassword]) VALUES (76589, N'Zuko.Singhdee@sss.com', NULL, 76589, NULL, NULL, NULL, NULL, NULL, 0, 1)
ALTER TABLE [dbo].[ATTENDANCE]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[STUDENT] ([student_id])
GO
ALTER TABLE [dbo].[ATTENDANCE]  WITH CHECK ADD FOREIGN KEY([student_activity_id])
REFERENCES [dbo].[STUDENT_ACTIVITY] ([student_activity_id])
GO
ALTER TABLE [dbo].[CONSULTATION]  WITH CHECK ADD FOREIGN KEY([coordinator_id])
REFERENCES [dbo].[SSS_COORDINATOR] ([coordinator_id])
GO
ALTER TABLE [dbo].[CONSULTATION]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[STUDENT] ([student_id])
GO
ALTER TABLE [dbo].[CONSULTATION]  WITH CHECK ADD FOREIGN KEY([tutor_id])
REFERENCES [dbo].[TUTOR] ([tutor_id])
GO
ALTER TABLE [dbo].[ENROLLMENT]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[COURSE] ([course_id])
GO
ALTER TABLE [dbo].[ENROLLMENT]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[STUDENT] ([student_id])
GO
ALTER TABLE [dbo].[SESSION]  WITH CHECK ADD FOREIGN KEY([group_id])
REFERENCES [dbo].[GROUP] ([group_id])
GO
ALTER TABLE [dbo].[SESSION]  WITH CHECK ADD FOREIGN KEY([tutor_id])
REFERENCES [dbo].[TUTOR] ([tutor_id])
GO
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD FOREIGN KEY([coordinator_id])
REFERENCES [dbo].[SSS_COORDINATOR] ([coordinator_id])
GO
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD FOREIGN KEY([group_id])
REFERENCES [dbo].[GROUP] ([group_id])
GO
ALTER TABLE [dbo].[USERPROFILE]  WITH CHECK ADD FOREIGN KEY([coordinator_id])
REFERENCES [dbo].[SSS_COORDINATOR] ([coordinator_id])
GO
ALTER TABLE [dbo].[USERPROFILE]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[STUDENT] ([student_id])
GO
ALTER TABLE [dbo].[USERPROFILE]  WITH CHECK ADD FOREIGN KEY([tutor_id])
REFERENCES [dbo].[TUTOR] ([tutor_id])
GO
