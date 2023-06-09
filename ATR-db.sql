USE [ATR]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 05.05.2023 19:23:22 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 05.05.2023 19:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 05.05.2023 19:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 05.05.2023 19:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 05.05.2023 19:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 05.05.2023 19:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 05.05.2023 19:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 05.05.2023 19:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carusel]    Script Date: 05.05.2023 19:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carusel](
	[CaruselId] [int] IDENTITY(1,1) NOT NULL,
	[Tirle] [nvarchar](500) NULL,
	[Description] [nvarchar](2500) NOT NULL,
	[PictureUrl] [nvarchar](500) NULL,
	[CreateDate] [datetime] NULL,
	[CreateUser] [nvarchar](500) NULL,
	[ExpireDate] [datetime] NULL,
 CONSTRAINT [PK_Carusel] PRIMARY KEY CLUSTERED 
(
	[CaruselId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 05.05.2023 19:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobPosition]    Script Date: 05.05.2023 19:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobPosition](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_JobPosition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 05.05.2023 19:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NULL,
	[MessageTemplate] [nvarchar](max) NULL,
	[Level] [nvarchar](128) NULL,
	[TimeStamp] [datetimeoffset](7) NOT NULL,
	[Exception] [nvarchar](max) NULL,
	[Properties] [xml] NULL,
	[LogEvent] [nvarchar](max) NULL,
	[UserName] [nvarchar](200) NULL,
	[IP] [varchar](200) NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PageStatistics]    Script Date: 05.05.2023 19:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageStatistics](
	[PageStatisticsId] [int] IDENTITY(1,1) NOT NULL,
	[Path] [nvarchar](500) NULL,
	[PathBase] [nvarchar](500) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_PageStatistics] PRIMARY KEY CLUSTERED 
