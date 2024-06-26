USE [BeautyShop_MII]
GO
/****** Object:  Table [dbo].[AttachedProduct]    Script Date: 10.06.2024 12:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttachedProduct](
	[MainProductID] [int] NOT NULL,
	[AttachedProductID] [int] NOT NULL,
 CONSTRAINT [PK_AttachedProduct] PRIMARY KEY CLUSTERED 
(
	[MainProductID] ASC,
	[AttachedProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 10.06.2024 12:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[RegistrationDate] [datetime] NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](20) NULL,
	[GenderCode] [nchar](1) NULL,
	[PhotoPath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientService]    Script Date: 10.06.2024 12:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NULL,
	[ServiceID] [int] NULL,
	[StartTime] [nchar](10) NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_ClientService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentByService]    Script Date: 10.06.2024 12:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentByService](
	[ID] [int] NOT NULL,
	[ClientServiceID] [int] NULL,
	[DocumentPath] [nvarchar](max) NULL,
 CONSTRAINT [PK_DocumentByService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10.06.2024 12:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](25) NULL,
	[Password] [nvarchar](25) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[RegistrationDate] [date] NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](11) NULL,
	[GenderCode] [nchar](1) NULL,
	[PhotoPath] [nvarchar](1000) NULL,
	[Post] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 10.06.2024 12:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Code] [nchar](1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 10.06.2024 12:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[StartDate] [date] NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 10.06.2024 12:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10.06.2024 12:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Cost] [decimal](10, 2) NULL,
	[Description] [nvarchar](max) NULL,
	[MainImagePath] [nvarchar](1000) NULL,
	[IsActive] [bit] NULL,
	[ManufacturerID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPhoto]    Script Date: 10.06.2024 12:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPhoto](
	[ID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[PhotoPath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_ProductPhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSale]    Script Date: 10.06.2024 12:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SaleDate] [datetime] NULL,
	[ProductID] [int] NULL,
	[Quantity] [nchar](10) NULL,
	[ClientServiceID] [int] NULL,
 CONSTRAINT [PK_ProdectSale] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 10.06.2024 12:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Cost] [decimal](10, 2) NULL,
	[DurationInSeconds] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Discount] [int] NULL,
	[MainImagePath] [nvarchar](1000) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicePhoto]    Script Date: 10.06.2024 12:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicePhoto](
	[ID] [int] NOT NULL,
	[ServiceID] [int] NULL,
	[PhotoPath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_ServicePhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 10.06.2024 12:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](30) NULL,
	[Color] [nchar](6) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagOfClient]    Script Date: 10.06.2024 12:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagOfClient](
	[ClientID] [int] NOT NULL,
	[TagID] [int] NOT NULL,
 CONSTRAINT [PK_TagOfClient] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (1, N'Иван', N'Иванов', N'Иванович', CAST(N'1995-06-12' AS Date), CAST(N'2012-01-01T00:00:00.000' AS DateTime), N'1@yandex.ru', N'1', N'1', NULL)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientService] ON 

INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (4, 1, 1, N'12-12-12  ', NULL)
SET IDENTITY_INSERT [dbo].[ClientService] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [Login], [Password], [FirstName], [LastName], [MiddleName], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath], [Post]) VALUES (1, N'Test', N'Test', N'Мураз', N'Манучарян', N'Валерикович', CAST(N'2004-01-20' AS Date), CAST(N'2024-06-10' AS Date), N'murazmanucharyan@yandex.ru', N'89026306651', N'1', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
INSERT [dbo].[Gender] ([Code], [Name]) VALUES (N'1', N'Муж       ')
INSERT [dbo].[Gender] ([Code], [Name]) VALUES (N'2', N'Жен       ')
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (1, N'Natura Siberica', CAST(N'2018-01-20' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (2, N'Биопин ФАРМА', CAST(N'2016-08-13' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (3, N'Milotto', CAST(N'2016-06-19' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (4, N'Лаборатория натуральной косметики MIXIT', CAST(N'2018-06-12' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (5, N'Малавит', CAST(N'2017-09-18' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (6, N'ANDALOU', CAST(N'2015-11-11' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (7, N'Agent Netty PRO', CAST(N'2016-03-17' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (8, N'ЕвроТек', CAST(N'2017-10-21' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (9, N'Blue Beautifly', CAST(N'2017-01-15' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (10, N'MATSESTA', CAST(N'2018-04-21' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (11, N'АЙРОН БАРБЕР', CAST(N'2018-04-16' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (12, N'РУСХИМТЕХ', CAST(N'2017-07-03' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (13, N'НИКОЛЬ', CAST(N'2017-02-27' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (14, N'Аравия', CAST(N'2015-06-23' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (15, N'Алтэя', CAST(N'2018-05-14' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (16, N'SHELK Cosmetics', CAST(N'2017-01-19' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (17, N'Русская косметика', CAST(N'2015-07-19' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (18, N'MAGIC HERBS', CAST(N'2016-02-23' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (19, N'Natura Botanica', CAST(N'2016-05-02' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (20, N'Bel Savon', CAST(N'2015-04-20' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (21, N'ИРИДА-НЕВА', CAST(N'2017-05-27' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (22, N'Славяна', CAST(N'2015-03-09' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (23, N'АЛВА', CAST(N'2016-08-18' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (24, N'Альпика', CAST(N'2018-05-31' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (25, N'Жерминаль', CAST(N'2017-04-04' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (26, N'Арт-Визаж', CAST(N'2018-04-15' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (27, N'Валери-Д', CAST(N'2018-06-28' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (28, N'Мастерская Fitoland Organic', CAST(N'2017-07-10' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (29, N'ДОМ ПРИРОДЫ', CAST(N'2015-11-25' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (30, N'Флора', CAST(N'2016-01-18' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (31, N'ЭКО ТАВРИДА', CAST(N'2016-06-27' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (32, N'АлтайЯ', CAST(N'2015-07-04' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (33, N'Weleda', CAST(N'2015-04-14' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (34, N'ANTI AGE', CAST(N'2015-11-01' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (35, N'Колорит', CAST(N'2017-12-22' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (36, N'SATIVA', CAST(N'2017-01-13' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (37, N'Фитокосметик', CAST(N'2016-03-01' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (38, N'Клеона', CAST(N'2017-10-29' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (39, N'Живая косметика Сибири', CAST(N'2015-03-05' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (40, N'SLAVIC HAIR Company', CAST(N'2015-12-20' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (41, N'Green era', CAST(N'2017-07-28' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (42, N'SIBERINA', CAST(N'2015-10-01' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (43, N'Green Mama', CAST(N'2016-11-11' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (44, N'Altanya', CAST(N'2015-03-23' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (45, N'Черный бриллиант', CAST(N'2016-01-07' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (46, N'BIOSelect', CAST(N'2016-12-29' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (47, N'АромаВятка', CAST(N'2016-10-01' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (48, N'VIQQO — производитель инновационной уходовой косметики', CAST(N'2017-10-12' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (49, N'DIONY', CAST(N'2017-12-03' AS Date))
INSERT [dbo].[Manufacturer] ([ID], [Name], [StartDate]) VALUES (50, N'AMSARVEDA', CAST(N'2015-12-11' AS Date))
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (1, N'Ирисовый освежающий увлажняющий крем', CAST(720.00 AS Decimal(10, 2)), N'тест описания', N'Beauty/1953276-1.jpg', 1, 8)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (2, N'Сыворотка для кожи вокруг глаз с гиалуроновой кислотой', CAST(690.00 AS Decimal(10, 2)), N'', N'Beauty/9631447-1.jpg', 1, 49)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (3, N'Тоник для лица дневной, Витаминный', CAST(800.00 AS Decimal(10, 2)), N'', N'Beauty/7293278-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (4, N'Массажный крем для лица с увлажняющим и тонизирующим эффектом', CAST(740.00 AS Decimal(10, 2)), N'', N'Beauty/6556449-1.jpg', 1, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (5, N'Маска-пленка отшелушивающая с лифтинг-эффектом', CAST(860.00 AS Decimal(10, 2)), N'', N'Beauty/6556452-1.jpg', 1, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (6, N'Специальный крем для клеточного восстановления', CAST(920.00 AS Decimal(10, 2)), N'', N'Beauty/6556466-1.jpg', 0, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (7, N'Увлажняющий крем', CAST(730.00 AS Decimal(10, 2)), N'', N'Beauty/1781678-1.jpg', 0, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (8, N'Восстанавливающая маска для лица', CAST(630.00 AS Decimal(10, 2)), N'', N'Beauty/3432465-1.jpg', 0, 6)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (9, N'Крем SILK для чувствительной кожи лица натуральный', CAST(740.00 AS Decimal(10, 2)), N'', N'Beauty/9939701-1.jpg', 1, 10)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (10, N'Подарочный набор Сияние', CAST(630.00 AS Decimal(10, 2)), N'', N'Beauty/6964198-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (11, N'Пена для бритья Натуральная, Лимон и Корица', CAST(470.00 AS Decimal(10, 2)), N'', N'Beauty/7528034-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (12, N'Крем питательный тонизирующий ночной', CAST(950.00 AS Decimal(10, 2)), N'', N'Beauty/3388879-1.jpg', 1, 46)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (13, N'Подарочный набор Супер Увлажнение', CAST(830.00 AS Decimal(10, 2)), N'', N'Beauty/6964197-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (14, N'Подарочный набор Глубокое Очищение', CAST(860.00 AS Decimal(10, 2)), N'', N'Beauty/6964196-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (15, N'Тоник ACTIVE для возрастной кожи лица натуральный', CAST(720.00 AS Decimal(10, 2)), N'', N'Beauty/9939709-1.jpg', 1, 10)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (16, N'Эфирное масло мелиссы', CAST(380.00 AS Decimal(10, 2)), N'', N'Beauty/7064333-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (17, N'Увлажняющая эмульсия для лица', CAST(910.00 AS Decimal(10, 2)), N'', N'Beauty/6556463-1.jpg', 1, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (18, N'Масло персиковое', CAST(280.00 AS Decimal(10, 2)), N'', N'Beauty/6691688-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (19, N'Очищающая коллекция Ночной восстанавливающий крем для лица', CAST(570.00 AS Decimal(10, 2)), N'', N'Beauty/3432453-1.jpg', 1, 6)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (20, N'Подарочный набор For HIM, Сильный мужчина', CAST(900.00 AS Decimal(10, 2)), N'', N'Beauty/7299377-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (21, N'Антивозрастная коллекция Освежающий тоник Цветочный', CAST(940.00 AS Decimal(10, 2)), N'', N'Beauty/3432442-1.jpg', 1, 6)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (22, N'Розовый разглаживающий увлажняющий крем', CAST(890.00 AS Decimal(10, 2)), N'', N'Beauty/1781679-1.jpg', 1, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (23, N'Деликатный питательный крем', CAST(890.00 AS Decimal(10, 2)), N'', N'Beauty/1781676-1.jpg', 1, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (24, N'Масло сладкого миндаля', CAST(250.00 AS Decimal(10, 2)), N'', N'Beauty/6691687-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (25, N'Эфирное масло жасмин', CAST(610.00 AS Decimal(10, 2)), N'', N'Beauty/7064330-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (26, N'Натуральная пенка для умывания, с ароматом розового дерева', CAST(750.00 AS Decimal(10, 2)), N'', N'Beauty/6953177-1.jpg', 0, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (27, N'Тоник для лица, для сухой и нормальной кожи', CAST(490.00 AS Decimal(10, 2)), N'', N'Beauty/9631443-1.jpg', 1, 49)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (28, N'Эфирное масло лемонграсс', CAST(380.00 AS Decimal(10, 2)), N'', N'Beauty/7064323-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (29, N'Ирисовый освежающий ночной крем', CAST(840.00 AS Decimal(10, 2)), N'', N'Beauty/1781674-1.jpg', 1, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (30, N'Деликатное очищающее молочко', CAST(680.00 AS Decimal(10, 2)), N'', N'Beauty/1781675-1.jpg', 1, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (31, N'Эфирное масло корицы', CAST(370.00 AS Decimal(10, 2)), N'', N'Beauty/7064335-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (32, N'Очищающий гель для умывания', CAST(720.00 AS Decimal(10, 2)), N'', N'Beauty/7847906-1.jpg', 0, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (33, N'Солнцезащитный лосьон для лица и тела', CAST(830.00 AS Decimal(10, 2)), N'', N'Beauty/6556469-1.jpg', 1, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (34, N'Коллекция Кокосовая, Очищающая пенка для лица с экстрактами кактуса', CAST(540.00 AS Decimal(10, 2)), N'', N'Beauty/3472602-1.jpg', 1, 6)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (35, N'S.O.S. средство против локальных несовершенств кожи', CAST(870.00 AS Decimal(10, 2)), N'', N'Beauty/7847905-1.jpg', 1, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (36, N'Коллекция Сияние, Очищающая крем-пенка Лимон Мейера', CAST(750.00 AS Decimal(10, 2)), N'', N'Beauty/3472591-1.jpg', 1, 6)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (37, N'Подарочный набор Сияние и Красота', CAST(570.00 AS Decimal(10, 2)), N'', N'Beauty/6964199-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (38, N'Маска-пленка для глубокого очищения пор', CAST(920.00 AS Decimal(10, 2)), N'', N'Beauty/6556453-1.jpg', 1, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (39, N'Ирисовый освежающий дневной крем', CAST(740.00 AS Decimal(10, 2)), N'', N'Beauty/1781693-1.jpg', 1, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (40, N'Деликатный увлажняющий крем', CAST(940.00 AS Decimal(10, 2)), N'', N'Beauty/1781680-1.jpg', 1, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (41, N'Ухаживающее масло, против сухости кожи', CAST(410.00 AS Decimal(10, 2)), N'', N'Beauty/6953160-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (42, N'Розовое растительное мыло', CAST(470.00 AS Decimal(10, 2)), N'', N'Beauty/1781711-1.jpg', 1, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (43, N'Гранатовый дневной крем-лифтинг', CAST(800.00 AS Decimal(10, 2)), N'', N'Beauty/1781695-1.jpg', 1, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (44, N'Тонизирующее очищающее средство 2 в 1', CAST(640.00 AS Decimal(10, 2)), N'', N'Beauty/2008488-1.jpg', 1, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (45, N'Сыворотка для лица с гиалуроновой кислотой, для сухой и чувствительной кожи', CAST(590.00 AS Decimal(10, 2)), N'', N'Beauty/9631448-1.jpg', 0, 49)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (46, N'Эфирное масло лимона', CAST(330.00 AS Decimal(10, 2)), N'', N'Beauty/7064322-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (47, N'Эфирное масло розовое дерево', CAST(510.00 AS Decimal(10, 2)), N'', N'Beauty/7064326-1.jpg', 0, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (48, N'Мягкая пенка для умывания', CAST(680.00 AS Decimal(10, 2)), N'', N'Beauty/5625224-1.jpg', 0, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (49, N'Сыворотка для лица с гиалуроновой кислотой, для нормальной кожи', CAST(560.00 AS Decimal(10, 2)), N'', N'Beauty/9631445-1.jpg', 1, 49)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (50, N'Тоник для лица, для жирной и проблемной кожи', CAST(600.00 AS Decimal(10, 2)), N'', N'Beauty/9631442-1.jpg', 1, 49)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (51, N'Пенка для умывания, для сухой и чувствительной кожи', CAST(440.00 AS Decimal(10, 2)), N'', N'Beauty/9631439-1.jpg', 1, 49)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (52, N'Антивозрастной крем для лица с органическими ягодами годжи', CAST(990.00 AS Decimal(10, 2)), N'', N'Beauty/6433981-1.jpg', 0, 9)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (53, N'Эфирное масло эвкалипт', CAST(410.00 AS Decimal(10, 2)), N'', N'Beauty/7064320-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (54, N'Сыворотка PERFECT SERUM депигментирующая натуральная', CAST(710.00 AS Decimal(10, 2)), N'', N'Beauty/9939719-1.jpg', 1, 10)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (55, N'Крем для лица с антиоксидантами органической клюквы', CAST(980.00 AS Decimal(10, 2)), N'', N'Beauty/6433979-1.jpg', 0, 9)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (56, N'Пенка для лица для чувствительной кожи', CAST(630.00 AS Decimal(10, 2)), N'', N'Beauty/3472601-1.jpg', 1, 6)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (57, N'Коллекция Кокосовая, Укрепляющая сыворотка с экстрактами кактуса', CAST(680.00 AS Decimal(10, 2)), N'', N'Beauty/3472604-1.jpg', 1, 6)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (58, N'Крем-маска WOW EFFECT омолаживающая для лица натуральная', CAST(950.00 AS Decimal(10, 2)), N'', N'Beauty/9939704-1.jpg', 1, 10)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (59, N'Подарочный набор For MEN', CAST(840.00 AS Decimal(10, 2)), N'', N'Beauty/7299378-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (60, N'Очищающий гель для нормальной и сухой кожи лица', CAST(720.00 AS Decimal(10, 2)), N'', N'Beauty/6556458-1.jpg', 1, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (61, N'Лифтинг-сыворотка для лица', CAST(930.00 AS Decimal(10, 2)), N'', N'Beauty/6556462-1.jpg', 0, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (62, N'Тоник для ухода за сухой и нормальной кожей', CAST(990.00 AS Decimal(10, 2)), N'', N'Beauty/6556459-1.jpg', 1, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (63, N'Питательный крем для лица', CAST(800.00 AS Decimal(10, 2)), N'', N'Beauty/6556464-1.jpg', 0, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (64, N'Крем против морщин для глаз', CAST(570.00 AS Decimal(10, 2)), N'', N'Beauty/5427580-1.jpg', 0, 46)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (65, N'Лифтинг-сыворотка для лица с гиалуроновой кислотой', CAST(610.00 AS Decimal(10, 2)), N'', N'Beauty/9631446-1.jpg', 1, 49)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (66, N'Деликатное питательное масло для лица', CAST(930.00 AS Decimal(10, 2)), N'', N'Beauty/2262226-1.jpg', 1, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (67, N'Тонизирующая сыворотка для лица', CAST(780.00 AS Decimal(10, 2)), N'', N'Beauty/6556461-1.jpg', 1, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (68, N'Масло праймер для лица (основа под макияж), Выравнивание', CAST(530.00 AS Decimal(10, 2)), N'', N'Beauty/6953159-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (69, N'Сыворотка COUPEROSE укрепляющая сосуды натуральная', CAST(590.00 AS Decimal(10, 2)), N'', N'Beauty/9939714-1.jpg', 1, 10)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (70, N'Органический тонер с экстрактом Розы', CAST(960.00 AS Decimal(10, 2)), N'', N'Beauty/7889950-1.jpg', 1, 9)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (71, N'Пенка для умывания, для жирной и комбинированной кожи', CAST(780.00 AS Decimal(10, 2)), N'', N'Beauty/9631437-1.jpg', 1, 49)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (72, N'Маска для лица увлажняющая и тонизирующая', CAST(860.00 AS Decimal(10, 2)), N'', N'Beauty/6556451-1.jpg', 1, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (73, N'Эфирное масло чайного дерева', CAST(410.00 AS Decimal(10, 2)), N'', N'Beauty/7064334-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (74, N'Очищающий гель для комбинированной и жирной кожи лица', CAST(980.00 AS Decimal(10, 2)), N'', N'Beauty/6556457-1.jpg', 1, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (75, N'Масло после бритья Натуральное, Лимон и Корица', CAST(300.00 AS Decimal(10, 2)), N'', N'Beauty/7528031-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (76, N'Ухаживающее масло для лица, восстанавливает кожу', CAST(420.00 AS Decimal(10, 2)), N'', N'Beauty/6953176-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (77, N'Подарочный набор Мягкое Очищение', CAST(850.00 AS Decimal(10, 2)), N'', N'Beauty/6964195-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (78, N'Гранатовый ночной крем-лифтинг', CAST(560.00 AS Decimal(10, 2)), N'', N'Beauty/1781696-1.jpg', 1, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (79, N'Живительный тоник для лица', CAST(770.00 AS Decimal(10, 2)), N'', N'Beauty/2008486-1.jpg', 0, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (80, N'Универсальный питательный крем SKIN FOOD', CAST(640.00 AS Decimal(10, 2)), N'', N'Beauty/2351755-1.jpg', 1, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (81, N'Органическое 100% аргановое масло', CAST(760.00 AS Decimal(10, 2)), N'', N'Beauty/6433982-1.jpg', 1, 9)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (82, N'Пенка для умывания, для нормальной кожи', CAST(400.00 AS Decimal(10, 2)), N'', N'Beauty/9631438-1.jpg', 1, 49)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (83, N'Крем PERFECT выравнивающий тон лица натуральный', CAST(780.00 AS Decimal(10, 2)), N'', N'Beauty/9939700-1.jpg', 1, 10)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (84, N'Чистящая пена-гель для лица', CAST(550.00 AS Decimal(10, 2)), N'', N'Beauty/2697586-1.jpg', 1, 46)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (85, N'Пенка для умывания Натуральная, Лимон и корица', CAST(280.00 AS Decimal(10, 2)), N'', N'Beauty/7528032-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (86, N'Масло для лица массажное, с эффектом Лифтинга', CAST(500.00 AS Decimal(10, 2)), N'', N'Beauty/6953169-1.jpg', 0, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (87, N'Увлажняющий 24-часовой крем против морщин', CAST(910.00 AS Decimal(10, 2)), N'', N'Beauty/2697576-1.jpg', 1, 46)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (88, N'Подарочный набор Travel, в Командировку, мужской', CAST(880.00 AS Decimal(10, 2)), N'', N'Beauty/7299376-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (89, N'Тоник для ухода за жирной и комбинированной кожей', CAST(800.00 AS Decimal(10, 2)), N'', N'Beauty/6556460-1.jpg', 1, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (90, N'Тонизирующий крем для лица', CAST(800.00 AS Decimal(10, 2)), N'', N'Beauty/6556465-1.jpg', 1, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (91, N'Восстанавливающий крем для лица с органическим шиповником', CAST(960.00 AS Decimal(10, 2)), N'', N'Beauty/6433984-1.jpg', 1, 9)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (92, N'Эфирное масло перечной мяты', CAST(390.00 AS Decimal(10, 2)), N'', N'Beauty/7064324-1.jpg', 0, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (93, N'Тоник для лица, Успокаивающий, для всех типов кожи', CAST(410.00 AS Decimal(10, 2)), N'', N'Beauty/6953158-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (94, N'Эфирное масло бергамота', CAST(380.00 AS Decimal(10, 2)), N'', N'Beauty/7064315-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (95, N'Гималайская грязевая маска восстанавливающая', CAST(640.00 AS Decimal(10, 2)), N'', N'Beauty/6556455-1.jpg', 1, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (96, N'Эфирное масло лаванды', CAST(570.00 AS Decimal(10, 2)), N'', N'Beauty/7064314-1.jpg', 1, 19)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (97, N'Гималайская грязевая маска антиоксидантная', CAST(660.00 AS Decimal(10, 2)), N'', N'Beauty/6556454-1.jpg', 1, 50)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (98, N'Гранатовая интенсивная сыворотка-лифтинг', CAST(720.00 AS Decimal(10, 2)), N'', N'Beauty/1781670-1.jpg', 1, 33)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (99, N'Коллекция Кокосовая, Увлажняющий ночной крем с экстрактами кактуса', CAST(700.00 AS Decimal(10, 2)), N'', N'Beauty/3472608-1.jpg', 1, 6)
GO
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (100, N'Тоник-пилинг для лица EXFOLIANT на основе фруктовых кислот натуральный', CAST(660.00 AS Decimal(10, 2)), N'', N'Beauty/9939710-1.jpg', 1, 10)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (101, N'Test Flacon', CAST(100.00 AS Decimal(10, 2)), N'Test Desc', N'', 1, 22)
INSERT [dbo].[Product] ([ID], [Title], [Cost], [Description], [MainImagePath], [IsActive], [ManufacturerID]) VALUES (102, N'TEST2', CAST(274.99 AS Decimal(10, 2)), N'TESTDESC', N'', 1, 8)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductSale] ON 

INSERT [dbo].[ProductSale] ([ID], [SaleDate], [ProductID], [Quantity], [ClientServiceID]) VALUES (3, CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'2         ', 4)
SET IDENTITY_INSERT [dbo].[ProductSale] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath], [IsActive]) VALUES (1, N'Покупка товара', CAST(100.00 AS Decimal(10, 2)), 1, N'Покупка', 0, N'Services/ПокупкаТовара.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath], [IsActive]) VALUES (2, N'Стрижка и укладка волос', CAST(2000.00 AS Decimal(10, 2)), 1800, N'Классическая стрижка и стильная укладка для любой длины волос.', 0, N'Services/СтрижкаИУкладка.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath], [IsActive]) VALUES (3, N'Окрашивание и поддержание цвета волос', CAST(3000.00 AS Decimal(10, 2)), 2400, N'Профессиональное окрашивание волос с поддержанием цвета.', 0, N'Services/ОкрашеваниеИПоддержание.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath], [IsActive]) VALUES (4, N'Уход за волосами', CAST(1500.00 AS Decimal(10, 2)), 1200, N'Интенсивный уход за волосами, восстановление и питание.', 0, N'Services/УходPаBолосами.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath], [IsActive]) VALUES (5, N'Дизайн ногтей и уход за ногтями', CAST(1200.00 AS Decimal(10, 2)), 1800, N'Индивидуальный дизайн ногтей и профессиональный уход.', 0, N'Services/ДизайнНогтей.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath], [IsActive]) VALUES (6, N'Уход за руками и ногами', CAST(1000.00 AS Decimal(10, 2)), 1500, N'Спа-процедуры для рук и ног для полного расслабления.', 0, N'Services/УходЗаРуками.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath], [IsActive]) VALUES (7, N'Чистка и уход за кожей лица', CAST(2500.00 AS Decimal(10, 2)), 2100, N'Глубокая чистка и уход для поддержания здоровья кожи.', 0, N'Services/ЧисткаИУходЗаКожейЛица.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath], [IsActive]) VALUES (8, N'Процедуры для улучшения состояния кожи', CAST(3000.00 AS Decimal(10, 2)), 2700, N'Инновационные процедуры для улучшения состояния кожи.', 0, N'Services/ПроцедурыДляУлучшения.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath], [IsActive]) VALUES (9, N'Расслабляющий и оздоровительный массаж', CAST(2000.00 AS Decimal(10, 2)), 2400, N'Массаж для полного расслабления и восстановления.', 0, N'Services/РасслабляющийИОздоровительныйМассаж.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath], [IsActive]) VALUES (10, N'Коррекция и окрашивание бровей и ресниц', CAST(800.00 AS Decimal(10, 2)), 900, N'Индивидуальная коррекция и окрашивание для подчеркивания взгляда.', 0, N'Services/КоррекцияИОкрашиваниеБровейИРесниц.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath], [IsActive]) VALUES (11, N'Укладка для особых событий (прически и макияж)', CAST(2500.00 AS Decimal(10, 2)), 2100, N'Укладка и макияж для особых событий.', 0, N'Services/УкладкаДляОсобыхСобытий.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath], [IsActive]) VALUES (12, N'Релаксационные процедуры для тела', CAST(1800.00 AS Decimal(10, 2)), 1500, N'Процедуры для расслабления и улучшения общего состояния.', 0, N'Services/РелаксационныеПроцедурыДляТела.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath], [IsActive]) VALUES (13, N'Маникюр и педикюр', CAST(1600.00 AS Decimal(10, 2)), 1800, N'Комплексный уход за ногтями и кожей рук и ног.', 0, N'Services/МаникюрИПедикюр.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath], [IsActive]) VALUES (14, N'Чистка и уход ушей', CAST(3500.00 AS Decimal(10, 2)), 2700, N'Полная читска ушей с последующим уходом', 0, N'Services/ЧисткаИУходУшей.jpg', 1)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
ALTER TABLE [dbo].[AttachedProduct]  WITH CHECK ADD  CONSTRAINT [FK_AttachedProduct_Product1] FOREIGN KEY([AttachedProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[AttachedProduct] CHECK CONSTRAINT [FK_AttachedProduct_Product1]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Gender] FOREIGN KEY([GenderCode])
REFERENCES [dbo].[Gender] ([Code])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Gender]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Client]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Service]
GO
ALTER TABLE [dbo].[DocumentByService]  WITH CHECK ADD  CONSTRAINT [FK_DocumentByService_ClientService] FOREIGN KEY([ClientServiceID])
REFERENCES [dbo].[ClientService] ([ID])
GO
ALTER TABLE [dbo].[DocumentByService] CHECK CONSTRAINT [FK_DocumentByService_ClientService]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Gender] FOREIGN KEY([GenderCode])
REFERENCES [dbo].[Gender] ([Code])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Gender]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Post] FOREIGN KEY([Post])
REFERENCES [dbo].[Post] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Post]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[ProductPhoto]  WITH CHECK ADD  CONSTRAINT [FK_ProductPhoto_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductPhoto] CHECK CONSTRAINT [FK_ProductPhoto_Product]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_ClientService] FOREIGN KEY([ClientServiceID])
REFERENCES [dbo].[ClientService] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_ClientService]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Product]
GO
ALTER TABLE [dbo].[ServicePhoto]  WITH CHECK ADD  CONSTRAINT [FK_ServicePhoto_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[ServicePhoto] CHECK CONSTRAINT [FK_ServicePhoto_Service]
GO
ALTER TABLE [dbo].[TagOfClient]  WITH CHECK ADD  CONSTRAINT [FK_TagOfClient_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[TagOfClient] CHECK CONSTRAINT [FK_TagOfClient_Client]
GO
ALTER TABLE [dbo].[TagOfClient]  WITH CHECK ADD  CONSTRAINT [FK_TagOfClient_Tag1] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([ID])
GO
ALTER TABLE [dbo].[TagOfClient] CHECK CONSTRAINT [FK_TagOfClient_Tag1]
GO
