USE [master]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/15/2023 9:28:47 PM ******/
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
/****** Object:  Table [dbo].[Agents]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
 CONSTRAINT [PK_Agents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Budgets]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Budgets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TravellerName] [nvarchar](max) NULL,
	[TravellerEmail] [nvarchar](max) NULL,
	[TravelMode] [nvarchar](max) NULL,
	[Destination] [nvarchar](max) NULL,
	[Purpose] [nvarchar](max) NULL,
	[DepartureDate] [nvarchar](max) NULL,
	[ArrivalDate] [nvarchar](max) NULL,
	[Estimated_Total_Cost] [nvarchar](max) NULL,
	[Initiated] [nvarchar](max) NULL,
	[NumberOfDays] [nvarchar](max) NULL,
 CONSTRAINT [PK_Budgets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Costs]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Costs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Item] [nvarchar](max) NULL,
	[ItemCost] [nvarchar](max) NULL,
	[NumberOfItems] [nvarchar](max) NULL,
	[TotalItemCost] [int] NULL,
	[RequestId] [int] NULL,
 CONSTRAINT [PK_Costs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlyerNos]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlyerNos](
	[Id] [nvarchar](450) NOT NULL,
	[Airline] [nvarchar](max) NULL,
	[Number] [nvarchar](max) NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_FlyerNos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelApprovals]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelApprovals](
	[HotelApprovalsId] [int] NOT NULL,
	[HotelApprovedId] [int] NOT NULL,
 CONSTRAINT [PK_HotelApprovals] PRIMARY KEY CLUSTERED 
(
	[HotelApprovalsId] ASC,
	[HotelApprovedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelForBrands]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelForBrands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Brand] [nvarchar](max) NULL,
 CONSTRAINT [PK_HotelForBrands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelLocations]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelLocations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](max) NULL,
	[HotelForBrandsId] [int] NULL,
 CONSTRAINT [PK_HotelLocations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelQuotation]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelQuotation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AgentId] [int] NULL,
	[QuotationText] [nvarchar](max) NULL,
	[Selected] [bit] NULL,
	[Booked] [bit] NULL,
	[Confirmed] [bit] NULL,
	[Hovered] [bit] NULL,
	[Custom] [bit] NULL,
	[RequestId] [int] NULL,
 CONSTRAINT [PK_HotelQuotation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotelName] [nvarchar](max) NULL,
	[Average_rate] [nvarchar](max) NULL,
	[Actual_rate] [nvarchar](max) NULL,
	[HotelLocationId] [int] NULL,
 CONSTRAINT [PK_Hotels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NULL,
	[RequestId] [int] NULL,
	[Filename] [nvarchar](max) NULL,
 CONSTRAINT [PK_Invoices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [nvarchar](max) NULL,
	[FromUserId] [int] NULL,
	[ToUserId] [int] NULL,
	[RequestId] [int] NULL,
	[Event] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[RequestId] [int] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Time] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[TicketId] [int] NULL,
	[From] [nvarchar](max) NULL,
	[To] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[Event] [nvarchar](max) NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quotations]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quotations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AgentId] [int] NULL,
	[QuotationText] [nvarchar](max) NULL,
	[Selected] [bit] NULL,
	[Booked] [bit] NULL,
	[Confirmed] [bit] NULL,
	[Hovered] [bit] NULL,
	[Custom] [bit] NULL,
	[RequestId] [int] NULL,
 CONSTRAINT [PK_Quotations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestAgents]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestAgents](
	[AgentsId] [int] NOT NULL,
	[RequestsId] [int] NOT NULL,
 CONSTRAINT [PK_RequestAgents] PRIMARY KEY CLUSTERED 
(
	[AgentsId] ASC,
	[RequestsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requests]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Destination] [nvarchar](max) NULL,
	[Purpose] [nvarchar](max) NULL,
	[Mode] [nvarchar](max) NULL,
	[AccomodationRequired] [nvarchar](max) NULL,
	[NumberOfNights] [nvarchar](max) NULL,
	[TotalCost] [int] NULL,
	[RequesterId] [int] NULL,
	[Number] [int] NULL,
	[Status] [nvarchar](max) NULL,
	[AgentNumbers] [int] NULL,
	[CurrentHandlerId] [int] NULL,
	[Date] [nvarchar](max) NULL,
	[StartDate] [nvarchar](max) NULL,
	[EndDate] [nvarchar](max) NULL,
	[Booked] [bit] NULL,
	[Confirmed] [bit] NULL,
	[Selected] [bit] NULL,
	[Processed] [bit] NULL,
	[SeekingInvoices] [bit] NULL,
	[SeekingHotelInvoices] [bit] NULL,
	[InTrip] [bit] NULL,
	[Best] [nvarchar](max) NULL,
	[BestHotel] [nvarchar](max) NULL,
	[HotelBooked] [bit] NULL,
	[HotelConfirmed] [bit] NULL,
	[TicketInvoiceUploaded] [bit] NULL,
	[HotelInvoiceUploaded] [bit] NULL,
 CONSTRAINT [PK_Requests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicketApprovals]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketApprovals](
	[TicketApprovalsId] [int] NOT NULL,
	[TicketApprovedId] [int] NOT NULL,
 CONSTRAINT [PK_TicketApprovals] PRIMARY KEY CLUSTERED 
(
	[TicketApprovalsId] ASC,
	[TicketApprovedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [nvarchar](max) NULL,
	[EmpCode] [nvarchar](max) NULL,
	[Designation] [nvarchar](max) NULL,
	[MailAddress] [nvarchar](max) NULL,
	[Unit] [nvarchar](max) NULL,
	[Section] [nvarchar](max) NULL,
	[Wing] [nvarchar](max) NULL,
	[Team] [nvarchar](max) NULL,
	[Department] [nvarchar](max) NULL,
	[TeamType] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[UserType] [nvarchar](max) NULL,
	[Available] [bit] NULL,
	[Rating] [int] NULL,
	[Raters] [int] NULL,
	[Extension] [nvarchar](max) NULL,
	[MobileNo] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[Numbers] [int] NULL,
	[SuperVisorId] [int] NULL,
	[ZonalHeadId] [int] NULL,
	[TravelHandlerId] [int] NULL,
	[PassportNo] [nvarchar](max) NULL,
	[Preferences] [nvarchar](max) NULL,
	[HasFrequentFlyerNo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Costs]  WITH CHECK ADD  CONSTRAINT [FK_Costs_Requests_RequestId] FOREIGN KEY([RequestId])
REFERENCES [dbo].[Requests] ([Id])
GO
ALTER TABLE [dbo].[Costs] CHECK CONSTRAINT [FK_Costs_Requests_RequestId]
GO
ALTER TABLE [dbo].[FlyerNos]  WITH CHECK ADD  CONSTRAINT [FK_FlyerNos_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FlyerNos] CHECK CONSTRAINT [FK_FlyerNos_Users_UserId]
GO
ALTER TABLE [dbo].[HotelApprovals]  WITH CHECK ADD  CONSTRAINT [FK_HotelApprovals_Requests_HotelApprovedId] FOREIGN KEY([HotelApprovedId])
REFERENCES [dbo].[Requests] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HotelApprovals] CHECK CONSTRAINT [FK_HotelApprovals_Requests_HotelApprovedId]
GO
ALTER TABLE [dbo].[HotelApprovals]  WITH CHECK ADD  CONSTRAINT [FK_HotelApprovals_Users_HotelApprovalsId] FOREIGN KEY([HotelApprovalsId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HotelApprovals] CHECK CONSTRAINT [FK_HotelApprovals_Users_HotelApprovalsId]
GO
ALTER TABLE [dbo].[HotelLocations]  WITH CHECK ADD  CONSTRAINT [FK_HotelLocations_HotelForBrands_HotelForBrandsId] FOREIGN KEY([HotelForBrandsId])
REFERENCES [dbo].[HotelForBrands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HotelLocations] CHECK CONSTRAINT [FK_HotelLocations_HotelForBrands_HotelForBrandsId]
GO
ALTER TABLE [dbo].[HotelQuotation]  WITH CHECK ADD  CONSTRAINT [FK_HotelQuotation_Agents_AgentId] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agents] ([Id])
GO
ALTER TABLE [dbo].[HotelQuotation] CHECK CONSTRAINT [FK_HotelQuotation_Agents_AgentId]
GO
ALTER TABLE [dbo].[HotelQuotation]  WITH CHECK ADD  CONSTRAINT [FK_HotelQuotation_Requests_RequestId] FOREIGN KEY([RequestId])
REFERENCES [dbo].[Requests] ([Id])
GO
ALTER TABLE [dbo].[HotelQuotation] CHECK CONSTRAINT [FK_HotelQuotation_Requests_RequestId]
GO
ALTER TABLE [dbo].[Hotels]  WITH CHECK ADD  CONSTRAINT [FK_Hotels_HotelLocations_HotelLocationId] FOREIGN KEY([HotelLocationId])
REFERENCES [dbo].[HotelLocations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hotels] CHECK CONSTRAINT [FK_Hotels_HotelLocations_HotelLocationId]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoices_Requests_RequestId] FOREIGN KEY([RequestId])
REFERENCES [dbo].[Requests] ([Id])
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoices_Requests_RequestId]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD FOREIGN KEY([FromUserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD FOREIGN KEY([RequestId])
REFERENCES [dbo].[Requests] ([Id])
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD FOREIGN KEY([ToUserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Requests_RequestId] FOREIGN KEY([RequestId])
REFERENCES [dbo].[Requests] ([Id])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Requests_RequestId]
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD  CONSTRAINT [FK_Notifications_Requests_TicketId] FOREIGN KEY([TicketId])
REFERENCES [dbo].[Requests] ([Id])
GO
ALTER TABLE [dbo].[Notifications] CHECK CONSTRAINT [FK_Notifications_Requests_TicketId]
GO
ALTER TABLE [dbo].[Quotations]  WITH CHECK ADD  CONSTRAINT [FK_Quotations_Agents_AgentId] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agents] ([Id])
GO
ALTER TABLE [dbo].[Quotations] CHECK CONSTRAINT [FK_Quotations_Agents_AgentId]
GO
ALTER TABLE [dbo].[Quotations]  WITH CHECK ADD  CONSTRAINT [FK_Quotations_Requests_RequestId] FOREIGN KEY([RequestId])
REFERENCES [dbo].[Requests] ([Id])
GO
ALTER TABLE [dbo].[Quotations] CHECK CONSTRAINT [FK_Quotations_Requests_RequestId]
GO
ALTER TABLE [dbo].[RequestAgents]  WITH CHECK ADD  CONSTRAINT [FK_RequestAgents_Agents_AgentsId] FOREIGN KEY([AgentsId])
REFERENCES [dbo].[Agents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RequestAgents] CHECK CONSTRAINT [FK_RequestAgents_Agents_AgentsId]
GO
ALTER TABLE [dbo].[RequestAgents]  WITH CHECK ADD  CONSTRAINT [FK_RequestAgents_Requests_RequestsId] FOREIGN KEY([RequestsId])
REFERENCES [dbo].[Requests] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RequestAgents] CHECK CONSTRAINT [FK_RequestAgents_Requests_RequestsId]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Users_CurrentHandlerId] FOREIGN KEY([CurrentHandlerId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Users_CurrentHandlerId]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Users_RequesterId] FOREIGN KEY([RequesterId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Users_RequesterId]
GO
ALTER TABLE [dbo].[TicketApprovals]  WITH CHECK ADD  CONSTRAINT [FK_TicketApprovals_Requests_TicketApprovedId] FOREIGN KEY([TicketApprovedId])
REFERENCES [dbo].[Requests] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TicketApprovals] CHECK CONSTRAINT [FK_TicketApprovals_Requests_TicketApprovedId]
GO
ALTER TABLE [dbo].[TicketApprovals]  WITH CHECK ADD  CONSTRAINT [FK_TicketApprovals_Users_TicketApprovalsId] FOREIGN KEY([TicketApprovalsId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TicketApprovals] CHECK CONSTRAINT [FK_TicketApprovals_Users_TicketApprovalsId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Users_SuperVisorId] FOREIGN KEY([SuperVisorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Users_SuperVisorId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Users_TravelHandlerId] FOREIGN KEY([TravelHandlerId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Users_TravelHandlerId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Users_ZonalHeadId] FOREIGN KEY([ZonalHeadId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Users_ZonalHeadId]
GO
/****** Object:  StoredProcedure [dbo].[DeleteRequests]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteRequests]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Delete from dbo.HotelQuotation;

Delete from dbo.Quotations;


Delete from dbo.Requests;


UPDATE dbo.Budgets 
SET dbo.Budgets.Initiated = 'No';


END
GO
/****** Object:  StoredProcedure [dbo].[GetAllUsers]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[GetAllUsers]
   
AS

BEGIN
    -- body of the stored procedure
    SELECT * FROM dbo.Users;

END

GO
/****** Object:  StoredProcedure [dbo].[GetLogs]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetLogs] 
	-- Add the parameters for the stored procedure here
	@RequestId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT Log.[Date], Log.[Event], ToUser.EmpName as [To], 
    FromUser.EmpName as [From] 
    FROM dbo.Log as Log 
    INNER JOIN dbo.Users as ToUser ON ToUser.Id = Log.ToUserId
    INNER JOIN dbo.Users as FromUser ON FromUser.Id = Log.FromUserId
    WHERE Log.RequestId = @RequestId


END
GO
/****** Object:  StoredProcedure [dbo].[GetRequest]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetRequest] 
	-- Add the parameters for the stored procedure here
	@Id int

	   
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
      SELECT * FROM dbo.Requests as Request
	  INNER JOIN dbo.Users as Requester ON Request.RequesterId = Requester.Id
	  INNER JOIN dbo.Users as CurrentHandler ON Request.CurrentHandlerId = CurrentHandler.Id
	  INNER JOIN dbo.Users as TravelHandler ON Requester.TravelHandlerId = TravelHandler.Id
	  INNER JOIN dbo.Users as Supervisor ON Requester.SuperVisorId = Supervisor.Id
	  INNER JOIN dbo.Users as ZonalHead On Requester.ZonalHeadId = ZonalHead.Id
	  WHERE Request.Id = @Id;

	  Select * FROM dbo.Quotations as Q WHERE Q.RequestId = @Id; 

	  Select * FROM dbo.HotelQuotation as H WHERE H.RequestId = @Id;

	  Select * FROM dbo.Users as Approvers
	  INNER JOIN dbo.TicketApprovals as Ticket on Ticket.TicketApprovalsId = Approvers.Id
	  WHERE Ticket.TicketApprovedId = @Id;


	  Select * FROM dbo.Users as Approvers
	  INNER JOIN dbo.HotelApprovals as Ticket on Ticket.HotelApprovalsId = Approvers.Id
	  WHERE Ticket.HotelApprovedId = @Id;


	  Select * FROM dbo.Message as Messages
	  Where Messages.RequestId = @Id;

	  Select * FROM dbo.Invoices as I
	  WHERE I.RequestId = @Id;

END
GO
/****** Object:  StoredProcedure [dbo].[InsertLog]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertLog] 
	-- Add the parameters for the stored procedure here
	@Id int,
	@Date nvarchar(max),
	@FromUserId int,
	@ToUserId int,
	@Event nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.Log (Date, FromUserId, ToUserId, RequestId, Event)
	VALUES (@Date, @FromUserId, @ToUserId, @Id, @Event);

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateInvoice]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateInvoice] 
	-- Add the parameters for the stored procedure here
	@Id int,
	@Filepath nvarchar(max),
	@What nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;



	BEGIN TRANSACTION;

	BEGIN TRY

    -- Insert statements for procedure here
	 INSERT INTO dbo.Invoices (Type, Filename, RequestId)
	 Values (@What, @Filepath, @Id);


	 IF @what = 'ticket'
	 BEGIN
	  UPDATE dbo.Requests
	  SET TicketInvoiceUploaded = 1
	  WHERE Id = @Id
	END
	ELSE IF @What = 'hotel'
	BEGIN
	  UPDATE dbo.Requests
	  SET HotelInvoiceUploaded = 1
	  WHERE Id = @Id
	END

	 SELECT Requester.EmpName, TravelHandler.EmpName from dbo.Requests as Request
	 INNER JOIN dbo.Users as Requester on Request.RequesterId = Requester.Id
	 INNER JOIN dbo.Users as TravelHandler on Requester.TravelHandlerId = TravelHandler.Id
	 WHERE Request.Id = @Id;

	 COMMIT;

	END TRY
	BEGIN CATCH
	  ROLLBACK;

	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateStatus]    Script Date: 12/15/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateStatus]
	-- Add the parameters for the stored procedure here
	  @Id int,
	  @Status nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE dbo.Requests 
	SET Status = @Status
	WHERE Id = @Id;


END
GO
