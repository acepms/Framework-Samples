USE [PetShop]
GO
/****** Object:  Role [aspnet_ChangeNotification_ReceiveNotificationsOnlyAccess]    Script Date: 01/18/2012 11:48:29 ******/
EXEC dbo.sp_addrole @rolename = N'aspnet_ChangeNotification_ReceiveNotificationsOnlyAccess', @ownername = N'dbo'
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 01/18/2012 11:48:29 ******/
EXEC dbo.sp_addrole @rolename = N'aspnet_Membership_BasicAccess', @ownername = N'dbo'
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 01/18/2012 11:48:29 ******/
EXEC dbo.sp_addrole @rolename = N'aspnet_Membership_ReportingAccess', @ownername = N'dbo'
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 01/18/2012 11:48:29 ******/
EXEC dbo.sp_addrole @rolename = N'aspnet_Membership_FullAccess', @ownername = N'dbo'
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 01/18/2012 11:48:29 ******/
EXEC dbo.sp_addrole @rolename = N'aspnet_Personalization_BasicAccess', @ownername = N'dbo'
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 01/18/2012 11:48:29 ******/
EXEC dbo.sp_addrole @rolename = N'aspnet_Personalization_ReportingAccess', @ownername = N'dbo'
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 01/18/2012 11:48:29 ******/
EXEC dbo.sp_addrole @rolename = N'aspnet_Personalization_FullAccess', @ownername = N'dbo'
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 01/18/2012 11:48:29 ******/
EXEC dbo.sp_addrole @rolename = N'aspnet_Profile_BasicAccess', @ownername = N'dbo'
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 01/18/2012 11:48:29 ******/
EXEC dbo.sp_addrole @rolename = N'aspnet_Profile_ReportingAccess', @ownername = N'dbo'
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 01/18/2012 11:48:29 ******/
EXEC dbo.sp_addrole @rolename = N'aspnet_Profile_FullAccess', @ownername = N'dbo'
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 01/18/2012 11:48:29 ******/
EXEC dbo.sp_addrole @rolename = N'aspnet_Roles_BasicAccess', @ownername = N'dbo'
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 01/18/2012 11:48:29 ******/
EXEC dbo.sp_addrole @rolename = N'aspnet_Roles_ReportingAccess', @ownername = N'dbo'
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 01/18/2012 11:48:29 ******/
EXEC dbo.sp_addrole @rolename = N'aspnet_Roles_FullAccess', @ownername = N'dbo'
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 01/18/2012 11:48:29 ******/
EXEC dbo.sp_addrole @rolename = N'aspnet_WebEvent_FullAccess', @ownername = N'dbo'
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supplier](
	[SuppId] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[Status] [varchar](2) NOT NULL,
	[Addr1] [varchar](80) NULL,
	[Addr2] [varchar](80) NULL,
	[City] [varchar](80) NULL,
	[State] [varchar](80) NULL,
	[Zip] [varchar](5) NULL,
	[Phone] [varchar](40) NULL,
 CONSTRAINT [PK__Supplier__F099B03F07020F21] PRIMARY KEY CLUSTERED 
(
	[SuppId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Supplier] ([SuppId], [Name], [Status], [Addr1], [Addr2], [City], [State], [Zip], [Phone]) VALUES (1, CONVERT(TEXT, N'XYZ Pets'), CONVERT(TEXT, N'AC'), CONVERT(TEXT, N'600 Avon Way'), CONVERT(TEXT, N''), CONVERT(TEXT, N'Los Angeles'), CONVERT(TEXT, N'CA'), CONVERT(TEXT, N'94024'), CONVERT(TEXT, N'212-947-0797'))
INSERT [dbo].[Supplier] ([SuppId], [Name], [Status], [Addr1], [Addr2], [City], [State], [Zip], [Phone]) VALUES (2, CONVERT(TEXT, N'ABC Pets'), CONVERT(TEXT, N'AC'), CONVERT(TEXT, N'700 Abalone Way'), CONVERT(TEXT, N''), CONVERT(TEXT, N'San Francisco'), CONVERT(TEXT, N'CA'), CONVERT(TEXT, N'94024'), CONVERT(TEXT, N'415-947-0797'))
/****** Object:  Table [dbo].[Profiles]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profiles](
	[UniqueID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](256) NOT NULL,
	[ApplicationName] [varchar](256) NOT NULL,
	[IsAnonymous] [bit] NULL,
	[LastActivityDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Profiles_1] PRIMARY KEY NONCLUSTERED 
(
	[UniqueID] ASC
) ON [PRIMARY],
 CONSTRAINT [PK_Profiles] UNIQUE CLUSTERED 
(
	[Username] ASC,
	[ApplicationName] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Profiles] ON
INSERT [dbo].[Profiles] ([UniqueID], [Username], [ApplicationName], [IsAnonymous], [LastActivityDate], [LastUpdatedDate]) VALUES (1, CONVERT(TEXT, N'AdamBarr'), CONVERT(TEXT, N'.NET Pet Shop 4.0'), 0, CAST(0x00009C31007C8831 AS DateTime), CAST(0x00009C31007C8831 AS DateTime))
INSERT [dbo].[Profiles] ([UniqueID], [Username], [ApplicationName], [IsAnonymous], [LastActivityDate], [LastUpdatedDate]) VALUES (12, CONVERT(TEXT, N'demo'), CONVERT(TEXT, N'.NET Pet Shop 4.0'), 0, CAST(0x00009C31007C8833 AS DateTime), CAST(0x00009C31007C8833 AS DateTime))
INSERT [dbo].[Profiles] ([UniqueID], [Username], [ApplicationName], [IsAnonymous], [LastActivityDate], [LastUpdatedDate]) VALUES (10, CONVERT(TEXT, N'DianeTibbott'), CONVERT(TEXT, N'.NET Pet Shop 4.0'), 0, CAST(0x00009C31007C8833 AS DateTime), CAST(0x00009C31007C8833 AS DateTime))
INSERT [dbo].[Profiles] ([UniqueID], [Username], [ApplicationName], [IsAnonymous], [LastActivityDate], [LastUpdatedDate]) VALUES (11, CONVERT(TEXT, N'GarrettYoung'), CONVERT(TEXT, N'.NET Pet Shop 4.0'), 0, CAST(0x00009C31007C8833 AS DateTime), CAST(0x00009C31007C8833 AS DateTime))
INSERT [dbo].[Profiles] ([UniqueID], [Username], [ApplicationName], [IsAnonymous], [LastActivityDate], [LastUpdatedDate]) VALUES (5, CONVERT(TEXT, N'GaryWYukish'), CONVERT(TEXT, N'.NET Pet Shop 4.0'), 0, CAST(0x00009C31007C8832 AS DateTime), CAST(0x00009C31007C8832 AS DateTime))
INSERT [dbo].[Profiles] ([UniqueID], [Username], [ApplicationName], [IsAnonymous], [LastActivityDate], [LastUpdatedDate]) VALUES (7, CONVERT(TEXT, N'KarinZimprich'), CONVERT(TEXT, N'.NET Pet Shop 4.0'), 0, CAST(0x00009C31007C8832 AS DateTime), CAST(0x00009C31007C8832 AS DateTime))
INSERT [dbo].[Profiles] ([UniqueID], [Username], [ApplicationName], [IsAnonymous], [LastActivityDate], [LastUpdatedDate]) VALUES (9, CONVERT(TEXT, N'KevinKennedy'), CONVERT(TEXT, N'.NET Pet Shop 4.0'), 0, CAST(0x00009C31007C8833 AS DateTime), CAST(0x00009C31007C8833 AS DateTime))
INSERT [dbo].[Profiles] ([UniqueID], [Username], [ApplicationName], [IsAnonymous], [LastActivityDate], [LastUpdatedDate]) VALUES (2, CONVERT(TEXT, N'KimAbercrombie'), CONVERT(TEXT, N'.NET Pet Shop 4.0'), 0, CAST(0x00009C31007C8832 AS DateTime), CAST(0x00009C31007C8832 AS DateTime))
INSERT [dbo].[Profiles] ([UniqueID], [Username], [ApplicationName], [IsAnonymous], [LastActivityDate], [LastUpdatedDate]) VALUES (8, CONVERT(TEXT, N'RandallBoseman'), CONVERT(TEXT, N'.NET Pet Shop 4.0'), 0, CAST(0x00009C31007C8832 AS DateTime), CAST(0x00009C31007C8832 AS DateTime))
INSERT [dbo].[Profiles] ([UniqueID], [Username], [ApplicationName], [IsAnonymous], [LastActivityDate], [LastUpdatedDate]) VALUES (6, CONVERT(TEXT, N'RobCaron'), CONVERT(TEXT, N'.NET Pet Shop 4.0'), 0, CAST(0x00009C31007C8832 AS DateTime), CAST(0x00009C31007C8832 AS DateTime))
INSERT [dbo].[Profiles] ([UniqueID], [Username], [ApplicationName], [IsAnonymous], [LastActivityDate], [LastUpdatedDate]) VALUES (3, CONVERT(TEXT, N'RobYoung'), CONVERT(TEXT, N'.NET Pet Shop 4.0'), 0, CAST(0x00009C31007C8832 AS DateTime), CAST(0x00009C31007C8832 AS DateTime))
INSERT [dbo].[Profiles] ([UniqueID], [Username], [ApplicationName], [IsAnonymous], [LastActivityDate], [LastUpdatedDate]) VALUES (4, CONVERT(TEXT, N'TomYoutsey'), CONVERT(TEXT, N'.NET Pet Shop 4.0'), 0, CAST(0x00009C31007C8832 AS DateTime), CAST(0x00009C31007C8832 AS DateTime))
SET IDENTITY_INSERT [dbo].[Profiles] OFF
/****** Object:  Table [dbo].[Inventory]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inventory](
	[ItemId] [varchar](10) NOT NULL,
	[Qty] [int] NOT NULL,
 CONSTRAINT [PK__Inventor__727E838B03317E3D] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-1'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-10'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-11'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-12'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-13'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-14'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-15'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-16'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-17'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-18'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-19'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-2'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-20'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-21'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-22'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-23'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-24'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-25'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-26'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-27'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-28'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-29'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-3'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-30'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-31'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-32'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-33'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-34'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-35'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-36'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-37'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-38'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-39'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-4'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-40'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-41'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-42'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-43'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-44'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-45'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-46'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-47'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-48'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-49'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-5'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-50'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-51'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-52'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-53'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-54'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-55'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-56'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-57'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-58'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-59'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-6'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-60'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-61'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-62'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-63'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-64'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-65'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-66'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-67'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-68'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-69'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-7'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-70'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-71'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-72'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-73'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-74'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-75'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-76'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-77'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-78'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-79'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-8'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-80'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-81'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-82'), 10000)
INSERT [dbo].[Inventory] ([ItemId], [Qty]) VALUES (CONVERT(TEXT, N'EST-9'), 10000)
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
 CONSTRAINT [PK__aspnet_W__7944C810797309D9] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](20) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[ShipAddr1] [varchar](80) NOT NULL,
	[ShipAddr2] [varchar](80) NULL,
	[ShipCity] [varchar](80) NOT NULL,
	[ShipState] [varchar](80) NOT NULL,
	[ShipZip] [varchar](20) NOT NULL,
	[ShipCountry] [varchar](20) NOT NULL,
	[BillAddr1] [varchar](80) NOT NULL,
	[BillAddr2] [varchar](80) NULL,
	[BillCity] [varchar](80) NOT NULL,
	[BillState] [varchar](80) NOT NULL,
	[BillZip] [varchar](20) NOT NULL,
	[BillCountry] [varchar](20) NOT NULL,
	[Courier] [varchar](80) NOT NULL,
	[TotalPrice] [decimal](10, 2) NOT NULL,
	[BillToFirstName] [varchar](80) NOT NULL,
	[BillToLastName] [varchar](80) NOT NULL,
	[ShipToFirstName] [varchar](80) NOT NULL,
	[ShipToLastName] [varchar](80) NOT NULL,
	[AuthorizationNumber] [int] NOT NULL,
	[Locale] [varchar](20) NOT NULL,
 CONSTRAINT [PK__Orders__C3905BCF7F60ED59] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
 CONSTRAINT [PK__aspnet_S__5A1E6BC11367E606] PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Object:  Table [dbo].[AspNet_SqlCacheTablesForChangeNotification]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNet_SqlCacheTablesForChangeNotification](
	[tableName] [nvarchar](450) NOT NULL,
	[notificationCreated] [datetime] NOT NULL,
	[changeId] [int] NOT NULL,
 CONSTRAINT [PK__AspNet_S__93F7AC6915502E78] PRIMARY KEY CLUSTERED 
(
	[tableName] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNet_SqlCacheTablesForChangeNotification] ([tableName], [notificationCreated], [changeId]) VALUES (N'Category', CAST(0x00009C31007C87EE AS DateTime), 5)
INSERT [dbo].[AspNet_SqlCacheTablesForChangeNotification] ([tableName], [notificationCreated], [changeId]) VALUES (N'Item', CAST(0x00009C31007C87F2 AS DateTime), 82)
INSERT [dbo].[AspNet_SqlCacheTablesForChangeNotification] ([tableName], [notificationCreated], [changeId]) VALUES (N'Product', CAST(0x00009C31007C87F2 AS DateTime), 31)
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK__aspnet_A__C93A4C98014935CB] PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
) ON [PRIMARY],
 CONSTRAINT [UQ__aspnet_A__17477DE40425A276] UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
) ON [PRIMARY],
 CONSTRAINT [UQ__aspnet_A__3091033107020F21] UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'.NET Pet Shop 4.0', N'.net pet shop 4.0', N'92deb77c-cb7d-4729-a84f-27c92af62e56', NULL)
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK__aspnet_P__CD67DC5859063A47] PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK__aspnet_R__8AFACE1B4222D4EF] PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_U__1788CC4D0BC6C43E] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'b6a8e63f-0500-4c5c-8fb4-c078540c8569', N'AdamBarr', N'adambarr', NULL, 0, CAST(0x00009C3100CEF0F4 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'92af5129-0b3f-4585-b074-14e6957e4cc5', N'demo', N'demo', NULL, 0, CAST(0x00009C3100CEF0F4 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'9b6e13ff-8c10-415e-9177-9e424aff59b2', N'DianeTibbott', N'dianetibbott', NULL, 0, CAST(0x00009C3100CEF0F4 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'819133ae-33d4-4f4a-ba9e-dd25e5a3502a', N'GarrettYoung', N'garrettyoung', NULL, 0, CAST(0x00009C3100CEF0F4 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'7e52061e-fbf7-45c7-8a1b-07a33b08140a', N'GaryWYukish', N'garywyukish', NULL, 0, CAST(0x00009C3100CEF0F4 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'248f1960-8c94-4559-b863-7ce056e2c9f8', N'KarinZimprich', N'karinzimprich', NULL, 0, CAST(0x00009C3100CEF0F4 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'44ecc279-507f-4c47-ad47-d5935b5aa4db', N'KevinKennedy', N'kevinkennedy', NULL, 0, CAST(0x00009C3100CEF0F4 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'e6b5a79b-c4c1-45ea-8b51-c2e37252663e', N'KimAbercrombie', N'kimabercrombie', NULL, 0, CAST(0x00009C3100CEF0F4 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'5cbd4d3d-ba95-4dd4-889a-6b43620e6636', N'RandallBoseman', N'randallboseman', NULL, 0, CAST(0x00009C3100CEF0F4 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'6604d9f6-e37c-4465-abd3-0aec86bf7a94', N'RobCaron', N'robcaron', NULL, 0, CAST(0x00009C3100CEF0F4 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'895cc9a2-d67e-4f5e-96cc-f381f774e072', N'RobYoung', N'robyoung', NULL, 0, CAST(0x00009C3100CEF0F4 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'21060709-f395-4b40-a95c-39c79d66460c', N'TomYoutsey', N'tomyoutsey', NULL, 0, CAST(0x00009C3100CEF0F4 AS DateTime))
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[AspNet_SqlCacheUpdateChangeIdStoredProcedure]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AspNet_SqlCacheUpdateChangeIdStoredProcedure] 
             @tableName NVARCHAR(450) 
         AS

         BEGIN 
             UPDATE dbo.AspNet_SqlCacheTablesForChangeNotification WITH (ROWLOCK) SET changeId = changeId + 1 
             WHERE tableName = @tableName
         END
GO
/****** Object:  StoredProcedure [dbo].[AspNet_SqlCacheUnRegisterTableStoredProcedure]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AspNet_SqlCacheUnRegisterTableStoredProcedure] 
             @tableName NVARCHAR(450) 
         AS
         BEGIN

         BEGIN TRAN
         DECLARE @triggerName AS NVARCHAR(3000) 
         DECLARE @fullTriggerName AS NVARCHAR(3000)
         SET @triggerName = REPLACE(@tableName, '[', '__o__') 
         SET @triggerName = REPLACE(@triggerName, ']', '__c__') 
         SET @triggerName = @triggerName + '_AspNet_SqlCacheNotification_Trigger' 
         SET @fullTriggerName = 'dbo.[' + @triggerName + ']' 

         /* Remove the table-row from the notification table */ 
         IF EXISTS (SELECT name FROM sysobjects WITH (NOLOCK) WHERE name = 'AspNet_SqlCacheTablesForChangeNotification' AND type = 'U') 
             IF EXISTS (SELECT name FROM sysobjects WITH (TABLOCKX) WHERE name = 'AspNet_SqlCacheTablesForChangeNotification' AND type = 'U') 
             DELETE FROM dbo.AspNet_SqlCacheTablesForChangeNotification WHERE tableName = @tableName 

         /* Remove the trigger */ 
         IF EXISTS (SELECT name FROM sysobjects WITH (NOLOCK) WHERE name = @triggerName AND type = 'TR') 
             IF EXISTS (SELECT name FROM sysobjects WITH (TABLOCKX) WHERE name = @triggerName AND type = 'TR') 
             EXEC('DROP TRIGGER ' + @fullTriggerName) 

         COMMIT TRAN
         END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[AspNet_SqlCacheRegisterTableStoredProcedure]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AspNet_SqlCacheRegisterTableStoredProcedure] 
             @tableName NVARCHAR(450) 
         AS
         BEGIN

         DECLARE @triggerName AS NVARCHAR(3000) 
         DECLARE @fullTriggerName AS NVARCHAR(3000)
         DECLARE @canonTableName NVARCHAR(3000) 
         DECLARE @quotedTableName NVARCHAR(3000) 

         /* Create the trigger name */ 
         SET @triggerName = REPLACE(@tableName, '[', '__o__') 
         SET @triggerName = REPLACE(@triggerName, ']', '__c__') 
         SET @triggerName = @triggerName + '_AspNet_SqlCacheNotification_Trigger' 
         SET @fullTriggerName = 'dbo.[' + @triggerName + ']' 

         /* Create the cannonicalized table name for trigger creation */ 
         /* Do not touch it if the name contains other delimiters */ 
         IF (CHARINDEX('.', @tableName) <> 0 OR 
             CHARINDEX('[', @tableName) <> 0 OR 
             CHARINDEX(']', @tableName) <> 0) 
             SET @canonTableName = @tableName 
         ELSE 
             SET @canonTableName = '[' + @tableName + ']' 

         /* First make sure the table exists */ 
         IF (SELECT OBJECT_ID(@tableName, 'U')) IS NULL 
         BEGIN 
             RAISERROR ('00000001', 16, 1) 
             RETURN 
         END 

         BEGIN TRAN
         /* Insert the value into the notification table */ 
         IF NOT EXISTS (SELECT tableName FROM dbo.AspNet_SqlCacheTablesForChangeNotification WITH (NOLOCK) WHERE tableName = @tableName) 
             IF NOT EXISTS (SELECT tableName FROM dbo.AspNet_SqlCacheTablesForChangeNotification WITH (TABLOCKX) WHERE tableName = @tableName) 
                 INSERT  dbo.AspNet_SqlCacheTablesForChangeNotification 
                 VALUES (@tableName, GETDATE(), 0)

         /* Create the trigger */ 
         SET @quotedTableName = QUOTENAME(@tableName, '''') 
         IF NOT EXISTS (SELECT name FROM sysobjects WITH (NOLOCK) WHERE name = @triggerName AND type = 'TR') 
             IF NOT EXISTS (SELECT name FROM sysobjects WITH (TABLOCKX) WHERE name = @triggerName AND type = 'TR') 
                 EXEC('CREATE TRIGGER ' + @fullTriggerName + ' ON ' + @canonTableName +'
                       FOR INSERT, UPDATE, DELETE AS BEGIN
                       SET NOCOUNT ON
                       EXEC dbo.AspNet_SqlCacheUpdateChangeIdStoredProcedure N' + @quotedTableName + '
                       END
                       ')
         COMMIT TRAN
         END
GO
/****** Object:  StoredProcedure [dbo].[AspNet_SqlCacheQueryRegisteredTablesStoredProcedure]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AspNet_SqlCacheQueryRegisteredTablesStoredProcedure] 
         AS
         SELECT tableName FROM dbo.AspNet_SqlCacheTablesForChangeNotification
GO
/****** Object:  StoredProcedure [dbo].[AspNet_SqlCachePollingStoredProcedure]    Script Date: 01/18/2012 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AspNet_SqlCachePollingStoredProcedure] AS
         SELECT tableName, changeId FROM dbo.AspNet_SqlCacheTablesForChangeNotification
         RETURN 0
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
GO
/****** Object:  Table [dbo].[LineItem]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LineItem](
	[OrderId] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[ItemId] [varchar](10) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PkLineItem] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[LineNum] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[UniqueID] [int] NOT NULL,
	[ItemId] [varchar](10) NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[Type] [varchar](80) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[CategoryId] [varchar](10) NOT NULL,
	[ProductId] [varchar](10) NOT NULL,
	[IsShoppingCart] [bit] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY NONCLUSTERED 
(
	[CartId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [FK_Cart_UniqueID] ON [dbo].[Cart] 
(
	[UniqueID] ASC
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SHOPPINGCART] ON [dbo].[Cart] 
(
	[IsShoppingCart] ASC
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  Table [dbo].[Account]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[UniqueID] [int] NOT NULL,
	[Email] [varchar](80) NOT NULL,
	[FirstName] [varchar](80) NOT NULL,
	[LastName] [varchar](80) NOT NULL,
	[Address1] [varchar](80) NOT NULL,
	[Address2] [varchar](80) NULL,
	[City] [varchar](80) NOT NULL,
	[State] [varchar](80) NOT NULL,
	[Zip] [varchar](20) NOT NULL,
	[Country] [varchar](20) NOT NULL,
	[Phone] [varchar](20) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY NONCLUSTERED 
(
	[AccountId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [FK_Account_UniqueID] ON [dbo].[Account] 
(
	[UniqueID] ASC
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[OrderId] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[Status] [varchar](2) NOT NULL,
 CONSTRAINT [PkOrderStatus] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[LineNum] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  Table [dbo].[Category]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [varchar](10) NOT NULL,
	[Name] [varchar](80) NULL,
	[Descn] [varchar](255) NULL,
 CONSTRAINT [PK__Category__19093A0B7F60ED59] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Descn]) VALUES (CONVERT(TEXT, N'BIRDS'), CONVERT(TEXT, N'Birds'), CONVERT(TEXT, N'Birds'))
INSERT [dbo].[Category] ([CategoryId], [Name], [Descn]) VALUES (CONVERT(TEXT, N'BUGS'), CONVERT(TEXT, N'Bugs'), CONVERT(TEXT, N'Bugs'))
INSERT [dbo].[Category] ([CategoryId], [Name], [Descn]) VALUES (CONVERT(TEXT, N'BYARD'), CONVERT(TEXT, N'Backyard'), CONVERT(TEXT, N'Backyard'))
INSERT [dbo].[Category] ([CategoryId], [Name], [Descn]) VALUES (CONVERT(TEXT, N'EDANGER'), CONVERT(TEXT, N'Endangered'), CONVERT(TEXT, N'Endangered'))
INSERT [dbo].[Category] ([CategoryId], [Name], [Descn]) VALUES (CONVERT(TEXT, N'FISH'), CONVERT(TEXT, N'Fish'), CONVERT(TEXT, N'Fish'))
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK__aspnet_U__AF2760AD47DBAE45] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_P__3214EC06656C112C] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_P__1788CC4C36B12243] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
 CONSTRAINT [PK__aspnet_M__1788CC4D1FCDBCEB] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'7e52061e-fbf7-45c7-8a1b-07a33b08140a', N'yO7tCgU+hqvINrqCk4P4mCasYro=', 1, N'EEjEruAyPW/kW/090/3M+g==', NULL, N'someone@microsoft.com', N'someone@microsoft.com', NULL, NULL, 1, 0, CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'6604d9f6-e37c-4465-abd3-0aec86bf7a94', N'rbQPH+ophzOUTs8R9Qv1gGXYPhE=', 1, N'kjWckXIbskeEvsaYF2AU7g==', NULL, N'someone@microsoft.com', N'someone@microsoft.com', NULL, NULL, 1, 0, CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'92af5129-0b3f-4585-b074-14e6957e4cc5', N'wsHaiE07KHZb6pP2KwkLJVtEBLs=', 1, N'Jq6R4I/nil8my/qrwfBNUg==', NULL, N'someone@microsoft.com', N'someone@microsoft.com', NULL, NULL, 1, 0, CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'21060709-f395-4b40-a95c-39c79d66460c', N'CECzgXpJjOQsJbjQWu0ocqO2VxQ=', 1, N'xfpFzJIlotPVS77cFQ2YVg==', NULL, N'someone@microsoft.com', N'someone@microsoft.com', NULL, NULL, 1, 0, CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'5cbd4d3d-ba95-4dd4-889a-6b43620e6636', N'9dSCZGDUbtfVNf9Q6GTwDbGL57o=', 1, N'iORzlsmLJu+2dXMAvIo9iA==', NULL, N'someone@microsoft.com', N'someone@microsoft.com', NULL, NULL, 1, 0, CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'248f1960-8c94-4559-b863-7ce056e2c9f8', N'ush/Th3vGJaW1p/7EvxufM46zEo=', 1, N'6jcPtsYzlSqkBajfuegRYg==', NULL, N'someone@microsoft.com', N'someone@microsoft.com', NULL, NULL, 1, 0, CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'9b6e13ff-8c10-415e-9177-9e424aff59b2', N'S22k/D+I/RCjBflg2vjX8oCXhb4=', 1, N'kzM8DubELfD43oUPVmluqg==', NULL, N'someone@microsoft.com', N'someone@microsoft.com', NULL, NULL, 1, 0, CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'b6a8e63f-0500-4c5c-8fb4-c078540c8569', N'HnBA+pHBWXPSoX4KTK1A8AxJl80=', 1, N'pT3LQ+esOr/SEH3WZf9KEw==', NULL, N'someone@microsoft.com', N'someone@microsoft.com', NULL, NULL, 1, 0, CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'e6b5a79b-c4c1-45ea-8b51-c2e37252663e', N'kRYjP0iOvdlUOR6bOKO6TAqwY4c=', 1, N'v0Xbr4QeWPPHjGaLM41ejQ==', NULL, N'someone@microsoft.com', N'someone@microsoft.com', NULL, NULL, 1, 0, CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'44ecc279-507f-4c47-ad47-d5935b5aa4db', N'+4X6OgzRz2dNeY/pS+dF8KklQ5U=', 1, N'NT5+4NExGPWsWSBIZc0A9A==', NULL, N'someone@microsoft.com', N'someone@microsoft.com', NULL, NULL, 1, 0, CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'819133ae-33d4-4f4a-ba9e-dd25e5a3502a', N'XsDJFb+mJ5MVODH+o0NdLCkmvpo=', 1, N'X6N6mQNawfNaf0tV7MnOaw==', NULL, N'someone@microsoft.com', N'someone@microsoft.com', NULL, NULL, 1, 0, CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'92deb77c-cb7d-4729-a84f-27c92af62e56', N'895cc9a2-d67e-4f5e-96cc-f381f774e072', N'ZSeFGJyrqIV/p82xIiMMK5yOtqM=', 1, N'/IGqK8aVSUt4jGOY73dSFQ==', NULL, N'someone@microsoft.com', N'someone@microsoft.com', NULL, NULL, 1, 0, CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0x00009C3100CEF0F4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_P__CD67DC5960A75C0F] PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [varchar](10) NOT NULL,
	[CategoryId] [varchar](10) NOT NULL,
	[Name] [varchar](80) NULL,
	[Descn] [varchar](255) NULL,
	[Image] [varchar](80) NULL,
 CONSTRAINT [PK__Product__B40CC6CD0AD2A005] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IxProduct1] ON [dbo].[Product] 
(
	[Name] ASC
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IxProduct2] ON [dbo].[Product] 
(
	[CategoryId] ASC
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IxProduct3] ON [dbo].[Product] 
(
	[CategoryId] ASC,
	[Name] ASC
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IxProduct4] ON [dbo].[Product] 
(
	[CategoryId] ASC,
	[ProductId] ASC,
	[Name] ASC
) ON [PRIMARY]
GO
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BD-01'), CONVERT(TEXT, N'BIRDS'), CONVERT(TEXT, N'Pelican'), CONVERT(TEXT, N'Will sit in your garden and admire nature'), CONVERT(TEXT, N'~/Prod_Images/Birds/icon-pelican.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BD-02'), CONVERT(TEXT, N'BIRDS'), CONVERT(TEXT, N'Penguin'), CONVERT(TEXT, N'Guaranteed to stay by your side'), CONVERT(TEXT, N'~/Prod_Images/Birds/icon-penguin.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BD-03'), CONVERT(TEXT, N'BIRDS'), CONVERT(TEXT, N'Pteranodon'), CONVERT(TEXT, N'Can''t let go of the past? This is your bird'), CONVERT(TEXT, N'~/Prod_Images/Birds/icon-pteranodon.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BD-04'), CONVERT(TEXT, N'BIRDS'), CONVERT(TEXT, N'Owl'), CONVERT(TEXT, N'Your personal dictionary ? night & day'), CONVERT(TEXT, N'~/Prod_Images/Birds/icon-owl.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BD-05'), CONVERT(TEXT, N'BIRDS'), CONVERT(TEXT, N'Duck'), CONVERT(TEXT, N'Lisps but otherwise sings well'), CONVERT(TEXT, N'~/Prod_Images/Birds/icon-duck.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BG-01'), CONVERT(TEXT, N'BUGS'), CONVERT(TEXT, N'Ant'), CONVERT(TEXT, N'Trash your vacuum cleaner'), CONVERT(TEXT, N'~/Prod_Images/Bugs/icon-ant.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BG-02'), CONVERT(TEXT, N'BUGS'), CONVERT(TEXT, N'Butterfly'), CONVERT(TEXT, N'Increased beauty with age'), CONVERT(TEXT, N'~/Prod_Images/Bugs/icon-butterfly.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BG-03'), CONVERT(TEXT, N'BUGS'), CONVERT(TEXT, N'Spider'), CONVERT(TEXT, N'Loves a good massage'), CONVERT(TEXT, N'~/Prod_Images/Bugs/icon-spider.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BG-04'), CONVERT(TEXT, N'BUGS'), CONVERT(TEXT, N'Slug'), CONVERT(TEXT, N'Your soft hugging buddy'), CONVERT(TEXT, N'~/Prod_Images/Bugs/icon-slug.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BG-05'), CONVERT(TEXT, N'BUGS'), CONVERT(TEXT, N'Frog'), CONVERT(TEXT, N'Want to get rid of an insect previously bought?'), CONVERT(TEXT, N'~/Prod_Images/Bugs/icon-frog.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BG-06'), CONVERT(TEXT, N'BUGS'), CONVERT(TEXT, N'Dragonfly'), CONVERT(TEXT, N'Beware of the meat lover'), CONVERT(TEXT, N'~/Prod_Images/Bugs/icon-dragonfly.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BY-01'), CONVERT(TEXT, N'BYARD'), CONVERT(TEXT, N'Sheep'), CONVERT(TEXT, N'Your soft hugging buddy'), CONVERT(TEXT, N'~/Prod_Images/Backyard/icon-sheep.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BY-02'), CONVERT(TEXT, N'BYARD'), CONVERT(TEXT, N'Cat'), CONVERT(TEXT, N'The friend you will never see'), CONVERT(TEXT, N'~/Prod_Images/Backyard/icon-cat.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BY-03'), CONVERT(TEXT, N'BYARD'), CONVERT(TEXT, N'Raccoon'), CONVERT(TEXT, N'Always keeps your dishes clean'), CONVERT(TEXT, N'~/Prod_Images/Backyard/icon-raccoon.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BY-04'), CONVERT(TEXT, N'BYARD'), CONVERT(TEXT, N'Goose'), CONVERT(TEXT, N'For your protection delivered in our special safety-bag'), CONVERT(TEXT, N'~/Prod_Images/Backyard/icon-goose.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BY-05'), CONVERT(TEXT, N'BYARD'), CONVERT(TEXT, N'Crab'), CONVERT(TEXT, N'The common house crab which lives in the refrigerator'), CONVERT(TEXT, N'~/Prod_Images/Backyard/icon-crab.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BY-06'), CONVERT(TEXT, N'BYARD'), CONVERT(TEXT, N'Skunk'), CONVERT(TEXT, N'You will love it - especially when you have your in-laws visiting'), CONVERT(TEXT, N'~/Prod_Images/Backyard/icon-skunk.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'BY-07'), CONVERT(TEXT, N'BYARD'), CONVERT(TEXT, N'Zebra'), CONVERT(TEXT, N'The horse of the modern girl'), CONVERT(TEXT, N'~/Prod_Images/Backyard/icon-zebra.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'DR-01'), CONVERT(TEXT, N'EDANGER'), CONVERT(TEXT, N'Skeleton'), CONVERT(TEXT, N'Dumb but hollow'), CONVERT(TEXT, N'~/Prod_Images/Endangered/icon-skeleton.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'DR-02'), CONVERT(TEXT, N'EDANGER'), CONVERT(TEXT, N'Pet'), CONVERT(TEXT, N'The originals ? honestly!'), CONVERT(TEXT, N'~/Prod_Images/Endangered/icon-pet.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'DR-03'), CONVERT(TEXT, N'EDANGER'), CONVERT(TEXT, N'Dino'), CONVERT(TEXT, N'Special offer: only for a limited time'), CONVERT(TEXT, N'~/Prod_Images/Endangered/icon-dino.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'DR-04'), CONVERT(TEXT, N'EDANGER'), CONVERT(TEXT, N'Panda'), CONVERT(TEXT, N'Last one ? go for it!'), CONVERT(TEXT, N'~/Prod_Images/Endangered/icon-panda.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'DR-05'), CONVERT(TEXT, N'EDANGER'), CONVERT(TEXT, N'Fish'), CONVERT(TEXT, N'They are waiting for your help'), CONVERT(TEXT, N'~/Prod_Images/Endangered/icon-fish.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'FI-01'), CONVERT(TEXT, N'FISH'), CONVERT(TEXT, N'Meno'), CONVERT(TEXT, N'Your worried tiny friend warns you about life''s dangers'), CONVERT(TEXT, N'~/Prod_Images/Fish/icon-meno.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'FI-02'), CONVERT(TEXT, N'FISH'), CONVERT(TEXT, N'Balloonfish'), CONVERT(TEXT, N'It''s your thermometer - the hotter it gets the bigger it gets'), CONVERT(TEXT, N'~/Prod_Images/Fish/icon-ballonfish.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'FI-03'), CONVERT(TEXT, N'FISH'), CONVERT(TEXT, N'Blindfish'), CONVERT(TEXT, N'Likes pressure - ideal for divorcing couples'), CONVERT(TEXT, N'~/Prod_Images/Fish/icon-blindfish.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'FI-04'), CONVERT(TEXT, N'FISH'), CONVERT(TEXT, N'Crabfish'), CONVERT(TEXT, N'Dances and sings every time you feed it!'), CONVERT(TEXT, N'~/Prod_Images/Fish/icon-Crabfish.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'FI-05'), CONVERT(TEXT, N'FISH'), CONVERT(TEXT, N'Eucalyptus'), CONVERT(TEXT, N'For the tickle on your hands: you''ll love the massage'), CONVERT(TEXT, N'~/Prod_Images/Fish/icon-eucalyptus.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'FI-06'), CONVERT(TEXT, N'FISH'), CONVERT(TEXT, N'Mister No'), CONVERT(TEXT, N'Need a companion for the dark times?'), CONVERT(TEXT, N'~/Prod_Images/Fish/icon-misterno.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'FI-07'), CONVERT(TEXT, N'FISH'), CONVERT(TEXT, N'Nosyfish'), CONVERT(TEXT, N'Don''t underestimate this one - it bites!'), CONVERT(TEXT, N'~/Prod_Images/Fish/icon-nosyfish.gif'))
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Descn], [Image]) VALUES (CONVERT(TEXT, N'FI-08'), CONVERT(TEXT, N'FISH'), CONVERT(TEXT, N'Tooth Ferry'), CONVERT(TEXT, N'Very sensitive vegetarian, needs food every two months'), CONVERT(TEXT, N'~/Prod_Images/Fish/icon-toothferry.gif'))
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  Table [dbo].[Item]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item](
	[ItemId] [varchar](10) NOT NULL,
	[ProductId] [varchar](10) NOT NULL,
	[ListPrice] [decimal](10, 2) NULL,
	[UnitCost] [decimal](10, 2) NULL,
	[Supplier] [int] NULL,
	[Status] [varchar](2) NULL,
	[Name] [varchar](80) NULL,
	[Image] [varchar](80) NULL,
 CONSTRAINT [PK__Item__727E838B0F975522] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IxItem] ON [dbo].[Item] 
(
	[ProductId] ASC,
	[ItemId] ASC,
	[ListPrice] ASC,
	[Name] ASC
) ON [PRIMARY]
GO
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-1'), CONVERT(TEXT, N'FI-01'), CAST(16.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Happy'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-meno-happy.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-10'), CONVERT(TEXT, N'FI-04'), CAST(18.50 AS Decimal(10, 2)), CAST(12.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Tap Dance'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-Crabfish-tabdance.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-11'), CONVERT(TEXT, N'FI-04'), CAST(19.50 AS Decimal(10, 2)), CAST(12.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Ballet'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-Crabfish-ballet.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-12'), CONVERT(TEXT, N'FI-04'), CAST(18.90 AS Decimal(10, 2)), CAST(12.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Ballroom'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-Crabfish-ballroom.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-13'), CONVERT(TEXT, N'FI-05'), CAST(16.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Long Arms'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-eucalyptus-longarms.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-14'), CONVERT(TEXT, N'FI-05'), CAST(16.90 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Short Arms'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-eucalyptus-shortarms.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-15'), CONVERT(TEXT, N'FI-06'), CAST(13.90 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Black'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-misterno-black.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-16'), CONVERT(TEXT, N'FI-06'), CAST(14.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Sepia'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-misterno-sepia.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-17'), CONVERT(TEXT, N'FI-06'), CAST(15.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Sable'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-misterno-sable.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-18'), CONVERT(TEXT, N'FI-07'), CAST(16.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Invidious'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-nosyfish-invidious.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-19'), CONVERT(TEXT, N'FI-07'), CAST(17.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Beastly'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-nosyfish-beastly.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-2'), CONVERT(TEXT, N'FI-01'), CAST(17.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Camouflage'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-meno-camouflage.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-20'), CONVERT(TEXT, N'FI-07'), CAST(18.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Mean'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-nosyfish-mean.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-21'), CONVERT(TEXT, N'FI-07'), CAST(19.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Sneaky'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-nosyfish-sneaky.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-22'), CONVERT(TEXT, N'FI-08'), CAST(28.50 AS Decimal(10, 2)), CAST(20.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Toothless'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-toothferry-toothless.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-23'), CONVERT(TEXT, N'FI-08'), CAST(29.50 AS Decimal(10, 2)), CAST(20.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'With Teeth'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-toothferry-withteeth.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-24'), CONVERT(TEXT, N'BY-01'), CAST(120.95 AS Decimal(10, 2)), CAST(99.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Fuzzy'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-sheep-fuzzy.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-25'), CONVERT(TEXT, N'BY-01'), CAST(130.95 AS Decimal(10, 2)), CAST(99.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Ironed'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-sheep-ironed.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-26'), CONVERT(TEXT, N'BY-02'), CAST(14.95 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Transparent'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-cat-transparent.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-27'), CONVERT(TEXT, N'BY-02'), CAST(15.95 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Patterned'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-cat-patterned.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-28'), CONVERT(TEXT, N'BY-02'), CAST(18.95 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Uncolored'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-cat-uncolored.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-29'), CONVERT(TEXT, N'BY-03'), CAST(42.95 AS Decimal(10, 2)), CAST(30.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Long Tongue'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-raccoon-long-tongue.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-3'), CONVERT(TEXT, N'FI-01'), CAST(15.90 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Worried'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-meno-worried.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-30'), CONVERT(TEXT, N'BY-03'), CAST(45.95 AS Decimal(10, 2)), CAST(30.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Rough Tongue'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-raccoon-rough-tongue.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-31'), CONVERT(TEXT, N'BY-03'), CAST(48.95 AS Decimal(10, 2)), CAST(30.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Hairy Tongue'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-raccoon-hairy-tongue.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-32'), CONVERT(TEXT, N'BY-04'), CAST(20.95 AS Decimal(10, 2)), CAST(12.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Feathered'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-goose-feathered.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-33'), CONVERT(TEXT, N'BY-04'), CAST(22.95 AS Decimal(10, 2)), CAST(12.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Plucked'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-goose-plucked.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-34'), CONVERT(TEXT, N'BY-05'), CAST(12.95 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Red'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-crab-red.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-35'), CONVERT(TEXT, N'BY-05'), CAST(13.95 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Orange'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-crab-orange.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-36'), CONVERT(TEXT, N'BY-05'), CAST(14.95 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Dotted'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-crab-dotted.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-37'), CONVERT(TEXT, N'BY-06'), CAST(18.95 AS Decimal(10, 2)), CAST(12.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Bad Smell'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-skunk-bad-smell.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-38'), CONVERT(TEXT, N'BY-06'), CAST(20.95 AS Decimal(10, 2)), CAST(12.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Really Bad Smell'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-skunk-really-bad-smell.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-39'), CONVERT(TEXT, N'BY-06'), CAST(22.95 AS Decimal(10, 2)), CAST(12.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Worst Smell'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-skunk-worst-smell.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-4'), CONVERT(TEXT, N'FI-02'), CAST(17.50 AS Decimal(10, 2)), CAST(12.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Extra Stretch'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-balloon-extra-stretch.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-40'), CONVERT(TEXT, N'BY-07'), CAST(859.95 AS Decimal(10, 2)), CAST(500.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Tiny'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-zebra-tiny.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-41'), CONVERT(TEXT, N'BY-07'), CAST(879.95 AS Decimal(10, 2)), CAST(500.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Small'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-zebra-small.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-42'), CONVERT(TEXT, N'BY-07'), CAST(899.95 AS Decimal(10, 2)), CAST(500.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Medium'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-zebra-medium.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-43'), CONVERT(TEXT, N'BY-07'), CAST(949.95 AS Decimal(10, 2)), CAST(500.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Large'), CONVERT(TEXT, N'~/Prod_Images/Backyard/item-zebra-large.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-44'), CONVERT(TEXT, N'BD-01'), CAST(41.95 AS Decimal(10, 2)), CAST(30.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Flower Loving'), CONVERT(TEXT, N'~/Prod_Images/Birds/item-pelican-flowerloving.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-45'), CONVERT(TEXT, N'BD-01'), CAST(45.95 AS Decimal(10, 2)), CAST(30.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Grass Loving'), CONVERT(TEXT, N'~/Prod_Images/Birds/item-pelican-grassloving.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-46'), CONVERT(TEXT, N'BD-02'), CAST(120.99 AS Decimal(10, 2)), CAST(99.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Adventurous'), CONVERT(TEXT, N'~/Prod_Images/Birds/item-penguine-adventurous.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-47'), CONVERT(TEXT, N'BD-02'), CAST(130.99 AS Decimal(10, 2)), CAST(99.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Homey'), CONVERT(TEXT, N'~/Prod_Images/Birds/item-penguine-homey.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-48'), CONVERT(TEXT, N'BD-03'), CAST(130.99 AS Decimal(10, 2)), CAST(99.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Old'), CONVERT(TEXT, N'~/Prod_Images/Birds/item-pteranodon-old.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-49'), CONVERT(TEXT, N'BD-03'), CAST(130.99 AS Decimal(10, 2)), CAST(99.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Ancient'), CONVERT(TEXT, N'~/Prod_Images/Birds/item-pteranodon-ancient.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-5'), CONVERT(TEXT, N'FI-02'), CAST(18.90 AS Decimal(10, 2)), CAST(12.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Natural'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-balloon-natural.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-50'), CONVERT(TEXT, N'BD-04'), CAST(80.99 AS Decimal(10, 2)), CAST(50.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Day'), CONVERT(TEXT, N'~/Prod_Images/Birds/item-owl-day.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-51'), CONVERT(TEXT, N'BD-04'), CAST(85.99 AS Decimal(10, 2)), CAST(50.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Night'), CONVERT(TEXT, N'~/Prod_Images/Birds/item-owl-night.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-52'), CONVERT(TEXT, N'BD-05'), CAST(33.99 AS Decimal(10, 2)), CAST(20.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Domestic'), CONVERT(TEXT, N'~/Prod_Images/Birds/item-duck-domestic.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-53'), CONVERT(TEXT, N'BD-05'), CAST(38.99 AS Decimal(10, 2)), CAST(20.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Wild'), CONVERT(TEXT, N'~/Prod_Images/Birds/item-duck-wild.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-54'), CONVERT(TEXT, N'BG-01'), CAST(0.25 AS Decimal(10, 2)), CAST(0.02 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Worker'), CONVERT(TEXT, N'~/Prod_Images/Bugs/item-ant-worker.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-55'), CONVERT(TEXT, N'BG-01'), CAST(0.30 AS Decimal(10, 2)), CAST(0.02 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Queen'), CONVERT(TEXT, N'~/Prod_Images/Bugs/item-ant-queen.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-56'), CONVERT(TEXT, N'BG-01'), CAST(0.50 AS Decimal(10, 2)), CAST(0.02 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Soldier'), CONVERT(TEXT, N'~/Prod_Images/Bugs/item-ant-soldier.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-57'), CONVERT(TEXT, N'BG-02'), CAST(0.70 AS Decimal(10, 2)), CAST(0.10 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Larva'), CONVERT(TEXT, N'~/Prod_Images/Bugs/item-butterfly-larva.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-58'), CONVERT(TEXT, N'BG-02'), CAST(0.80 AS Decimal(10, 2)), CAST(0.10 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Pupa'), CONVERT(TEXT, N'~/Prod_Images/Bugs/item-butterfly-pupa.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-59'), CONVERT(TEXT, N'BG-02'), CAST(0.90 AS Decimal(10, 2)), CAST(0.10 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Adult'), CONVERT(TEXT, N'~/Prod_Images/Bugs/item-butterfly-adult.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-6'), CONVERT(TEXT, N'FI-02'), CAST(19.50 AS Decimal(10, 2)), CAST(12.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Flammable'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-balloon-flammable.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-60'), CONVERT(TEXT, N'BG-03'), CAST(2.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Arniladisplicata'), CONVERT(TEXT, N'~/Prod_Images/Bugs/item-spider-aranielladisplicata.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-61'), CONVERT(TEXT, N'BG-03'), CAST(2.60 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Dysdera Crocata'), CONVERT(TEXT, N'~/Prod_Images/Bugs/item-spider-dysderacrocata.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-62'), CONVERT(TEXT, N'BG-04'), CAST(0.89 AS Decimal(10, 2)), CAST(0.15 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Naked'), CONVERT(TEXT, N'~/Prod_Images/Bugs/item-slug-naked.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-63'), CONVERT(TEXT, N'BG-04'), CAST(0.99 AS Decimal(10, 2)), CAST(0.15 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Habitat'), CONVERT(TEXT, N'~/Prod_Images/Bugs/item-slug-habitat.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-64'), CONVERT(TEXT, N'BG-05'), CAST(8.99 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'False'), CONVERT(TEXT, N'~/Prod_Images/Bugs/item-frog-false.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-65'), CONVERT(TEXT, N'BG-05'), CAST(9.99 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'True'), CONVERT(TEXT, N'~/Prod_Images/Bugs/item-frog-true.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-66'), CONVERT(TEXT, N'BG-06'), CAST(1.20 AS Decimal(10, 2)), CAST(0.80 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Omnivore'), CONVERT(TEXT, N'~/Prod_Images/Bugs/item-dragonfly-omnivore.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-67'), CONVERT(TEXT, N'BG-06'), CAST(1.30 AS Decimal(10, 2)), CAST(0.80 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Vegetarian'), CONVERT(TEXT, N'~/Prod_Images/Bugs/item-dragonfly-vegetarian.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-68'), CONVERT(TEXT, N'BG-06'), CAST(1.40 AS Decimal(10, 2)), CAST(0.80 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Vegan'), CONVERT(TEXT, N'~/Prod_Images/Bugs/item-dragonfly-vegan.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-69'), CONVERT(TEXT, N'DR-01'), CAST(150.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Male'), CONVERT(TEXT, N'~/Prod_Images/Endangered/item-skeleton-male.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-7'), CONVERT(TEXT, N'FI-03'), CAST(21.50 AS Decimal(10, 2)), CAST(15.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Blind'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-blindfish-blind.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-70'), CONVERT(TEXT, N'DR-01'), CAST(160.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Female'), CONVERT(TEXT, N'~/Prod_Images/Endangered/item-skeleton-female.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-71'), CONVERT(TEXT, N'DR-01'), CAST(170.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Aphrodite'), CONVERT(TEXT, N'~/Prod_Images/Endangered/item-skeleton-aphrodite.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-72'), CONVERT(TEXT, N'DR-01'), CAST(180.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Hermaphrodite'), CONVERT(TEXT, N'~/Prod_Images/Endangered/item-skeleton-hermaphrodite.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-73'), CONVERT(TEXT, N'DR-02'), CAST(45.00 AS Decimal(10, 2)), CAST(22.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Rover'), CONVERT(TEXT, N'~/Prod_Images/Endangered/item-pet-rover.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-74'), CONVERT(TEXT, N'DR-02'), CAST(48.00 AS Decimal(10, 2)), CAST(22.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Trumpet'), CONVERT(TEXT, N'~/Prod_Images/Endangered/item-pet-thumper.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-75'), CONVERT(TEXT, N'DR-02'), CAST(49.00 AS Decimal(10, 2)), CAST(22.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Kitty'), CONVERT(TEXT, N'~/Prod_Images/Endangered/item-pet-kitty.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-76'), CONVERT(TEXT, N'DR-03'), CAST(349.00 AS Decimal(10, 2)), CAST(220.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Spiky'), CONVERT(TEXT, N'~/Prod_Images/Endangered/item-dino-spiky.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-77'), CONVERT(TEXT, N'DR-03'), CAST(379.00 AS Decimal(10, 2)), CAST(220.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Shaved'), CONVERT(TEXT, N'~/Prod_Images/Endangered/item-dino-shaved.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-78'), CONVERT(TEXT, N'DR-03'), CAST(399.00 AS Decimal(10, 2)), CAST(220.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Pointy'), CONVERT(TEXT, N'~/Prod_Images/Endangered/item-dino-pointy.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-79'), CONVERT(TEXT, N'DR-04'), CAST(1999.00 AS Decimal(10, 2)), CAST(1500.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Exclusive'), CONVERT(TEXT, N'~/Prod_Images/Endangered/item-panda-exclusive.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-8'), CONVERT(TEXT, N'FI-03'), CAST(22.50 AS Decimal(10, 2)), CAST(15.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Short Sighted'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-blindfish-shortsighted.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-80'), CONVERT(TEXT, N'DR-05'), CAST(22.95 AS Decimal(10, 2)), CAST(16.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Lost'), CONVERT(TEXT, N'~/Prod_Images/Endangered/item-fish-lost.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-81'), CONVERT(TEXT, N'DR-05'), CAST(22.95 AS Decimal(10, 2)), CAST(16.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Drunk'), CONVERT(TEXT, N'~/Prod_Images/Endangered/item-fish-drunk.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-82'), CONVERT(TEXT, N'DR-05'), CAST(22.95 AS Decimal(10, 2)), CAST(16.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Caught'), CONVERT(TEXT, N'~/Prod_Images/Endangered/item-fish-caught.gif'))
INSERT [dbo].[Item] ([ItemId], [ProductId], [ListPrice], [UnitCost], [Supplier], [Status], [Name], [Image]) VALUES (CONVERT(TEXT, N'EST-9'), CONVERT(TEXT, N'FI-03'), CAST(24.50 AS Decimal(10, 2)), CAST(15.00 AS Decimal(10, 2)), 1, CONVERT(TEXT, N'P'), CONVERT(TEXT, N'Far Sighted'), CONVERT(TEXT, N'~/Prod_Images/Fish/item-blindfish-farsighted.gif'))
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 01/18/2012 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  Default [DF__AspNet_Sq__notif__173876EA]    Script Date: 01/18/2012 11:48:30 ******/
ALTER TABLE [dbo].[AspNet_SqlCacheTablesForChangeNotification] ADD  CONSTRAINT [DF__AspNet_Sq__notif__173876EA]  DEFAULT (getdate()) FOR [notificationCreated]
GO
/****** Object:  Default [DF__AspNet_Sq__chang__182C9B23]    Script Date: 01/18/2012 11:48:30 ******/
ALTER TABLE [dbo].[AspNet_SqlCacheTablesForChangeNotification] ADD  CONSTRAINT [DF__AspNet_Sq__chang__182C9B23]  DEFAULT ((0)) FOR [changeId]
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__08EA5793]    Script Date: 01/18/2012 11:48:30 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD  CONSTRAINT [DF__aspnet_Ap__Appli__08EA5793]  DEFAULT (newid()) FOR [ApplicationId]
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__5BE2A6F2]    Script Date: 01/18/2012 11:48:30 ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD  CONSTRAINT [DF__aspnet_Pa__PathI__5BE2A6F2]  DEFAULT (newid()) FOR [PathId]
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__44FF419A]    Script Date: 01/18/2012 11:48:30 ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD  CONSTRAINT [DF__aspnet_Ro__RoleI__44FF419A]  DEFAULT (newid()) FOR [RoleId]
GO
/****** Object:  Default [DF__aspnet_Us__UserI__0EA330E9]    Script Date: 01/18/2012 11:48:30 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__UserI__0EA330E9]  DEFAULT (newid()) FOR [UserId]
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__0F975522]    Script Date: 01/18/2012 11:48:30 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__Mobil__0F975522]  DEFAULT (NULL) FOR [MobileAlias]
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__108B795B]    Script Date: 01/18/2012 11:48:30 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__IsAno__108B795B]  DEFAULT ((0)) FOR [IsAnonymous]
GO
/****** Object:  Default [DF__aspnet_Perso__Id__6754599E]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  CONSTRAINT [DF__aspnet_Perso__Id__6754599E]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__aspnet_Me__Passw__239E4DCF]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD  CONSTRAINT [DF__aspnet_Me__Passw__239E4DCF]  DEFAULT ((0)) FOR [PasswordFormat]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__5AEE82B9]    Script Date: 01/18/2012 11:48:30 ******/
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pa__Appli__5AEE82B9] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Paths] CHECK CONSTRAINT [FK__aspnet_Pa__Appli__5AEE82B9]
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__440B1D61]    Script Date: 01/18/2012 11:48:30 ******/
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Ro__Appli__440B1D61] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Roles] CHECK CONSTRAINT [FK__aspnet_Ro__Appli__440B1D61]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__0DAF0CB0]    Script Date: 01/18/2012 11:48:30 ******/
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__Appli__0DAF0CB0] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK__aspnet_Us__Appli__0DAF0CB0]
GO
/****** Object:  ForeignKey [FK__LineItem__OrderI__03317E3D]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[LineItem]  WITH CHECK ADD  CONSTRAINT [FK__LineItem__OrderI__03317E3D] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[LineItem] CHECK CONSTRAINT [FK__LineItem__OrderI__03317E3D]
GO
/****** Object:  ForeignKey [FK_Cart_Profiles]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[Cart]  WITH NOCHECK ADD  CONSTRAINT [FK_Cart_Profiles] FOREIGN KEY([UniqueID])
REFERENCES [dbo].[Profiles] ([UniqueID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Profiles]
GO
/****** Object:  ForeignKey [FK_Account_Profiles]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[Account]  WITH NOCHECK ADD  CONSTRAINT [FK_Account_Profiles] FOREIGN KEY([UniqueID])
REFERENCES [dbo].[Profiles] ([UniqueID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Profiles]
GO
/****** Object:  ForeignKey [FK__OrderStat__Order__060DEAE8]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[OrderStatus]  WITH CHECK ADD  CONSTRAINT [FK__OrderStat__Order__060DEAE8] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderStatus] CHECK CONSTRAINT [FK__OrderStat__Order__060DEAE8]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__4AB81AF0]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__RoleI__4AB81AF0] FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__RoleI__4AB81AF0]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__49C3F6B7]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__UserI__49C3F6B7] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__UserI__49C3F6B7]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__68487DD7]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__68487DD7] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__68487DD7]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__693CA210]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__UserI__693CA210] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__UserI__693CA210]
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__38996AB5]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pr__UserI__38996AB5] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile] CHECK CONSTRAINT [FK__aspnet_Pr__UserI__38996AB5]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__21B6055D]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__Appli__21B6055D] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__Appli__21B6055D]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__22AA2996]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__UserI__22AA2996] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__UserI__22AA2996]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__628FA481]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__628FA481] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__628FA481]
GO
/****** Object:  ForeignKey [FK__Product__Categor__0CBAE877]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__Categor__0CBAE877] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Categor__0CBAE877]
GO
/****** Object:  ForeignKey [FK__Item__ProductId__117F9D94]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK__Item__ProductId__117F9D94] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK__Item__ProductId__117F9D94]
GO
/****** Object:  ForeignKey [FK__Item__Supplier__1273C1CD]    Script Date: 01/18/2012 11:48:31 ******/
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK__Item__Supplier__1273C1CD] FOREIGN KEY([Supplier])
REFERENCES [dbo].[Supplier] ([SuppId])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK__Item__Supplier__1273C1CD]
GO