(
	[PageStatisticsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomProperties]    Script Date: 05.05.2023 19:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomProperties](
	[RoomPropertyId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_RoomProperties] PRIMARY KEY CLUSTERED 
(
	[RoomPropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomRoomProperty]    Script Date: 05.05.2023 19:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomRoomProperty](
	[RoomPropertiesRoomPropertyId] [int] NOT NULL,
	[RoomsRoomId] [int] NOT NULL,
 CONSTRAINT [PK_RoomRoomProperty] PRIMARY KEY CLUSTERED 
(
	[RoomPropertiesRoomPropertyId] ASC,
	[RoomsRoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 05.05.2023 19:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [real] NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](max) NOT NULL,
	[IsAvalible] [bit] NOT NULL,
	[RoomNumber] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[MainPicturePath] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamWork]    Script Date: 05.05.2023 19:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamWork](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](250) NOT NULL,
	[LastName] [nvarchar](250) NOT NULL,
	[MiddleName] [nvarchar](250) NOT NULL,
	[AboutWork] [nvarchar](1024) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](250) NOT NULL,
	[LinkedIn] [nvarchar](250) NOT NULL,
	[Instagram] [nvarchar](250) NOT NULL,
	[FaceBook] [nvarchar](250) NOT NULL,
	[Status] [nvarchar](250) NOT NULL,
	[JobPositionId] [nvarchar](250) NOT NULL,
	[Photo] [nvarchar](1024) NOT NULL,
	[JobPositionNameId] [int] NOT NULL,
 CONSTRAINT [PK_TeamWork] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230313140122_Migration1', N'7.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230317135610_migrations3', N'7.0.3')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [CreatedDate]) VALUES (1, N'Category1', N'KKKKKK', CAST(N'2023-03-13T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [CreatedDate]) VALUES (4, N'Category2', N'HHHHH', CAST(N'2022-01-21T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[JobPosition] ON 

INSERT [dbo].[JobPosition] ([Id], [Name], [CreateDate]) VALUES (1, N'TeamLead', CAST(N'2023-03-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[JobPosition] ([Id], [Name], [CreateDate]) VALUES (2, N'Programmer', CAST(N'2023-03-05T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[JobPosition] OFF
SET IDENTITY_INSERT [dbo].[Log] ON 

INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1, N'User profile is available. Using ''"C:\Users\ШерзайМ\AppData\Local\ASP.NET\DataProtection-Keys"'' as key repository and Windows DPAPI to encrypt keys at rest.', N'User profile is available. Using ''{FullName}'' as key repository and Windows DPAPI to encrypt keys at rest.', N'Information', CAST(N'2023-03-27T21:40:57.7196044+06:00' AS DateTimeOffset), NULL, N'<properties><property key="FullName">C:\Users\ШерзайМ\AppData\Local\ASP.NET\DataProtection-Keys</property><property key="EventId"><structure type=""><property key="Id">63</property><property key="Name">UsingProfileAsKeyRepositoryWithDPAPI</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.DataProtection.KeyManagement.XmlKeyManager</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (2, N'Now listening on: "https://localhost:7159"', N'Now listening on: {address}', N'Information', CAST(N'2023-03-27T21:40:57.8932786+06:00' AS DateTimeOffset), NULL, N'<properties><property key="address">https://localhost:7159</property><property key="EventId"><structure type=""><property key="Id">14</property><property key="Name">ListeningOnAddress</property></structure></property><property key="SourceContext">Microsoft.Hosting.Lifetime</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (3, N'Now listening on: "http://localhost:5071"', N'Now listening on: {address}', N'Information', CAST(N'2023-03-27T21:40:57.8935392+06:00' AS DateTimeOffset), NULL, N'<properties><property key="address">http://localhost:5071</property><property key="EventId"><structure type=""><property key="Id">14</property><property key="Name">ListeningOnAddress</property></structure></property><property key="SourceContext">Microsoft.Hosting.Lifetime</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (4, N'Application started. Press Ctrl+C to shut down.', N'Application started. Press Ctrl+C to shut down.', N'Information', CAST(N'2023-03-27T21:40:57.8961115+06:00' AS DateTimeOffset), NULL, N'<properties><property key="SourceContext">Microsoft.Hosting.Lifetime</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (5, N'Hosting environment: "Development"', N'Hosting environment: {envName}', N'Information', CAST(N'2023-03-27T21:40:57.8962673+06:00' AS DateTimeOffset), NULL, N'<properties><property key="envName">Development</property><property key="SourceContext">Microsoft.Hosting.Lifetime</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (6, N'Content root path: "C:\Users\ШерзайМ\Desktop\atr\WebAppMVCLesson1\"', N'Content root path: {contentRoot}', N'Information', CAST(N'2023-03-27T21:40:57.8963237+06:00' AS DateTimeOffset), NULL, N'<properties><property key="contentRoot">C:\Users\ШерзайМ\Desktop\atr\WebAppMVCLesson1\</property><property key="SourceContext">Microsoft.Hosting.Lifetime</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (7, N'Request starting HTTP/2 GET https://localhost:7159/ - -', N'{HostingRequestStartingLog:l}', N'Information', CAST(N'2023-03-27T21:40:58.3586382+06:00' AS DateTimeOffset), NULL, N'<properties><property key="Protocol">HTTP/2</property><property key="Method">GET</property><property key="ContentType" /><property key="ContentLength" /><property key="Scheme">https</property><property key="Host">localhost:7159</property><property key="PathBase" /><property key="Path">/</property><property key="QueryString" /><property key="HostingRequestStartingLog">Request starting HTTP/2 GET https://localhost:7159/ - -</property><property key="EventId"><structure type=""><property key="Id">1</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Hosting.Diagnostics</property><property key="RequestId">0HMPER6KHBST6:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMPER6KHBST6</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (8, N'Executing endpoint ''"WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)"''', N'Executing endpoint ''{EndpointName}''', N'Information', CAST(N'2023-03-27T21:40:58.3896821+06:00' AS DateTimeOffset), NULL, N'<properties><property key="EndpointName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="EventId"><structure type=""><property key="Name">ExecutingEndpoint</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Routing.EndpointMiddleware</property><property key="RequestId">0HMPER6KHBST6:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMPER6KHBST6</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (9, N'Route matched with "{action = \"Index\", controller = \"Home\"}". Executing controller action with signature "Microsoft.AspNetCore.Mvc.IActionResult Index()" on controller "WebAppMVCLesson1.Controllers.HomeController" ("WebAppMVCLesson1").', N'Route matched with {RouteData}. Executing controller action with signature {MethodInfo} on controller {Controller} ({AssemblyName}).', N'Information', CAST(N'2023-03-27T21:40:58.4063375+06:00' AS DateTimeOffset), NULL, N'<properties><property key="RouteData">{action = "Index", controller = "Home"}</property><property key="MethodInfo">Microsoft.AspNetCore.Mvc.IActionResult Index()</property><property key="Controller">WebAppMVCLesson1.Controllers.HomeController</property><property key="AssemblyName">WebAppMVCLesson1</property><property key="EventId"><structure type=""><property key="Id">3</property><property key="Name">ControllerActionExecuting</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker</property><property key="ActionId">5c8a4ebf-c021-47c8-bf9b-36297d7d9789</property><property key="ActionName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="RequestId">0HMPER6KHBST6:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMPER6KHBST6</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (10, N'LogInformation', N'LogInformation', N'Information', CAST(N'2023-03-27T21:40:58.4077694+06:00' AS DateTimeOffset), NULL, N'<properties><property key="SourceContext">WebAppMVCLesson1.Controllers.HomeController</property><property key="ActionId">5c8a4ebf-c021-47c8-bf9b-36297d7d9789</property><property key="ActionName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="RequestId">0HMPER6KHBST6:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMPER6KHBST6</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (11, N'LogError', N'LogError', N'Error', CAST(N'2023-03-27T21:40:58.4078538+06:00' AS DateTimeOffset), NULL, N'<properties><property key="SourceContext">WebAppMVCLesson1.Controllers.HomeController</property><property key="ActionId">5c8a4ebf-c021-47c8-bf9b-36297d7d9789</property><property key="ActionName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="RequestId">0HMPER6KHBST6:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMPER6KHBST6</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (12, N'test Error', N'test Error', N'Error', CAST(N'2023-03-27T21:40:58.4079394+06:00' AS DateTimeOffset), N'System.Exception: test Error
   at WebAppMVCLesson1.Controllers.HomeController.Index() in C:\Users\ШерзайМ\Desktop\atr\WebAppMVCLesson1\Controllers\HomeController.cs:line 24', N'<properties><property key="SourceContext">WebAppMVCLesson1.Controllers.HomeController</property><property key="ActionId">5c8a4ebf-c021-47c8-bf9b-36297d7d9789</property><property key="ActionName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="RequestId">0HMPER6KHBST6:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMPER6KHBST6</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (13, N'Executing ViewResult, running view "Index".', N'Executing ViewResult, running view {ViewName}.', N'Information', CAST(N'2023-03-27T21:40:58.4271560+06:00' AS DateTimeOffset), NULL, N'<properties><property key="ViewName">Index</property><property key="EventId"><structure type=""><property key="Id">1</property><property key="Name">ViewResultExecuting</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Mvc.ViewFeatures.ViewResultExecutor</property><property key="ActionId">5c8a4ebf-c021-47c8-bf9b-36297d7d9789</property><property key="ActionName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="RequestId">0HMPER6KHBST6:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMPER6KHBST6</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (14, N'Executed ViewResult - view "Index" executed in 148.9845ms.', N'Executed ViewResult - view {ViewName} executed in {ElapsedMilliseconds}ms.', N'Information', CAST(N'2023-03-27T21:40:58.5760165+06:00' AS DateTimeOffset), NULL, N'<properties><property key="ViewName">Index</property><property key="ElapsedMilliseconds">148,9845</property><property key="EventId"><structure type=""><property key="Id">4</property><property key="Name">ViewResultExecuted</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Mvc.ViewFeatures.ViewResultExecutor</property><property key="ActionId">5c8a4ebf-c021-47c8-bf9b-36297d7d9789</property><property key="ActionName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="RequestId">0HMPER6KHBST6:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMPER6KHBST6</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (15, N'Executed action "WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)" in 171.3674ms', N'Executed action {ActionName} in {ElapsedMilliseconds}ms', N'Information', CAST(N'2023-03-27T21:40:58.5780848+06:00' AS DateTimeOffset), NULL, N'<properties><property key="ActionName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="ElapsedMilliseconds">171,3674</property><property key="EventId"><structure type=""><property key="Id">2</property><property key="Name">ActionExecuted</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker</property><property key="RequestId">0HMPER6KHBST6:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMPER6KHBST6</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (16, N'Executed endpoint ''"WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)"''', N'Executed endpoint ''{EndpointName}''', N'Information', CAST(N'2023-03-27T21:40:58.5784169+06:00' AS DateTimeOffset), NULL, N'<properties><property key="EndpointName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="EventId"><structure type=""><property key="Id">1</property><property key="Name">ExecutedEndpoint</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Routing.EndpointMiddleware</property><property key="RequestId">0HMPER6KHBST6:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMPER6KHBST6</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (17, N'Request finished HTTP/2 GET https://localhost:7159/ - - - 200 - text/html;+charset=utf-8 238.6784ms', N'{HostingRequestFinishedLog:l}', N'Information', CAST(N'2023-03-27T21:40:58.5948042+06:00' AS DateTimeOffset), NULL, N'<properties><property key="ElapsedMilliseconds">238,6784</property><property key="StatusCode">200</property><property key="ContentType">text/html; charset=utf-8</property><property key="ContentLength" /><property key="Protocol">HTTP/2</property><property key="Method">GET</property><property key="Scheme">https</property><property key="Host">localhost:7159</property><property key="PathBase" /><property key="Path">/</property><property key="QueryString" /><property key="HostingRequestFinishedLog">Request finished HTTP/2 GET https://localhost:7159/ - - - 200 - text/html;+charset=utf-8 238.6784ms</property><property key="EventId"><structure type=""><property key="Id">2</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Hosting.Diagnostics</property><property key="RequestId">0HMPER6KHBST6:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMPER6KHBST6</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (18, N'Request starting HTTP/2 GET https://localhost:7159/_framework/aspnetcore-browser-refresh.js - -', N'{HostingRequestStartingLog:l}', N'Information', CAST(N'2023-03-27T21:40:58.6211818+06:00' AS DateTimeOffset), NULL, N'<properties><property key="Protocol">HTTP/2</property><property key="Method">GET</property><property key="ContentType" /><property key="ContentLength" /><property key="Scheme">https</property><property key="Host">localhost:7159</property><property key="PathBase" /><property key="Path">/_framework/aspnetcore-browser-refresh.js</property><property key="QueryString" /><property key="HostingRequestStartingLog">Request starting HTTP/2 GET https://localhost:7159/_framework/aspnetcore-browser-refresh.js - -</property><property key="EventId"><structure type=""><property key="Id">1</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Hosting.Diagnostics</property><property key="RequestId">0HMPER6KHBST6:00000003</property><property key="RequestPath">/_framework/aspnetcore-browser-refresh.js</property><property key="ConnectionId">0HMPER6KHBST6</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (19, N'Request starting HTTP/2 GET https://localhost:7159/_vs/browserLink - -', N'{HostingRequestStartingLog:l}', N'Information', CAST(N'2023-03-27T21:40:58.6225332+06:00' AS DateTimeOffset), NULL, N'<properties><property key="Protocol">HTTP/2</property><property key="Method">GET</property><property key="ContentType" /><property key="ContentLength" /><property key="Scheme">https</property><property key="Host">localhost:7159</property><property key="PathBase" /><property key="Path">/_vs/browserLink</property><property key="QueryString" /><property key="HostingRequestStartingLog">Request starting HTTP/2 GET https://localhost:7159/_vs/browserLink - -</property><property key="EventId"><structure type=""><property key="Id">1</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Hosting.Diagnostics</property><property key="RequestId">0HMPER6KHBST6:00000005</property><property key="RequestPath">/_vs/browserLink</property><property key="ConnectionId">0HMPER6KHBST6</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (20, N'Request finished HTTP/2 GET https://localhost:7159/_framework/aspnetcore-browser-refresh.js - - - 200 12002 application/javascript;+charset=utf-8 5.3384ms', N'{HostingRequestFinishedLog:l}', N'Information', CAST(N'2023-03-27T21:40:58.6265524+06:00' AS DateTimeOffset), NULL, N'<properties><property key="ElapsedMilliseconds">5,3384</property><property key="StatusCode">200</property><property key="ContentType">application/javascript; charset=utf-8</property><property key="ContentLength">12002</property><property key="Protocol">HTTP/2</property><property key="Method">GET</property><property key="Scheme">https</property><property key="Host">localhost:7159</property><property key="PathBase" /><property key="Path">/_framework/aspnetcore-browser-refresh.js</property><property key="QueryString" /><property key="HostingRequestFinishedLog">Request finished HTTP/2 GET https://localhost:7159/_framework/aspnetcore-browser-refresh.js - - - 200 12002 application/javascript;+charset=utf-8 5.3384ms</property><property key="EventId"><structure type=""><property key="Id">2</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Hosting.Diagnostics</property><property key="RequestId">0HMPER6KHBST6:00000003</property><property key="RequestPath">/_framework/aspnetcore-browser-refresh.js</property><property key="ConnectionId">0HMPER6KHBST6</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (21, N'Request finished HTTP/2 GET https://localhost:7159/_vs/browserLink - - - 200 - text/javascript;+charset=UTF-8 23.2966ms', N'{HostingRequestFinishedLog:l}', N'Information', CAST(N'2023-03-27T21:40:58.6452138+06:00' AS DateTimeOffset), NULL, N'<properties><property key="ElapsedMilliseconds">23,2966</property><property key="StatusCode">200</property><property key="ContentType">text/javascript; charset=UTF-8</property><property key="ContentLength" /><property key="Protocol">HTTP/2</property><property key="Method">GET</property><property key="Scheme">https</property><property key="Host">localhost:7159</property><property key="PathBase" /><property key="Path">/_vs/browserLink</property><property key="QueryString" /><property key="HostingRequestFinishedLog">Request finished HTTP/2 GET https://localhost:7159/_vs/browserLink - - - 200 - text/javascript;+charset=UTF-8 23.2966ms</property><property key="EventId"><structure type=""><property key="Id">2</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Hosting.Diagnostics</property><property key="RequestId">0HMPER6KHBST6:00000005</property><property key="RequestPath">/_vs/browserLink</property><property key="ConnectionId">0HMPER6KHBST6</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1002, N'User profile is available. Using ''"C:\Users\ШерзайМ\AppData\Local\ASP.NET\DataProtection-Keys"'' as key repository and Windows DPAPI to encrypt keys at rest.', N'User profile is available. Using ''{FullName}'' as key repository and Windows DPAPI to encrypt keys at rest.', N'Information', CAST(N'2023-05-05T19:21:35.5781819+06:00' AS DateTimeOffset), NULL, N'<properties><property key="FullName">C:\Users\ШерзайМ\AppData\Local\ASP.NET\DataProtection-Keys</property><property key="EventId"><structure type=""><property key="Id">63</property><property key="Name">UsingProfileAsKeyRepositoryWithDPAPI</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.DataProtection.KeyManagement.XmlKeyManager</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1003, N'Creating key {b880f4ad-a8ba-42e6-81c9-428f4548e231} with creation date 2023-05-05 13:21:35Z, activation date 2023-05-05 13:21:35Z, and expiration date 2023-08-03 13:21:35Z.', N'Creating key {KeyId:B} with creation date {CreationDate:u}, activation date {ActivationDate:u}, and expiration date {ExpirationDate:u}.', N'Information', CAST(N'2023-05-05T19:21:35.7189094+06:00' AS DateTimeOffset), NULL, N'<properties><property key="KeyId">b880f4ad-a8ba-42e6-81c9-428f4548e231</property><property key="CreationDate">05.05.2023 13:21:35 +00:00</property><property key="ActivationDate">05.05.2023 13:21:35 +00:00</property><property key="ExpirationDate">03.08.2023 13:21:35 +00:00</property><property key="EventId"><structure type=""><property key="Id">58</property><property key="Name">CreatingKey</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.DataProtection.KeyManagement.XmlKeyManager</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1004, N'Writing data to file ''"C:\Users\ШерзайМ\AppData\Local\ASP.NET\DataProtection-Keys\key-b880f4ad-a8ba-42e6-81c9-428f4548e231.xml"''.', N'Writing data to file ''{FileName}''.', N'Information', CAST(N'2023-05-05T19:21:35.7295055+06:00' AS DateTimeOffset), NULL, N'<properties><property key="FileName">C:\Users\ШерзайМ\AppData\Local\ASP.NET\DataProtection-Keys\key-b880f4ad-a8ba-42e6-81c9-428f4548e231.xml</property><property key="EventId"><structure type=""><property key="Id">39</property><property key="Name">WritingDataToFile</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.DataProtection.Repositories.FileSystemXmlRepository</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1005, N'Now listening on: "https://localhost:7159"', N'Now listening on: {address}', N'Information', CAST(N'2023-05-05T19:21:35.9590140+06:00' AS DateTimeOffset), NULL, N'<properties><property key="address">https://localhost:7159</property><property key="EventId"><structure type=""><property key="Id">14</property><property key="Name">ListeningOnAddress</property></structure></property><property key="SourceContext">Microsoft.Hosting.Lifetime</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1006, N'Now listening on: "http://localhost:5071"', N'Now listening on: {address}', N'Information', CAST(N'2023-05-05T19:21:35.9615345+06:00' AS DateTimeOffset), NULL, N'<properties><property key="address">http://localhost:5071</property><property key="EventId"><structure type=""><property key="Id">14</property><property key="Name">ListeningOnAddress</property></structure></property><property key="SourceContext">Microsoft.Hosting.Lifetime</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1007, N'Application started. Press Ctrl+C to shut down.', N'Application started. Press Ctrl+C to shut down.', N'Information', CAST(N'2023-05-05T19:21:35.9682991+06:00' AS DateTimeOffset), NULL, N'<properties><property key="SourceContext">Microsoft.Hosting.Lifetime</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1008, N'Hosting environment: "Development"', N'Hosting environment: {envName}', N'Information', CAST(N'2023-05-05T19:21:35.9715485+06:00' AS DateTimeOffset), NULL, N'<properties><property key="envName">Development</property><property key="SourceContext">Microsoft.Hosting.Lifetime</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1009, N'Content root path: "C:\Users\ШерзайМ\Desktop\atr\WebAppMVCLesson1\"', N'Content root path: {contentRoot}', N'Information', CAST(N'2023-05-05T19:21:35.9756901+06:00' AS DateTimeOffset), NULL, N'<properties><property key="contentRoot">C:\Users\ШерзайМ\Desktop\atr\WebAppMVCLesson1\</property><property key="SourceContext">Microsoft.Hosting.Lifetime</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1010, N'Request starting HTTP/2 GET https://localhost:7159/ - -', N'{HostingRequestStartingLog:l}', N'Information', CAST(N'2023-05-05T19:21:37.2668073+06:00' AS DateTimeOffset), NULL, N'<properties><property key="Protocol">HTTP/2</property><property key="Method">GET</property><property key="ContentType" /><property key="ContentLength" /><property key="Scheme">https</property><property key="Host">localhost:7159</property><property key="PathBase" /><property key="Path">/</property><property key="QueryString" /><property key="HostingRequestStartingLog">Request starting HTTP/2 GET https://localhost:7159/ - -</property><property key="EventId"><structure type=""><property key="Id">1</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Hosting.Diagnostics</property><property key="RequestId">0HMQDDEJEIQFB:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMQDDEJEIQFB</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1011, N'Executing endpoint ''"WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)"''', N'Executing endpoint ''{EndpointName}''', N'Information', CAST(N'2023-05-05T19:21:37.3721220+06:00' AS DateTimeOffset), NULL, N'<properties><property key="EndpointName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="EventId"><structure type=""><property key="Name">ExecutingEndpoint</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Routing.EndpointMiddleware</property><property key="RequestId">0HMQDDEJEIQFB:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMQDDEJEIQFB</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1012, N'Route matched with "{action = \"Index\", controller = \"Home\"}". Executing controller action with signature "Microsoft.AspNetCore.Mvc.IActionResult Index()" on controller "WebAppMVCLesson1.Controllers.HomeController" ("WebAppMVCLesson1").', N'Route matched with {RouteData}. Executing controller action with signature {MethodInfo} on controller {Controller} ({AssemblyName}).', N'Information', CAST(N'2023-05-05T19:21:37.4648866+06:00' AS DateTimeOffset), NULL, N'<properties><property key="RouteData">{action = "Index", controller = "Home"}</property><property key="MethodInfo">Microsoft.AspNetCore.Mvc.IActionResult Index()</property><property key="Controller">WebAppMVCLesson1.Controllers.HomeController</property><property key="AssemblyName">WebAppMVCLesson1</property><property key="EventId"><structure type=""><property key="Id">3</property><property key="Name">ControllerActionExecuting</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker</property><property key="ActionId">40e7f7ec-6bc0-467f-a987-047f8f792c3f</property><property key="ActionName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="RequestId">0HMQDDEJEIQFB:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMQDDEJEIQFB</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1013, N'LogInformation', N'LogInformation', N'Information', CAST(N'2023-05-05T19:21:37.4730380+06:00' AS DateTimeOffset), NULL, N'<properties><property key="SourceContext">WebAppMVCLesson1.Controllers.HomeController</property><property key="ActionId">40e7f7ec-6bc0-467f-a987-047f8f792c3f</property><property key="ActionName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="RequestId">0HMQDDEJEIQFB:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMQDDEJEIQFB</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1014, N'LogError', N'LogError', N'Error', CAST(N'2023-05-05T19:21:37.4768322+06:00' AS DateTimeOffset), NULL, N'<properties><property key="SourceContext">WebAppMVCLesson1.Controllers.HomeController</property><property key="ActionId">40e7f7ec-6bc0-467f-a987-047f8f792c3f</property><property key="ActionName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="RequestId">0HMQDDEJEIQFB:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMQDDEJEIQFB</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1015, N'test Error', N'test Error', N'Error', CAST(N'2023-05-05T19:21:37.5812869+06:00' AS DateTimeOffset), N'System.Exception: test Error
   at WebAppMVCLesson1.Controllers.HomeController.Index() in C:\Users\ШерзайМ\Desktop\atr\WebAppMVCLesson1\Controllers\HomeController.cs:line 24', N'<properties><property key="SourceContext">WebAppMVCLesson1.Controllers.HomeController</property><property key="ActionId">40e7f7ec-6bc0-467f-a987-047f8f792c3f</property><property key="ActionName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="RequestId">0HMQDDEJEIQFB:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMQDDEJEIQFB</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1016, N'Executing ViewResult, running view "Index".', N'Executing ViewResult, running view {ViewName}.', N'Information', CAST(N'2023-05-05T19:21:37.6546441+06:00' AS DateTimeOffset), NULL, N'<properties><property key="ViewName">Index</property><property key="EventId"><structure type=""><property key="Id">1</property><property key="Name">ViewResultExecuting</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Mvc.ViewFeatures.ViewResultExecutor</property><property key="ActionId">40e7f7ec-6bc0-467f-a987-047f8f792c3f</property><property key="ActionName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="RequestId">0HMQDDEJEIQFB:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMQDDEJEIQFB</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1017, N'Executed ViewResult - view "Index" executed in 316.4552ms.', N'Executed ViewResult - view {ViewName} executed in {ElapsedMilliseconds}ms.', N'Information', CAST(N'2023-05-05T19:21:37.9669684+06:00' AS DateTimeOffset), NULL, N'<properties><property key="ViewName">Index</property><property key="ElapsedMilliseconds">316,4552</property><property key="EventId"><structure type=""><property key="Id">4</property><property key="Name">ViewResultExecuted</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Mvc.ViewFeatures.ViewResultExecutor</property><property key="ActionId">40e7f7ec-6bc0-467f-a987-047f8f792c3f</property><property key="ActionName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="RequestId">0HMQDDEJEIQFB:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMQDDEJEIQFB</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1018, N'Executed action "WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)" in 504.2279ms', N'Executed action {ActionName} in {ElapsedMilliseconds}ms', N'Information', CAST(N'2023-05-05T19:21:37.9743201+06:00' AS DateTimeOffset), NULL, N'<properties><property key="ActionName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="ElapsedMilliseconds">504,2279</property><property key="EventId"><structure type=""><property key="Id">2</property><property key="Name">ActionExecuted</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker</property><property key="RequestId">0HMQDDEJEIQFB:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMQDDEJEIQFB</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1019, N'Executed endpoint ''"WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)"''', N'Executed endpoint ''{EndpointName}''', N'Information', CAST(N'2023-05-05T19:21:37.9767624+06:00' AS DateTimeOffset), NULL, N'<properties><property key="EndpointName">WebAppMVCLesson1.Controllers.HomeController.Index (WebAppMVCLesson1)</property><property key="EventId"><structure type=""><property key="Id">1</property><property key="Name">ExecutedEndpoint</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Routing.EndpointMiddleware</property><property key="RequestId">0HMQDDEJEIQFB:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMQDDEJEIQFB</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1020, N'Request finished HTTP/2 GET https://localhost:7159/ - - - 200 - text/html;+charset=utf-8 802.3872ms', N'{HostingRequestFinishedLog:l}', N'Information', CAST(N'2023-05-05T19:21:38.0621620+06:00' AS DateTimeOffset), NULL, N'<properties><property key="ElapsedMilliseconds">802,3872</property><property key="StatusCode">200</property><property key="ContentType">text/html; charset=utf-8</property><property key="ContentLength" /><property key="Protocol">HTTP/2</property><property key="Method">GET</property><property key="Scheme">https</property><property key="Host">localhost:7159</property><property key="PathBase" /><property key="Path">/</property><property key="QueryString" /><property key="HostingRequestFinishedLog">Request finished HTTP/2 GET https://localhost:7159/ - - - 200 - text/html;+charset=utf-8 802.3872ms</property><property key="EventId"><structure type=""><property key="Id">2</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Hosting.Diagnostics</property><property key="RequestId">0HMQDDEJEIQFB:00000001</property><property key="RequestPath">/</property><property key="ConnectionId">0HMQDDEJEIQFB</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1021, N'Request starting HTTP/2 GET https://localhost:7159/_framework/aspnetcore-browser-refresh.js - -', N'{HostingRequestStartingLog:l}', N'Information', CAST(N'2023-05-05T19:21:38.1437034+06:00' AS DateTimeOffset), NULL, N'<properties><property key="Protocol">HTTP/2</property><property key="Method">GET</property><property key="ContentType" /><property key="ContentLength" /><property key="Scheme">https</property><property key="Host">localhost:7159</property><property key="PathBase" /><property key="Path">/_framework/aspnetcore-browser-refresh.js</property><property key="QueryString" /><property key="HostingRequestStartingLog">Request starting HTTP/2 GET https://localhost:7159/_framework/aspnetcore-browser-refresh.js - -</property><property key="EventId"><structure type=""><property key="Id">1</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Hosting.Diagnostics</property><property key="RequestId">0HMQDDEJEIQFB:00000003</property><property key="RequestPath">/_framework/aspnetcore-browser-refresh.js</property><property key="ConnectionId">0HMQDDEJEIQFB</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1022, N'Request finished HTTP/2 GET https://localhost:7159/_framework/aspnetcore-browser-refresh.js - - - 200 12002 application/javascript;+charset=utf-8 6.3164ms', N'{HostingRequestFinishedLog:l}', N'Information', CAST(N'2023-05-05T19:21:38.1500471+06:00' AS DateTimeOffset), NULL, N'<properties><property key="ElapsedMilliseconds">6,3164</property><property key="StatusCode">200</property><property key="ContentType">application/javascript; charset=utf-8</property><property key="ContentLength">12002</property><property key="Protocol">HTTP/2</property><property key="Method">GET</property><property key="Scheme">https</property><property key="Host">localhost:7159</property><property key="PathBase" /><property key="Path">/_framework/aspnetcore-browser-refresh.js</property><property key="QueryString" /><property key="HostingRequestFinishedLog">Request finished HTTP/2 GET https://localhost:7159/_framework/aspnetcore-browser-refresh.js - - - 200 12002 application/javascript;+charset=utf-8 6.3164ms</property><property key="EventId"><structure type=""><property key="Id">2</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Hosting.Diagnostics</property><property key="RequestId">0HMQDDEJEIQFB:00000003</property><property key="RequestPath">/_framework/aspnetcore-browser-refresh.js</property><property key="ConnectionId">0HMQDDEJEIQFB</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1023, N'Request starting HTTP/2 GET https://localhost:7159/_vs/browserLink - -', N'{HostingRequestStartingLog:l}', N'Information', CAST(N'2023-05-05T19:21:38.2793156+06:00' AS DateTimeOffset), NULL, N'<properties><property key="Protocol">HTTP/2</property><property key="Method">GET</property><property key="ContentType" /><property key="ContentLength" /><property key="Scheme">https</property><property key="Host">localhost:7159</property><property key="PathBase" /><property key="Path">/_vs/browserLink</property><property key="QueryString" /><property key="HostingRequestStartingLog">Request starting HTTP/2 GET https://localhost:7159/_vs/browserLink - -</property><property key="EventId"><structure type=""><property key="Id">1</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Hosting.Diagnostics</property><property key="RequestId">0HMQDDEJEIQFB:00000005</property><property key="RequestPath">/_vs/browserLink</property><property key="ConnectionId">0HMQDDEJEIQFB</property></properties>', NULL, NULL, NULL)
INSERT [dbo].[Log] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties], [LogEvent], [UserName], [IP]) VALUES (1024, N'Request finished HTTP/2 GET https://localhost:7159/_vs/browserLink - - - 200 - text/javascript;+charset=UTF-8 72.3111ms', N'{HostingRequestFinishedLog:l}', N'Information', CAST(N'2023-05-05T19:21:38.3517636+06:00' AS DateTimeOffset), NULL, N'<properties><property key="ElapsedMilliseconds">72,3111</property><property key="StatusCode">200</property><property key="ContentType">text/javascript; charset=UTF-8</property><property key="ContentLength" /><property key="Protocol">HTTP/2</property><property key="Method">GET</property><property key="Scheme">https</property><property key="Host">localhost:7159</property><property key="PathBase" /><property key="Path">/_vs/browserLink</property><property key="QueryString" /><property key="HostingRequestFinishedLog">Request finished HTTP/2 GET https://localhost:7159/_vs/browserLink - - - 200 - text/javascript;+charset=UTF-8 72.3111ms</property><property key="EventId"><structure type=""><property key="Id">2</property></structure></property><property key="SourceContext">Microsoft.AspNetCore.Hosting.Diagnostics</property><property key="RequestId">0HMQDDEJEIQFB:00000005</property><property key="RequestPath">/_vs/browserLink</property><property key="ConnectionId">0HMQDDEJEIQFB</property></properties>', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Log] OFF
ALTER TABLE [dbo].[PageStatistics] ADD  CONSTRAINT [DF_PageStatistics_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Rooms] ADD  DEFAULT (N'') FOR [MainPicturePath]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[RoomRoomProperty]  WITH CHECK ADD  CONSTRAINT [FK_RoomRoomProperty_RoomProperties_RoomPropertiesRoomPropertyId] FOREIGN KEY([RoomPropertiesRoomPropertyId])
REFERENCES [dbo].[RoomProperties] ([RoomPropertyId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoomRoomProperty] CHECK CONSTRAINT [FK_RoomRoomProperty_RoomProperties_RoomPropertiesRoomPropertyId]
GO
ALTER TABLE [dbo].[RoomRoomProperty]  WITH CHECK ADD  CONSTRAINT [FK_RoomRoomProperty_Rooms_RoomsRoomId] FOREIGN KEY([RoomsRoomId])
REFERENCES [dbo].[Rooms] ([RoomId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoomRoomProperty] CHECK CONSTRAINT [FK_RoomRoomProperty_Rooms_RoomsRoomId]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_Categories_CategoryId]
GO
ALTER TABLE [dbo].[TeamWork]  WITH CHECK ADD  CONSTRAINT [FK_TeamWork_JobPosition_JobPositionNameId] FOREIGN KEY([JobPositionNameId])
REFERENCES [dbo].[JobPosition] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeamWork] CHECK CONSTRAINT [FK_TeamWork_JobPosition_JobPositionNameId]
GO
