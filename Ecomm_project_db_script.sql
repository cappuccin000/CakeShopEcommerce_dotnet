USE [Ecomm_Project]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 28-09-2026 01:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts](
	[acc_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[acc_name] [varchar](80) NOT NULL,
	[acc_type] [varchar](50) NOT NULL,
	[acc_num] [bigint] NOT NULL,
	[balance_amt] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_accounts] PRIMARY KEY CLUSTERED 
(
	[acc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admins]    Script Date: 28-09-2026 01:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admins](
	[admin_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[phone] [bigint] NOT NULL,
	[email] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_admins] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 28-09-2026 01:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[bill_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[grand_total] [decimal](18, 0) NOT NULL,
	[bill_date] [datetime2](7) NOT NULL,
	[payment_mode] [varchar](20) NOT NULL,
	[bill_status] [varchar](20) NOT NULL,
 CONSTRAINT [PK_bill] PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 28-09-2026 01:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[cart_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[pro_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[cart_date] [datetime2](7) NOT NULL,
	[status] [int] NOT NULL,
	[subtotal] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 28-09-2026 01:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[cat_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[image] [nvarchar](200) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[status] [varchar](15) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 28-09-2026 01:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[fb_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[pro_id] [int] NOT NULL,
	[fb_message] [varchar](200) NOT NULL,
	[reply_message] [varchar](200) NOT NULL,
	[fb_status] [varchar](50) NOT NULL,
	[fb_date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_feedback] PRIMARY KEY CLUSTERED 
(
	[fb_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logins]    Script Date: 28-09-2026 01:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logins](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[reg_id] [int] NOT NULL,
	[username] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[log_type] [varchar](15) NOT NULL,
 CONSTRAINT [PK_logins] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 28-09-2026 01:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[pro_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[subtotal] [decimal](18, 0) NOT NULL,
	[status] [varchar](15) NOT NULL,
	[order_date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 28-09-2026 01:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[pro_id] [int] IDENTITY(1,1) NOT NULL,
	[cat_id] [int] NOT NULL,
	[image] [nvarchar](200) NOT NULL,
	[price] [decimal](18, 0) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[stock] [int] NOT NULL,
	[status] [varchar](15) NOT NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[pro_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 28-09-2026 01:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[phone] [bigint] NOT NULL,
	[address] [nvarchar](200) NOT NULL,
	[pincode] [bigint] NOT NULL,
	[created_date] [datetime2](7) NOT NULL,
	[user_status] [varchar](15) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[admins] ([admin_id], [name], [phone], [email]) VALUES (1, N'admin', 9876543210, N'admin@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[logins] ON 
GO
INSERT [dbo].[logins] ([log_id], [reg_id], [username], [password], [log_type]) VALUES (1, 1, N'admin123', N'admin123', N'admin')
GO
INSERT [dbo].[logins] ([log_id], [reg_id], [username], [password], [log_type]) VALUES (2, 2, N'johndoe123', N'johndoe123', N'user')
GO
SET IDENTITY_INSERT [dbo].[logins] OFF
GO
INSERT [dbo].[users] ([user_id], [name], [age], [email], [phone], [address], [pincode], [created_date], [user_status]) VALUES (2, N'John Doe', 23, N'user@gmail.com', 9876543221, N'16/123, XYZ House, Kochi, Kerala, India', 682020, CAST(N'2026-09-28T01:10:59.3449385' AS DateTime2), N'active')
GO
