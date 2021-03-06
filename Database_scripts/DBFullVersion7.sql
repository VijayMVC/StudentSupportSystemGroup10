USE [IS2G10_DBSSS]
GO
/****** Object:  Table [dbo].[ATTENDANCE]    Script Date: 2015/10/07 03:11:46 PM ******/
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
/****** Object:  Table [dbo].[CONSULTATION]    Script Date: 2015/10/07 03:11:46 PM ******/
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
/****** Object:  Table [dbo].[COURSE]    Script Date: 2015/10/07 03:11:46 PM ******/
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
/****** Object:  Table [dbo].[ENROLLMENT]    Script Date: 2015/10/07 03:11:46 PM ******/
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
/****** Object:  Table [dbo].[GROUP]    Script Date: 2015/10/07 03:11:46 PM ******/
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
/****** Object:  Table [dbo].[SESSION]    Script Date: 2015/10/07 03:11:46 PM ******/
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
/****** Object:  Table [dbo].[SSS_COORDINATOR]    Script Date: 2015/10/07 03:11:46 PM ******/
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
/****** Object:  Table [dbo].[STUDENT]    Script Date: 2015/10/07 03:11:46 PM ******/
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
/****** Object:  Table [dbo].[STUDENT_ACTIVITY]    Script Date: 2015/10/07 03:11:46 PM ******/
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
/****** Object:  Table [dbo].[TUTOR]    Script Date: 2015/10/07 03:11:46 PM ******/
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
/****** Object:  Table [dbo].[USERPROFILE]    Script Date: 2015/10/07 03:11:46 PM ******/
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
