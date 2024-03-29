USE [cuahanglinhkienmaytinh]
GO
/****** Object:  Table [dbo].[chinhanh]    Script Date: 5/11/2022 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chinhanh](
	[macn] [varchar](5) NOT NULL,
	[tencn] [nvarchar](100) NULL,
	[diachi] [nvarchar](100) NULL,
	[sodt] [varchar](10) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[macn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitiethoadon]    Script Date: 5/11/2022 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadon](
	[mahd] [varchar](5) NOT NULL,
	[masp] [varchar](5) NOT NULL,
	[soluong] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mahd] ASC,
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitietphieunhap]    Script Date: 5/11/2022 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietphieunhap](
	[mapn] [varchar](5) NOT NULL,
	[masp] [varchar](5) NOT NULL,
	[gianhap] [float] NULL,
	[soluong] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mapn] ASC,
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 5/11/2022 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[mahd] [varchar](5) NOT NULL,
	[ngaylap] [date] NULL,
	[manv] [varchar](5) NULL,
	[macn] [varchar](5) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[tong] [int] NULL,
	[hoten] [nvarchar](50) NULL,
	[sdt] [char](10) NULL,
 CONSTRAINT [PK__hoadon__7A2100DE962F309D] PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kho]    Script Date: 5/11/2022 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kho](
	[makho] [varchar](5) NOT NULL,
	[tenkho] [nvarchar](100) NULL,
	[diachi] [nvarchar](100) NULL,
	[macn] [varchar](5) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__kho__0ABBFBAE66B76EE4] PRIMARY KEY CLUSTERED 
(
	[makho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhacc]    Script Date: 5/11/2022 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhacc](
	[mancc] [varchar](5) NOT NULL,
	[tenncc] [nvarchar](100) NULL,
	[diachi] [nvarchar](100) NULL,
	[sdt] [nvarchar](10) NULL,
	[email] [varchar](50) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 5/11/2022 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[manv] [varchar](5) NOT NULL,
	[hoten] [nvarchar](100) NULL,
	[sdt] [varchar](10) NULL,
	[ngaylamviec] [date] NULL,
	[macn] [varchar](5) NOT NULL,
	[chucvu] [nvarchar](10) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [int] NULL,
	[cnmd] [char](10) NULL,
 CONSTRAINT [PK__nhanvien__7A21B37DA51945A3] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieunhap]    Script Date: 5/11/2022 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieunhap](
	[mapn] [varchar](5) NOT NULL,
	[ngaynhap] [date] NULL,
	[makho] [varchar](5) NULL,
	[mancc] [varchar](5) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[tong] [int] NULL,
	[tinhtrang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mapn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 5/11/2022 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[masp] [varchar](5) NOT NULL,
	[tensp] [nvarchar](100) NULL,
	[nhasx] [nvarchar](100) NULL,
	[loai] [nvarchar](20) NULL,
	[giaban] [float] NULL,
	[nhacc] [varchar](5) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 5/11/2022 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[manv] [varchar](5) NULL,
	[tentaikhoan] [varchar](20) NOT NULL,
	[matkhau] [varchar](100) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__taikhoan__8ADCB8A60DC9C088] PRIMARY KEY CLUSTERED 
(
	[tentaikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tonkho]    Script Date: 5/11/2022 7:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tonkho](
	[makho] [varchar](5) NOT NULL,
	[masp] [varchar](5) NOT NULL,
	[soluong] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[makho] ASC,
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[chinhanh] ([macn], [tencn], [diachi], [sodt], [rowguid]) VALUES (N'CN01', N'Chi nhánh 1', N'19 Nguyễn Hữu Thọ', N'0965412293', N'c8109811-a1ce-ec11-a1db-34e6d77bc142')
INSERT [dbo].[chinhanh] ([macn], [tencn], [diachi], [sodt], [rowguid]) VALUES (N'CN02', N'Chi nhánh 2', N'19 Nguyễn Hữu Thọ', N'0966546465', N'408c45ad-adce-ec11-a1db-34e6d77bc142')
GO
INSERT [dbo].[chitiethoadon] ([mahd], [masp], [soluong], [rowguid]) VALUES (N'HD2', N'SP1', 2, N'6362ee63-4dcf-ec11-a1dc-34e6d77bc142')
INSERT [dbo].[chitiethoadon] ([mahd], [masp], [soluong], [rowguid]) VALUES (N'HD3', N'SP1', 31, N'6cd15d10-17d1-ec11-a1dd-34e6d77bc142')
INSERT [dbo].[chitiethoadon] ([mahd], [masp], [soluong], [rowguid]) VALUES (N'HD3', N'SP2', 1, N'c25dbbf8-16d1-ec11-a1dd-34e6d77bc142')
GO
INSERT [dbo].[chitietphieunhap] ([mapn], [masp], [gianhap], [soluong], [rowguid]) VALUES (N'PN1', N'SP1', 20000, 10, N'37359ce3-4bd0-ec11-a1dd-34e6d77bc142')
INSERT [dbo].[chitietphieunhap] ([mapn], [masp], [gianhap], [soluong], [rowguid]) VALUES (N'PN3', N'SP2', 200000, 1, N'664bea73-4cd0-ec11-a1dd-34e6d77bc142')
INSERT [dbo].[chitietphieunhap] ([mapn], [masp], [gianhap], [soluong], [rowguid]) VALUES (N'PN4', N'SP1', 900000, 3, N'f1a7aa1d-4dd0-ec11-a1dd-34e6d77bc142')
INSERT [dbo].[chitietphieunhap] ([mapn], [masp], [gianhap], [soluong], [rowguid]) VALUES (N'PN4', N'SP2', 1000000, 5, N'f2a7aa1d-4dd0-ec11-a1dd-34e6d77bc142')
INSERT [dbo].[chitietphieunhap] ([mapn], [masp], [gianhap], [soluong], [rowguid]) VALUES (N'PN5', N'SP1', 900000, 3, N'dfc83537-4dd0-ec11-a1dd-34e6d77bc142')
INSERT [dbo].[chitietphieunhap] ([mapn], [masp], [gianhap], [soluong], [rowguid]) VALUES (N'PN5', N'SP2', 600000, 3, N'e0c83537-4dd0-ec11-a1dd-34e6d77bc142')
INSERT [dbo].[chitietphieunhap] ([mapn], [masp], [gianhap], [soluong], [rowguid]) VALUES (N'PN6', N'SP1', 300000, 1, N'73e89e87-4dd0-ec11-a1dd-34e6d77bc142')
INSERT [dbo].[chitietphieunhap] ([mapn], [masp], [gianhap], [soluong], [rowguid]) VALUES (N'PN6', N'SP2', 200000, 1, N'74e89e87-4dd0-ec11-a1dd-34e6d77bc142')
INSERT [dbo].[chitietphieunhap] ([mapn], [masp], [gianhap], [soluong], [rowguid]) VALUES (N'PN7', N'SP3', 300000, 101, N'2913ebaa-1ed1-ec11-a1dd-34e6d77bc142')
INSERT [dbo].[chitietphieunhap] ([mapn], [masp], [gianhap], [soluong], [rowguid]) VALUES (N'PN8', N'SP2', 200000, 100, N'428ea211-20d1-ec11-a1dd-34e6d77bc142')
INSERT [dbo].[chitietphieunhap] ([mapn], [masp], [gianhap], [soluong], [rowguid]) VALUES (N'PN8', N'SP3', 300000, 100, N'418ea211-20d1-ec11-a1dd-34e6d77bc142')
GO
INSERT [dbo].[hoadon] ([mahd], [ngaylap], [manv], [macn], [rowguid], [tong], [hoten], [sdt]) VALUES (N'HD1', CAST(N'2022-09-08' AS Date), N'NV01', N'CN01', N'd8ddfccb-bfce-ec11-a1db-34e6d77bc142', 3000000, N'Luan', N'069655664 ')
INSERT [dbo].[hoadon] ([mahd], [ngaylap], [manv], [macn], [rowguid], [tong], [hoten], [sdt]) VALUES (N'HD2', CAST(N'2022-05-09' AS Date), N'NV01', N'CN01', N'6262ee63-4dcf-ec11-a1dc-34e6d77bc142', 600000, NULL, NULL)
INSERT [dbo].[hoadon] ([mahd], [ngaylap], [manv], [macn], [rowguid], [tong], [hoten], [sdt]) VALUES (N'HD3', CAST(N'2022-05-11' AS Date), N'NV01', N'CN01', N'34e4baf1-16d1-ec11-a1dd-34e6d77bc142', 9500000, NULL, NULL)
GO
INSERT [dbo].[kho] ([makho], [tenkho], [diachi], [macn], [rowguid]) VALUES (N'K1', N'Kho 1', N'19 nguyễn hữu thọ', N'CN01', N'e05a402f-b7ce-ec11-a1db-34e6d77bc142')
INSERT [dbo].[kho] ([makho], [tenkho], [diachi], [macn], [rowguid]) VALUES (N'K2', N'Kho 2 ', N'20 Điện biên phủ', N'CN02', N'e15a402f-b7ce-ec11-a1db-34e6d77bc142')
INSERT [dbo].[kho] ([makho], [tenkho], [diachi], [macn], [rowguid]) VALUES (N'K3', N'Kho số 3', N'20 Nguyễn Thị Minh Khai', N'CN01', N'8afa5d2c-0dd1-ec11-a1dd-34e6d77bc142')
GO
INSERT [dbo].[nhacc] ([mancc], [tenncc], [diachi], [sdt], [email], [rowguid]) VALUES (N'NCC1', N'fpt', N'10 Nguyễn Chí Công', N'05151351', N'fptprovider@gmail.com', N'c8a3b250-b7ce-ec11-a1db-34e6d77bc142')
INSERT [dbo].[nhacc] ([mancc], [tenncc], [diachi], [sdt], [email], [rowguid]) VALUES (N'NCC2', N'Tech VN', N'10 Trần Hưng Đạo', N'096541215', N'techvn@gmail.com', N'25660ccf-0dd1-ec11-a1dd-34e6d77bc142')
GO
INSERT [dbo].[nhanvien] ([manv], [hoten], [sdt], [ngaylamviec], [macn], [chucvu], [rowguid], [ngaysinh], [gioitinh], [cnmd]) VALUES (N'NV01', N'Luận Phạm', N'0965412293', CAST(N'2022-07-05' AS Date), N'CN02', N'ADMIN', N'20b18424-a1ce-ec11-a1db-34e6d77bc142', CAST(N'2001-09-01' AS Date), 1, N'261586680 ')
INSERT [dbo].[nhanvien] ([manv], [hoten], [sdt], [ngaylamviec], [macn], [chucvu], [rowguid], [ngaysinh], [gioitinh], [cnmd]) VALUES (N'NV2', N'Trương Thanh Nhựt', N'092516516', CAST(N'2022-05-10' AS Date), N'CN02', N'nhân viên', N'22807369-53d0-ec11-a1dd-34e6d77bc142', CAST(N'2000-02-01' AS Date), 1, N'035136513 ')
INSERT [dbo].[nhanvien] ([manv], [hoten], [sdt], [ngaylamviec], [macn], [chucvu], [rowguid], [ngaysinh], [gioitinh], [cnmd]) VALUES (N'NV3', N'Phương Ngân', N'0951351355', CAST(N'2022-05-10' AS Date), N'CN01', N'quản lý', N'8a99157d-53d0-ec11-a1dd-34e6d77bc142', CAST(N'2001-06-12' AS Date), 0, N'32331555  ')
INSERT [dbo].[nhanvien] ([manv], [hoten], [sdt], [ngaylamviec], [macn], [chucvu], [rowguid], [ngaysinh], [gioitinh], [cnmd]) VALUES (N'NV4', N'Dương Tiểu Linh', N'096151355', CAST(N'2022-05-10' AS Date), N'CN02', N'ADMIN', N'60dd038d-53d0-ec11-a1dd-34e6d77bc142', CAST(N'2022-05-10' AS Date), 0, N'262626265 ')
INSERT [dbo].[nhanvien] ([manv], [hoten], [sdt], [ngaylamviec], [macn], [chucvu], [rowguid], [ngaysinh], [gioitinh], [cnmd]) VALUES (N'NV5', N'Phạm Băng Băng', N'012231515', CAST(N'2022-05-11' AS Date), N'CN02', N'thủ kho', N'f14093d5-1fd1-ec11-a1dd-34e6d77bc142', CAST(N'2001-06-12' AS Date), 0, N'2213135151')
GO
INSERT [dbo].[phieunhap] ([mapn], [ngaynhap], [makho], [mancc], [rowguid], [tong], [tinhtrang]) VALUES (N'PN1', CAST(N'2022-09-01' AS Date), N'K1', N'NCC1', N'364e6ad4-4bd0-ec11-a1dd-34e6d77bc142', 200000, 1)
INSERT [dbo].[phieunhap] ([mapn], [ngaynhap], [makho], [mancc], [rowguid], [tong], [tinhtrang]) VALUES (N'PN3', CAST(N'2022-05-10' AS Date), N'K2', N'NCC1', N'654bea73-4cd0-ec11-a1dd-34e6d77bc142', 1200000, 1)
INSERT [dbo].[phieunhap] ([mapn], [ngaynhap], [makho], [mancc], [rowguid], [tong], [tinhtrang]) VALUES (N'PN4', CAST(N'2022-05-10' AS Date), N'K2', N'NCC1', N'30ec7211-4dd0-ec11-a1dd-34e6d77bc142', 1900000, 1)
INSERT [dbo].[phieunhap] ([mapn], [ngaynhap], [makho], [mancc], [rowguid], [tong], [tinhtrang]) VALUES (N'PN5', CAST(N'2022-05-10' AS Date), N'K2', N'NCC1', N'dec83537-4dd0-ec11-a1dd-34e6d77bc142', 1500000, 1)
INSERT [dbo].[phieunhap] ([mapn], [ngaynhap], [makho], [mancc], [rowguid], [tong], [tinhtrang]) VALUES (N'PN6', CAST(N'2022-05-10' AS Date), N'K2', N'NCC1', N'72e89e87-4dd0-ec11-a1dd-34e6d77bc142', 500000, 1)
INSERT [dbo].[phieunhap] ([mapn], [ngaynhap], [makho], [mancc], [rowguid], [tong], [tinhtrang]) VALUES (N'PN7', CAST(N'2022-05-11' AS Date), N'K2', N'NCC2', N'2813ebaa-1ed1-ec11-a1dd-34e6d77bc142', 30300000, 1)
INSERT [dbo].[phieunhap] ([mapn], [ngaynhap], [makho], [mancc], [rowguid], [tong], [tinhtrang]) VALUES (N'PN8', CAST(N'2022-05-11' AS Date), N'K2', N'NCC2', N'408ea211-20d1-ec11-a1dd-34e6d77bc142', 50000000, 1)
GO
INSERT [dbo].[sanpham] ([masp], [tensp], [nhasx], [loai], [giaban], [nhacc], [rowguid]) VALUES (N'SP1', N'máy tính', N'apple', N'laptop', 300000, N'NCC1', N'47a3a95a-b7ce-ec11-a1db-34e6d77bc142')
INSERT [dbo].[sanpham] ([masp], [tensp], [nhasx], [loai], [giaban], [nhacc], [rowguid]) VALUES (N'SP2', N'a', N'b', N'c', 200000, N'NCC1', N'98f4c822-b8ce-ec11-a1db-34e6d77bc142')
INSERT [dbo].[sanpham] ([masp], [tensp], [nhasx], [loai], [giaban], [nhacc], [rowguid]) VALUES (N'SP3', N'Tai nghe Ea12132', N'LOGITECH', N'Tai Nghe', 300000, N'NCC1', N'2baa1558-55d0-ec11-a1dd-34e6d77bc142')
INSERT [dbo].[sanpham] ([masp], [tensp], [nhasx], [loai], [giaban], [nhacc], [rowguid]) VALUES (N'SP4', N'Laptop apple m1', N'APPLE', N'Laptop', 23000000, N'NCC2', N'3f339334-0ed1-ec11-a1dd-34e6d77bc142')
GO
INSERT [dbo].[taikhoan] ([manv], [tentaikhoan], [matkhau], [rowguid]) VALUES (N'NV01', N'1', N'c4ca4238a0b923820dcc509a6f75849b', N'ddc98a34-a1ce-ec11-a1db-34e6d77bc142')
INSERT [dbo].[taikhoan] ([manv], [tentaikhoan], [matkhau], [rowguid]) VALUES (N'NV01', N'2', N'2', N'e377bea6-4bcf-ec11-a1dc-34e6d77bc142')
INSERT [dbo].[taikhoan] ([manv], [tentaikhoan], [matkhau], [rowguid]) VALUES (N'NV3', N'ngan01', N'e10adc3949ba59abbe56e057f20f883e', N'9a0b44c7-53d0-ec11-a1dd-34e6d77bc142')
INSERT [dbo].[taikhoan] ([manv], [tentaikhoan], [matkhau], [rowguid]) VALUES (N'NV2', N'nhut123', N'c4ca4238a0b923820dcc509a6f75849b', N'70ae41d2-53d0-ec11-a1dd-34e6d77bc142')
INSERT [dbo].[taikhoan] ([manv], [tentaikhoan], [matkhau], [rowguid]) VALUES (N'NV5', N'thukhocn2', N'c4ca4238a0b923820dcc509a6f75849b', N'086a73de-1fd1-ec11-a1dd-34e6d77bc142')
GO
INSERT [dbo].[tonkho] ([makho], [masp], [soluong], [rowguid]) VALUES (N'K1', N'SP1', 300, N'cf6b5217-b8ce-ec11-a1db-34e6d77bc142')
INSERT [dbo].[tonkho] ([makho], [masp], [soluong], [rowguid]) VALUES (N'K1', N'SP2', 199, N'a302f039-b8ce-ec11-a1db-34e6d77bc142')
INSERT [dbo].[tonkho] ([makho], [masp], [soluong], [rowguid]) VALUES (N'K1', N'SP3', 0, N'3247d98e-55d0-ec11-a1dd-34e6d77bc142')
INSERT [dbo].[tonkho] ([makho], [masp], [soluong], [rowguid]) VALUES (N'K2', N'SP1', 469, N'd06b5217-b8ce-ec11-a1db-34e6d77bc142')
INSERT [dbo].[tonkho] ([makho], [masp], [soluong], [rowguid]) VALUES (N'K2', N'SP2', 400, N'a402f039-b8ce-ec11-a1db-34e6d77bc142')
INSERT [dbo].[tonkho] ([makho], [masp], [soluong], [rowguid]) VALUES (N'K2', N'SP3', 201, N'14f01d96-55d0-ec11-a1dd-34e6d77bc142')
GO
ALTER TABLE [dbo].[chinhanh] ADD  CONSTRAINT [MSmerge_df_rowguid_AC261D62AB524A9C932B4898CABE2E98]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[chitiethoadon] ADD  CONSTRAINT [MSmerge_df_rowguid_7ED81F86B6B44D3182A4A4D2432ECBE1]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[chitietphieunhap] ADD  CONSTRAINT [MSmerge_df_rowguid_E8F85C4422CC4D5C8E8FF0150C13937F]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[hoadon] ADD  CONSTRAINT [MSmerge_df_rowguid_837505FD1D7A472BA54BEF2037C86839]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[kho] ADD  CONSTRAINT [MSmerge_df_rowguid_C1A343C293D446BAA2FF989D39441D40]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[nhacc] ADD  CONSTRAINT [MSmerge_df_rowguid_4E7AD7E002E740DBA07C53F60CF9BECB]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[nhanvien] ADD  CONSTRAINT [MSmerge_df_rowguid_0D6326F69E474D1096EBEADD96E5AD94]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[phieunhap] ADD  CONSTRAINT [MSmerge_df_rowguid_EE2C3E4E9E7441D79D344A41121C983D]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[sanpham] ADD  CONSTRAINT [MSmerge_df_rowguid_DB6B32B8D41642E49BC67AE3E5011559]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[taikhoan] ADD  CONSTRAINT [MSmerge_df_rowguid_A8CA671BC2A34B7C8050BBC5C23D7EA1]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tonkho] ADD  CONSTRAINT [MSmerge_df_rowguid_5228BFA50B284A5D93CE6F74643D74DC]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK__chitiethoa__mahd__4CA06362] FOREIGN KEY([mahd])
REFERENCES [dbo].[hoadon] ([mahd])
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK__chitiethoa__mahd__4CA06362]
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD FOREIGN KEY([masp])
REFERENCES [dbo].[sanpham] ([masp])
GO
ALTER TABLE [dbo].[chitietphieunhap]  WITH CHECK ADD FOREIGN KEY([mapn])
REFERENCES [dbo].[phieunhap] ([mapn])
GO
ALTER TABLE [dbo].[chitietphieunhap]  WITH CHECK ADD FOREIGN KEY([masp])
REFERENCES [dbo].[sanpham] ([masp])
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD FOREIGN KEY([macn])
REFERENCES [dbo].[chinhanh] ([macn])
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD FOREIGN KEY([manv])
REFERENCES [dbo].[nhanvien] ([manv])
GO
ALTER TABLE [dbo].[kho]  WITH CHECK ADD  CONSTRAINT [FK__kho__macn__29572725] FOREIGN KEY([macn])
REFERENCES [dbo].[chinhanh] ([macn])
GO
ALTER TABLE [dbo].[kho] CHECK CONSTRAINT [FK__kho__macn__29572725]
GO
ALTER TABLE [dbo].[nhanvien]  WITH CHECK ADD  CONSTRAINT [FK__nhanvien__macn__4222D4EF] FOREIGN KEY([macn])
REFERENCES [dbo].[chinhanh] ([macn])
GO
ALTER TABLE [dbo].[nhanvien] CHECK CONSTRAINT [FK__nhanvien__macn__4222D4EF]
GO
ALTER TABLE [dbo].[phieunhap]  WITH CHECK ADD  CONSTRAINT [FK__phieunhap__makho__34C8D9D1] FOREIGN KEY([makho])
REFERENCES [dbo].[kho] ([makho])
GO
ALTER TABLE [dbo].[phieunhap] CHECK CONSTRAINT [FK__phieunhap__makho__34C8D9D1]
GO
ALTER TABLE [dbo].[phieunhap]  WITH CHECK ADD FOREIGN KEY([mancc])
REFERENCES [dbo].[nhacc] ([mancc])
GO
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD FOREIGN KEY([nhacc])
REFERENCES [dbo].[nhacc] ([mancc])
GO
ALTER TABLE [dbo].[taikhoan]  WITH CHECK ADD  CONSTRAINT [FK__taikhoan__manv__44FF419A] FOREIGN KEY([manv])
REFERENCES [dbo].[nhanvien] ([manv])
GO
ALTER TABLE [dbo].[taikhoan] CHECK CONSTRAINT [FK__taikhoan__manv__44FF419A]
GO
ALTER TABLE [dbo].[tonkho]  WITH CHECK ADD FOREIGN KEY([makho])
REFERENCES [dbo].[kho] ([makho])
GO
ALTER TABLE [dbo].[tonkho]  WITH CHECK ADD  CONSTRAINT [fk_tonkho_masp] FOREIGN KEY([masp])
REFERENCES [dbo].[sanpham] ([masp])
GO
ALTER TABLE [dbo].[tonkho] CHECK CONSTRAINT [fk_tonkho_masp]
GO
