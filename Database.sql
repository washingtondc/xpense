USE [orcamento]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lancamentos', @level2type=N'COLUMN',@level2name=N'LanAti'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CON', @level2type=N'COLUMN',@level2name=N'ConFix'

GO
/****** Object:  StoredProcedure [dbo].[getValoresCategoria]    Script Date: 31/07/2016 20:49:07 ******/
DROP PROCEDURE [dbo].[getValoresCategoria]
GO
/****** Object:  Table [dbo].[USU]    Script Date: 31/07/2016 20:49:07 ******/
DROP TABLE [dbo].[USU]
GO
/****** Object:  Table [dbo].[SAL]    Script Date: 31/07/2016 20:49:07 ******/
DROP TABLE [dbo].[SAL]
GO
/****** Object:  Table [dbo].[ParcelasExcluidas]    Script Date: 31/07/2016 20:49:07 ******/
DROP TABLE [dbo].[ParcelasExcluidas]
GO
/****** Object:  Table [dbo].[Parcelas]    Script Date: 31/07/2016 20:49:07 ******/
DROP TABLE [dbo].[Parcelas]
GO
/****** Object:  Table [dbo].[Lancamentos]    Script Date: 31/07/2016 20:49:07 ******/
DROP TABLE [dbo].[Lancamentos]
GO
/****** Object:  Table [dbo].[LancamentoCartao]    Script Date: 31/07/2016 20:49:07 ******/
DROP TABLE [dbo].[LancamentoCartao]
GO
/****** Object:  Table [dbo].[FAT]    Script Date: 31/07/2016 20:49:07 ******/
DROP TABLE [dbo].[FAT]
GO
/****** Object:  Table [dbo].[CON]    Script Date: 31/07/2016 20:49:07 ******/
DROP TABLE [dbo].[CON]
GO
/****** Object:  Table [dbo].[CFG]    Script Date: 31/07/2016 20:49:07 ******/
DROP TABLE [dbo].[CFG]
GO
/****** Object:  Table [dbo].[CAT]    Script Date: 31/07/2016 20:49:07 ******/
DROP TABLE [dbo].[CAT]
GO
/****** Object:  Table [dbo].[CAR]    Script Date: 31/07/2016 20:49:07 ******/
DROP TABLE [dbo].[CAR]
GO
/****** Object:  Table [dbo].[Bancos]    Script Date: 31/07/2016 20:49:07 ******/
DROP TABLE [dbo].[Bancos]
GO
/****** Object:  Table [dbo].[Backgrounds]    Script Date: 31/07/2016 20:49:07 ******/
DROP TABLE [dbo].[Backgrounds]
GO
/****** Object:  Table [dbo].[Backgrounds]    Script Date: 31/07/2016 20:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Backgrounds](
	[codigo] [int] NULL,
	[imagem] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bancos]    Script Date: 31/07/2016 20:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bancos](
	[Nome] [nvarchar](50) NULL,
	[ID] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CAR]    Script Date: 31/07/2016 20:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAR](
	[UsuCod] [int] NOT NULL,
	[CarCod] [int] NOT NULL,
	[CarBan] [varchar](20) NULL,
	[CarLim] [float] NOT NULL,
	[CarDiaFec] [int] NOT NULL,
	[CarDiaPag] [int] NOT NULL,
	[CarNom] [varchar](20) NULL,
 CONSTRAINT [PK_CAR] PRIMARY KEY CLUSTERED 
(
	[UsuCod] ASC,
	[CarCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAT]    Script Date: 31/07/2016 20:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAT](
	[UsuCod] [int] NOT NULL,
	[CatCod] [int] NOT NULL,
	[CatDes] [varchar](50) NULL,
	[CatCor] [varchar](10) NULL,
	[CatNom] [varchar](50) NULL,
	[CatOrc] [money] NULL,
 CONSTRAINT [PK_CAT] PRIMARY KEY CLUSTERED 
(
	[UsuCod] ASC,
	[CatCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CFG]    Script Date: 31/07/2016 20:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CFG](
	[CfgCod] [int] NOT NULL,
	[CfgOcu] [bit] NULL,
 CONSTRAINT [PK_CFG] PRIMARY KEY CLUSTERED 
(
	[CfgCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CON]    Script Date: 31/07/2016 20:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CON](
	[ConCod] [int] NOT NULL,
	[UsuCod] [int] NULL,
	[ConDes] [varchar](50) NULL,
	[ConFix] [int] NULL,
	[BankID] [int] NULL,
 CONSTRAINT [PK_CON] PRIMARY KEY CLUSTERED 
(
	[ConCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FAT]    Script Date: 31/07/2016 20:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAT](
	[CarCod] [int] NOT NULL,
	[UsuCod] [int] NOT NULL,
	[FatMes] [int] NOT NULL,
	[FatAno] [int] NOT NULL,
	[FatTotVal] [money] NULL,
	[FatEftVal] [money] NULL,
	[FatPenVal] [money] NULL,
	[FatEftDat] [date] NULL,
 CONSTRAINT [PK_FAT] PRIMARY KEY CLUSTERED 
(
	[CarCod] ASC,
	[UsuCod] ASC,
	[FatMes] ASC,
	[FatAno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LancamentoCartao]    Script Date: 31/07/2016 20:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LancamentoCartao](
	[LanAno] [int] NOT NULL,
	[LanSeq] [int] NOT NULL,
	[CarCod] [int] NOT NULL,
 CONSTRAINT [PK_LAN2] PRIMARY KEY CLUSTERED 
(
	[LanAno] ASC,
	[LanSeq] ASC,
	[CarCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lancamentos]    Script Date: 31/07/2016 20:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lancamentos](
	[LanAno] [int] NOT NULL,
	[LanSeq] [int] NOT NULL,
	[LanDes] [varchar](50) NOT NULL,
	[LanDat] [datetime] NOT NULL,
	[LanVal] [money] NOT NULL,
	[UsuCod] [int] NOT NULL,
	[ConCod] [int] NOT NULL,
	[LanTip] [char](1) NOT NULL,
	[CatCod] [int] NOT NULL,
	[LanFix] [int] NULL CONSTRAINT [DF_LAN_LanFix]  DEFAULT ((0)),
	[LanAti] [int] NULL CONSTRAINT [DF_LAN_LanAti]  DEFAULT ((1)),
	[FITID] [varchar](15) NULL,
	[LanDet] [varchar](100) NULL,
	[LanAutoDebit] [bit] NOT NULL CONSTRAINT [DF_Lancamentos_LanAutoDebit]  DEFAULT ((0)),
 CONSTRAINT [PK_LAN] PRIMARY KEY CLUSTERED 
(
	[LanAno] ASC,
	[LanSeq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parcelas]    Script Date: 31/07/2016 20:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parcelas](
	[LanAno] [int] NOT NULL,
	[LanSeq] [int] NOT NULL,
	[LanDatPag] [datetime] NOT NULL,
	[LanEftDat] [datetime] NULL,
	[LanEftVal] [float] NULL,
 CONSTRAINT [PK_LAN1] PRIMARY KEY CLUSTERED 
(
	[LanAno] ASC,
	[LanSeq] ASC,
	[LanDatPag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ParcelasExcluidas]    Script Date: 31/07/2016 20:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParcelasExcluidas](
	[LanAno] [int] NOT NULL,
	[LanSeq] [int] NOT NULL,
	[LanDatPag] [date] NOT NULL,
	[LanDatExc] [date] NULL,
 CONSTRAINT [PK_ParcelasExcluidas] PRIMARY KEY CLUSTERED 
(
	[LanAno] ASC,
	[LanSeq] ASC,
	[LanDatPag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SAL]    Script Date: 31/07/2016 20:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAL](
	[SalMes] [int] NOT NULL,
	[SalAno] [int] NOT NULL,
	[ConCod] [int] NOT NULL,
	[SaldoMes] [money] NULL,
	[SalDatAtu] [date] NULL,
	[AjusteManual] [money] NULL CONSTRAINT [DF_SAL_AjusteManual]  DEFAULT ((0)),
 CONSTRAINT [PK_SAL] PRIMARY KEY CLUSTERED 
(
	[SalMes] ASC,
	[SalAno] ASC,
	[ConCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USU]    Script Date: 31/07/2016 20:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USU](
	[UsuCod] [int] NOT NULL,
	[UsuNom] [varchar](50) NULL,
	[UsuEml] [varchar](100) NULL,
	[UsuSen] [varchar](40) NULL,
	[BackgroundImage] [int] NULL CONSTRAINT [DF_USU_BackgroundImage]  DEFAULT ((1)),
	[Avatar] [varchar](50) NULL CONSTRAINT [DF_USU_Avatar]  DEFAULT (''),
	[DataCadastro] [datetime] NULL,
	[DataDesativado] [datetime] NULL,
	[UsuAdmin] [bit] NOT NULL CONSTRAINT [DF_USU_UsuAdmin]  DEFAULT ((0)),
 CONSTRAINT [PK_USU] PRIMARY KEY CLUSTERED 
(
	[UsuCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Backgrounds] ([codigo], [imagem]) VALUES (1, N'C:\Users\wcosta\Desktop\pesquisas\Orcamento\Projeto\Images\Backgrounds\1.jpg')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Do Brasil S.A.  ', N'0001')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Central Do Brasil  ', N'0002')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Da Amazonia S.A.  ', N'0003')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Do Nordeste Do Brasil S.A.  ', N'0004')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Nacional Do Desenvolvimento Econom  ', N'0007')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Do Estado De Sao Paulo S.A. - Bane  ', N'0008')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Sc Credit Suisse Hg  ', N'0011')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Standard De Investimentos S.A.  ', N'0012')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Sc Senso  ', N'0013')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Natixis Brasil S.A. - Banco MÃºltiplo  ', N'0014')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Sc Link  ', N'0015')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Azteca Do Brasil S.A.  ', N'0019')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Do Estado De Alagoas S.A.  ', N'0020')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banestes S.A Banco Do Estado Do Espirito  ', N'0021')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Credireal -Em Absorcao  ', N'0022')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco De Pernambuco S.A.-Bandepe  ', N'0024')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Alfa S/a  ', N'0025')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Do Estado Do Acre S.A.  ', N'0026')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Do Estado De Santa Catarina S.A.  ', N'0027')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Baneb-Em Absorcao  ', N'0028')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Banerj S.A.  ', N'0029')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Paraiban-Banco Da Paraiba S.A.  ', N'0030')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Beg S.A.  ', N'0031')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Do Estado Do Mato Grosso S.A.  ', N'0032')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Santander (brasil) S.A.  ', N'0033')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bea S.A.  ', N'0034')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bec S.A.  ', N'0035')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bradesco Bbi S.A  ', N'0036')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Do Estado Do Para S.A.  ', N'0037')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Banestado S.A.  ', N'0038')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Do Estado Do Piaui S.A.-Bep  ', N'0039')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Cargill S.A  ', N'0040')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Do Estado Do Rio Grande Do Sul S.A  ', N'0041')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco J. Safra S.A  ', N'0042')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bva Sa  ', N'0044')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Opportunity S.A.  ', N'0045')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Do Estado De Sergipe S.A.  ', N'0047')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bemge S.A.  ', N'0048')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Do Estado De Rondonia S.A.  ', N'0059')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Confidence Corretora De Cambio Sa  ', N'0060')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Abb Sa  ', N'0061')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Hipercard Banco Multiplo S.A  ', N'0062')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Ibi S.A - Banco Multiplo  ', N'0063')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Goldman Sachs Do Brasil-Banco Multiplo S  ', N'0064')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bracce S.A.  ', N'0065')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Morgan Stanley Dean Witter S.A  ', N'0066')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Baneb Sa  ', N'0067')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bea S.A  ', N'0068')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Bpn Brasil Banco Multiplo S.A  ', N'0069')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Brb - Banco De Brasilia S.A.  ', N'0070')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Rural Mais S.A  ', N'0072')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Bb Banco Popular Do Brasil  ', N'0073')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco J. Safra S.A.  ', N'0074')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Cr2 S.A  ', N'0075')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Kdb Do Brasil S.A  ', N'0076')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Intermedium S.A.  ', N'0077')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Bes Investimento Do Brasil Sa - Banco De  ', N'0078')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Jbs Banco S.A.  ', N'0079')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Sc Bt Associados  ', N'0080')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Bbn Banco Brasileiro De Negocios S.A  ', N'0081')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco TopÃ¡zio S.A.  ', N'0082')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Da China Brasil S.A.  ', N'0083')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Cc Unicred Norte Do Parana  ', N'0084')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Cooperativa Central De Credito Urbano -  ', N'0085')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Oboe Credito, Financiamento E Investimen  ', N'0086')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Unicred Central Santa Catarina  ', N'0087')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Randon S.A.  ', N'0088')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Cooperativa De Credito Rural Da Regiao D  ', N'0089')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Cooperativa Central De Credito Do Estado  ', N'0090')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Unicred Central Rs - Central De Coop Eco  ', N'0091')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Brickell S A Credito, Financiamento E In  ', N'0092')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Scm Polocred  ', N'0093')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Petra S.A.  ', N'0094')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Confidence De Cambio Sa  ', N'0095')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bm&f De Serv. De LiquidaÃ§Ã£o E Cust  ', N'0096')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Cooperativa Central De Credito Noroeste  ', N'0097')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Credialianca Cooperativa De Credito Rura  ', N'0098')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Cooperativa Central Economia E Credito M  ', N'0099')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Sc Planner  ', N'0100')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Dtvm RenascenÃ§a  ', N'0101')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Sc Xp Investimentos  ', N'0102')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Sc Ebs  ', N'0103')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Caixa Economica Federal  ', N'0104')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Itabanco S.A.  ', N'0106')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bbm S.A  ', N'0107')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Scfi Portocred  ', N'0108')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Credibanco S.A.  ', N'0109')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Dtvm Oliveira Trust  ', N'0111')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Sc Magliano  ', N'0113')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Cecoopes-Central Das Coop De Econ E Cred  ', N'0114')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Scfi Rotula  ', N'0115')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Unico S.A.  ', N'0116')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Sc Advanced  ', N'0117')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Bi Standard Chartered  ', N'0118')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Western Union Do Brasil S.A.  ', N'0119')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Berj S.A  ', N'0122')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Bank Of America - Brasil S.A. (banco Mul  ', N'0148')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Nossa Caixa S.A  ', N'0151')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Caixa Economica Estadual Do Rio Grande D  ', N'0153')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Norchem S.A.  ', N'0165')
GO
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Inter-Atlantico S.A.  ', N'0166')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Hsbc Investment Bank Brasil S.A.-Banco M  ', N'0168')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Finasa S.A.  ', N'0175')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Itau Bba S.A  ', N'0184')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Caixa Geral - Brasil S.A.  ', N'0199')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Ficrisa Axelrud S.A.  ', N'0200')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Axial S.A.  ', N'0201')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bradesco Cartoes S.A.  ', N'0204')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Sul America S.A.  ', N'0205')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Martinelli S.A.  ', N'0206')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Btg Pactual S.A.  ', N'0208')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Dresdner Bank Lateinamerika Aktiengesell  ', N'0210')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Sistema S.A.  ', N'0211')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Original S.A.  ', N'0212')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Arbi S.A.  ', N'0213')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Dibens S.A.  ', N'0214')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Comercial E De Investimento Sudame  ', N'0215')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Regional Malcon S.A.  ', N'0216')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco John Deere S.A.  ', N'0217')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bonsucesso S.A.  ', N'0218')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Zogbi S.A  ', N'0219')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Crefisul S.A.  ', N'0220')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Chase Fleming S.A.  ', N'0221')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Credit Agricole Brasil S.A.  ', N'0222')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Fibra S.A.  ', N'0224')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Brascan S.A.  ', N'0225')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Icatu S.A.  ', N'0228')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Cruzeiro Do Sul S.A.  ', N'0229')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Unicard Banco Multiplo S.A  ', N'0230')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Boavista Interatlantico S.A-Em Abs  ', N'0231')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Interpart S.A.  ', N'0232')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Cifra S.A.  ', N'0233')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Lavra S.A.  ', N'0234')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Bank Of America - Liberal S.A  ', N'0235')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Cambial Sa  ', N'0236')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bradesco S.A.  ', N'0237')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bancred S.A.  ', N'0239')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco De Credito Real De Minas Gerais S.  ', N'0240')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Classico S.A.  ', N'0241')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Euroinvest S.A. Eurobanco  ', N'0242')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Maxima S.A.  ', N'0243')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Cidade S.A.  ', N'0244')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Empresarial S.A.  ', N'0245')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Abc Brasil S.A.  ', N'0246')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Ubs S.A  ', N'0247')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Boa Vista Interatlantico S.A  ', N'0248')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Investcred Unibanco S.A  ', N'0249')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Schahin S.A  ', N'0250')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Fininvest S.A.  ', N'0252')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Parana Banco S.A.  ', N'0254')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Milbanco S.A.  ', N'0255')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Gulfinvest S.A.  ', N'0256')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Induscred S.A.  ', N'0258')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Boreal S.A.  ', N'0262')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Cacique S.A.  ', N'0263')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Fator S.A.  ', N'0265')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Cedula S.A.  ', N'0266')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bbm-Com.C.Imob.Cfi S.A.  ', N'0267')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Real S.A.  ', N'0275')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Planibanc S.A.  ', N'0277')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Brasileiro Comercial S.A.- Bbc  ', N'0282')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bcn S.A.  ', N'0291')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Bcr/em Absorcao  ', N'0294')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco De La Nacion Argentina  ', N'0300')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Do Progresso S.A.  ', N'0302')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Hnf S.A.  ', N'0303')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Pontual S.A.  ', N'0304')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bmg S.A.  ', N'0318')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Industrial E Comercial S.A.  ', N'0320')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Itau Unibanco S.A.  ', N'0341')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bfb _ Em Absorcao  ', N'0346')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Sudameris Do Brasil S.A  ', N'0347')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Santander S.A.  ', N'0351')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Santander Brasil S.A.  ', N'0353')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Abn Amro Real S.A.  ', N'0356')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Societe Generale Brasil S.A  ', N'0366')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Digibanco S.A.  ', N'0369')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Westlb Do Brasil S.A.  ', N'0370')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Itamarati S/a  ', N'0372')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Fenicia S.A.  ', N'0375')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco J.P. Morgan S.A.  ', N'0376')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bmd S.A.  ', N'0388')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Mercantil Do Brasil S.A.  ', N'0389')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Mercantil De Sao Paulo S.A.  ', N'0392')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bradesco Financiamentos S.A.  ', N'0394')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Hsbc Bank Brasil S.A.-Banco Multiplo  ', N'0399')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Unibanco - Uniao De Bancos Brasileiros S  ', N'0409')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Capital S.A.  ', N'0412')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Nacional S.A.  ', N'0415')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banorte - Banco Nacional Do Norte S.A.  ', N'0420')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Safra S.A.  ', N'0422')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Santander Noroeste S.A  ', N'0424')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banfort - Banco Fortaleza S.A.  ', N'0434')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Rural S.A.  ', N'0453')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco De Tokyo Mitsubishi Ufj Brasil S.A  ', N'0456')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Sumitomo Mitsui Brasileiro S.A.  ', N'0464')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Lloyds Tsb Bank Plc  ', N'0472')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Caixa Geral - Brasil S.A.  ', N'0473')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Citibank N.A.  ', N'0477')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Itaubank S.A.  ', N'0479')
GO
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Wachovia S.A.  ', N'0480')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Deutsche Bank S. A. - Banco Alemao  ', N'0487')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Jpmorgan Chase Bank  ', N'0488')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Frances Internacional-Brasil S.A  ', N'0489')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Ing Bank N.V.  ', N'0492')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Union - Brasil S.A  ', N'0493')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco De La Republica Oriental Del Urugu  ', N'0494')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco De La Provincia De Buenos Aires  ', N'0495')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Uno-E Brasil S.A  ', N'0496')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Centro Hispano Banco  ', N'0498')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Iochpe S.A.  ', N'0499')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Brasileiro Iraquiano S.A.  ', N'0501')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Santander De Negocios S.A.  ', N'0502')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Multiplic S.A.  ', N'0504')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Credit Suisse (brasil) S.A.  ', N'0505')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Luso Brasileiro S.A.  ', N'0600')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Patente S.A.  ', N'0602')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Industrial Do Brasil S. A.  ', N'0604')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Santos Neves S.A.  ', N'0607')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Vr S.A.  ', N'0610')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Paulista S.A.  ', N'0611')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Guanabara S.A.  ', N'0612')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Pecunia S.A.  ', N'0613')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Tendencia S.A.  ', N'0618')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Aplicap S.A.  ', N'0621')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Panamericano S.A.  ', N'0623')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco General Motors S.A  ', N'0624')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Araucaria S.A.  ', N'0625')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Ficsa S.A.  ', N'0626')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Destak S.A.  ', N'0627')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Criterium S. A.  ', N'0628')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Intercap S.A.  ', N'0630')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Rendimento S.A.  ', N'0633')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Triangulo S.A.  ', N'0634')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Do Estado Amapa S.A.  ', N'0635')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Sofisa S.A.  ', N'0637')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Prosper S.A.  ', N'0638')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Credito Metropolitano S/a  ', N'0640')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Alvorada S.A.  ', N'0641')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Pine S.A.  ', N'0643')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Do Estado De Roraima S.A.  ', N'0645')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Marka S.A.  ', N'0647')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Dimensao S.A.  ', N'0649')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Pebb S.A.  ', N'0650')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Itau Holding Financeira S.A  ', N'0652')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Indusval S.A.  ', N'0653')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco A.J. Renner S.A.  ', N'0654')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Votorantim S.A.  ', N'0655')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Matrix S.A.  ', N'0656')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Tecnicorp S.A.  ', N'0657')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Porto Real S.A.  ', N'0658')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Santos S. A.  ', N'0702')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Daycoval S.A.  ', N'0707')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Vetor S.A.  ', N'0711')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Vega S.A.  ', N'0715')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Operador S.A.  ', N'0718')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banif-Banco Internacional Do Funchal (br  ', N'0719')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Maxinvest S.A.  ', N'0720')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Credibel S.A.  ', N'0721')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Interior De Sao Paulo S.A.  ', N'0722')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Finansinos S. A.  ', N'0725')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Fital S.A.  ', N'0728')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Fonte Cindam S.A.  ', N'0729')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Minas S.A.  ', N'0732')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Das Nacoes S.A.  ', N'0733')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Gerdau S.A.  ', N'0734')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Pottencial S.A.  ', N'0735')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Theca S.A.  ', N'0737')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Morada S.A.  ', N'0738')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bgn S.A.  ', N'0739')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Barclays S.A.  ', N'0740')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Ribeirao Preto S.A.  ', N'0741')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Equatorial S.A.  ', N'0742')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Semear S.A.  ', N'0743')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Bankboston N.A.  ', N'0744')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Citibank S.A.  ', N'0745')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Modal S.A.  ', N'0746')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Rabobank International Brasil S.A.  ', N'0747')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Cooperativo Sicredi S.A.  ', N'0748')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Simples S.A.  ', N'0749')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Hsbc Republic Bank Brasil S.A-Banco Mult  ', N'0750')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Scotiabank Brasil S.A Banco Multiplo  ', N'0751')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Bnp Paribas Brasil S.A  ', N'0752')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Nbc Bank Brasil S.A.- Banco Multiplo  ', N'0753')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Bank Of America Merrill Lynch Banco Mult  ', N'0755')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Cooperativo Do Brasil S.A.  ', N'0756')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banco Keb Do Brasil S.A.  ', N'0757')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Bcr Banco De Credito Real S.A  ', N'0800')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Sc Souza Barros  ', N'0901')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Associacao Brasileira De Bancos Comercia  ', N'0995')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Febraban  ', N'0996')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Assoc.Bras.Bancos Comerc.Estaduais-Asbac  ', N'0997')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Associacao Brasileira Bancos Internacion  ', N'0998')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Santander/banespa S/a Arrendami Mercant  ', N'5379')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Banespa S/a Arrendamiento Mercantil  ', N'5393')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Ban.S/a Corretora De Cambio E Titulos  ', N'5396')
INSERT [dbo].[Bancos] ([Nome], [ID]) VALUES (N'Ban.S/a S.Tec.Adm Correta Tage Seg  ', N'5398')
INSERT [dbo].[CAR] ([UsuCod], [CarCod], [CarBan], [CarLim], [CarDiaFec], [CarDiaPag], [CarNom]) VALUES (2, 1, N'Mastercard', 0, 3, 5, N'sadfa')
INSERT [dbo].[CAT] ([UsuCod], [CatCod], [CatDes], [CatCor], [CatNom], [CatOrc]) VALUES (2, 1, N'teste', N'#C71585', N'categoria 1', 0.0000)
INSERT [dbo].[CAT] ([UsuCod], [CatCod], [CatDes], [CatCor], [CatNom], [CatOrc]) VALUES (2, 2, N'asdfasd', N'#607D8B', N'cat 2', 11.0000)
INSERT [dbo].[CAT] ([UsuCod], [CatCod], [CatDes], [CatCor], [CatNom], [CatOrc]) VALUES (2, 3, N'', N'#FF9800', N'salarios', 0.0000)
INSERT [dbo].[CON] ([ConCod], [UsuCod], [ConDes], [ConFix], [BankID]) VALUES (1, 2, N'Carteira', 1, 341)
INSERT [dbo].[CON] ([ConCod], [UsuCod], [ConDes], [ConFix], [BankID]) VALUES (2, 2, N'conta 2', 0, 341)
INSERT [dbo].[CON] ([ConCod], [UsuCod], [ConDes], [ConFix], [BankID]) VALUES (3, 2, N'conta', 0, 341)
INSERT [dbo].[LancamentoCartao] ([LanAno], [LanSeq], [CarCod]) VALUES (2016, 4, 1)
INSERT [dbo].[LancamentoCartao] ([LanAno], [LanSeq], [CarCod]) VALUES (2016, 6, 1)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 1, N'salario', CAST(N'2016-07-05 00:00:00.000' AS DateTime), 500.0000, 2, 1, N'E', 1, 0, 1, N'', N'', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 2, N'despesa1', CAST(N'2016-07-13 09:35:28.493' AS DateTime), 100.0000, 2, 2, N'S', 1, 0, 1, N'', N'', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 4, N'parcelado cartao', CAST(N'2016-07-13 00:00:00.000' AS DateTime), 10.0000, 2, 0, N'S', 2, 0, 1, N'', N'', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 5, N'teste', CAST(N'2016-08-11 00:00:00.000' AS DateTime), 256.0000, 2, 2, N'S', 2, 0, 1, N'', N'', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 6, N'parcelado 2', CAST(N'2016-07-13 00:00:00.000' AS DateTime), 12.5200, 2, 0, N'S', 1, 0, 1, N'', N'', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 7, N'recebimento', CAST(N'2016-07-18 00:00:00.000' AS DateTime), 51.2500, 2, 2, N'E', 3, 0, 1, N'', N'', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 8, N'RSHOP-DROGARIA PO-01/07 ', CAST(N'2016-07-01 00:00:00.000' AS DateTime), 4626.0000, 2, 0, N'S', 0, 0, 1, N'20160701001', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 9, N'REND PAGO APLIC AUT MAIS', CAST(N'2016-07-01 00:00:00.000' AS DateTime), 8.0000, 2, 0, N'E', 0, 0, 1, N'20160701002', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 10, N'RSHOP-DROGARIA SP-05/07 ', CAST(N'2016-07-05 00:00:00.000' AS DateTime), 689.0000, 2, 0, N'S', 0, 0, 1, N'20160705001', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 11, N'INT IPTU12111410712     ', CAST(N'2016-07-06 00:00:00.000' AS DateTime), 7070.0000, 2, 0, N'S', 0, 0, 1, N'20160706001', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 12, N'ITAUCARD VISA 9102-3813 ', CAST(N'2016-07-06 00:00:00.000' AS DateTime), 27651.0000, 2, 0, N'S', 0, 0, 1, N'20160706002', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 13, N'CEI     000057 DINHEIRO ', CAST(N'2016-07-06 00:00:00.000' AS DateTime), 45000.0000, 2, 0, N'E', 0, 0, 1, N'20160706003', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 14, N'CEI     000058 DINHEIRO ', CAST(N'2016-07-11 00:00:00.000' AS DateTime), 93000.0000, 2, 0, N'E', 0, 0, 1, N'20160711001', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 15, N'RSHOP-SUPERMERCAD-12/07 ', CAST(N'2016-07-12 00:00:00.000' AS DateTime), 1264.0000, 2, 0, N'S', 0, 0, 1, N'20160712001', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 16, N'REND PAGO APLIC AUT MAIS', CAST(N'2016-07-12 00:00:00.000' AS DateTime), 3.0000, 2, 0, N'E', 0, 0, 1, N'20160712002', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 17, N'INT NEXTEL 9799999876306', CAST(N'2016-07-13 00:00:00.000' AS DateTime), 12341.0000, 2, 0, N'S', 0, 0, 1, N'20160713001', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 18, N'INT PAG TIT BANCO 422   ', CAST(N'2016-07-13 00:00:00.000' AS DateTime), 24442.0000, 2, 0, N'S', 0, 0, 1, N'20160713002', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 19, N'REND PAGO APLIC AUT MAIS', CAST(N'2016-07-13 00:00:00.000' AS DateTime), 5.0000, 2, 0, N'E', 0, 0, 1, N'20160713003', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 20, N'TAR SUPER          JUN16', CAST(N'2016-07-15 00:00:00.000' AS DateTime), 3620.0000, 2, 0, N'S', 0, 0, 1, N'20160715001', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 21, N'INT PAG TIT 175013693232', CAST(N'2016-07-18 00:00:00.000' AS DateTime), 39989.0000, 2, 0, N'S', 0, 0, 1, N'20160718001', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 22, N'REND PAGO APLIC AUT MAIS', CAST(N'2016-07-18 00:00:00.000' AS DateTime), 1.0000, 2, 0, N'E', 0, 0, 1, N'20160718002', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 23, N'RSHOP-LEUZA GARCI-21/07 ', CAST(N'2016-07-21 00:00:00.000' AS DateTime), 700.0000, 2, 0, N'S', 0, 0, 1, N'20160721001', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 24, N'RSHOP-SUPERMERCAD-27/07 ', CAST(N'2016-07-27 00:00:00.000' AS DateTime), 5342.0000, 2, 0, N'S', 0, 0, 1, N'20160727001', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 25, N'RSHOP-SUPERMERCAD-28/07 ', CAST(N'2016-07-28 00:00:00.000' AS DateTime), 2806.0000, 2, 0, N'S', 0, 0, 1, N'20160728001', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Lancamentos] ([LanAno], [LanSeq], [LanDes], [LanDat], [LanVal], [UsuCod], [ConCod], [LanTip], [CatCod], [LanFix], [LanAti], [FITID], [LanDet], [LanAutoDebit]) VALUES (2016, 26, N'RSHOP-SUPERMERCAD-29/07 ', CAST(N'2016-07-29 00:00:00.000' AS DateTime), 876.0000, 2, 0, N'S', 0, 0, 1, N'20160729001', N'Importado via OFX em:31/07/2016', 0)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 1, CAST(N'2016-07-05 00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 2, CAST(N'2016-07-13 09:35:28.493' AS DateTime), CAST(N'2016-07-13 09:35:46.530' AS DateTime), 100)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 4, CAST(N'2016-07-05 00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 4, CAST(N'2016-08-05 00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 5, CAST(N'2016-08-11 00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 6, CAST(N'2016-07-05 00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 6, CAST(N'2016-08-05 00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 6, CAST(N'2016-09-05 00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 7, CAST(N'2016-07-18 00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 8, CAST(N'2016-07-01 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.027' AS DateTime), 4626)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 9, CAST(N'2016-07-01 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.250' AS DateTime), 8)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 10, CAST(N'2016-07-05 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.257' AS DateTime), 689)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 11, CAST(N'2016-07-06 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.260' AS DateTime), 7070)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 12, CAST(N'2016-07-06 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.267' AS DateTime), 27651)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 13, CAST(N'2016-07-06 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.270' AS DateTime), 45000)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 14, CAST(N'2016-07-11 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.273' AS DateTime), 93000)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 15, CAST(N'2016-07-12 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.277' AS DateTime), 1264)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 16, CAST(N'2016-07-12 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.280' AS DateTime), 3)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 17, CAST(N'2016-07-13 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.283' AS DateTime), 12341)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 18, CAST(N'2016-07-13 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.283' AS DateTime), 24442)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 19, CAST(N'2016-07-13 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.287' AS DateTime), 5)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 20, CAST(N'2016-07-15 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.290' AS DateTime), 3620)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 21, CAST(N'2016-07-18 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.293' AS DateTime), 39989)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 22, CAST(N'2016-07-18 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.297' AS DateTime), 1)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 23, CAST(N'2016-07-21 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.300' AS DateTime), 700)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 24, CAST(N'2016-07-27 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.300' AS DateTime), 5342)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 25, CAST(N'2016-07-28 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.303' AS DateTime), 2806)
INSERT [dbo].[Parcelas] ([LanAno], [LanSeq], [LanDatPag], [LanEftDat], [LanEftVal]) VALUES (2016, 26, CAST(N'2016-07-29 00:00:00.000' AS DateTime), CAST(N'2016-07-31 11:35:13.310' AS DateTime), 876)
INSERT [dbo].[SAL] ([SalMes], [SalAno], [ConCod], [SaldoMes], [SalDatAtu], [AjusteManual]) VALUES (6, 2016, 1, 0.0000, CAST(N'2016-07-12' AS Date), 2.5000)
INSERT [dbo].[SAL] ([SalMes], [SalAno], [ConCod], [SaldoMes], [SalDatAtu], [AjusteManual]) VALUES (7, 2016, 0, 0.0000, CAST(N'2016-07-31' AS Date), 6601.0000)
INSERT [dbo].[SAL] ([SalMes], [SalAno], [ConCod], [SaldoMes], [SalDatAtu], [AjusteManual]) VALUES (7, 2016, 1, 0.0000, CAST(N'2016-07-15' AS Date), 60.3000)
INSERT [dbo].[SAL] ([SalMes], [SalAno], [ConCod], [SaldoMes], [SalDatAtu], [AjusteManual]) VALUES (7, 2016, 2, 0.0000, CAST(N'2016-07-19' AS Date), -50.7500)
INSERT [dbo].[SAL] ([SalMes], [SalAno], [ConCod], [SaldoMes], [SalDatAtu], [AjusteManual]) VALUES (7, 2016, 3, 0.0000, CAST(N'2016-07-15' AS Date), 500.5000)
INSERT [dbo].[USU] ([UsuCod], [UsuNom], [UsuEml], [UsuSen], [BackgroundImage], [Avatar], [DataCadastro], [DataDesativado], [UsuAdmin]) VALUES (1, N'Washington', N'washingtondacosta@gmail.com', N'3244185981728979115075721453575112', NULL, N'7.jpg', CAST(N'2015-01-01 00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[USU] ([UsuCod], [UsuNom], [UsuEml], [UsuSen], [BackgroundImage], [Avatar], [DataCadastro], [DataDesativado], [UsuAdmin]) VALUES (2, N'teste', N'teste@teste.com', N'3244185981728979115075721453575112', 1, N'no-avatar.jpg', CAST(N'2016-07-12 14:08:07.053' AS DateTime), NULL, 0)
/****** Object:  StoredProcedure [dbo].[getValoresCategoria]    Script Date: 31/07/2016 20:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Washington da Costa
-- Create date: 11/09/2015
-- Description:	Retorna o valor previsto e confirmado de uma categoria
-- =============================================
CREATE PROCEDURE [dbo].[getValoresCategoria] 
	@UsuCod			INT,
	@DataInicio		DATE,
	@DataFim		DATE,
	@Categoria		INT,	
	-- SAÍDA
	@EntradasPrevisto		FLOAT OUTPUT,
	@EntradasConfirmado		FLOAT OUTPUT,
	@SaidasPrevisto			FLOAT OUTPUT,
	@SaidasConfirmado		FLOAT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SET @EntradasPrevisto = 0
	SET @EntradasConfirmado = 0
	SET @SaidasPrevisto = 0
	SET @SaidasConfirmado = 0
		
   SELECT 
		@EntradasPrevisto = SUM(CASE WHEN LanTip = 'E' THEN LanVal ELSE 0 END),
		@EntradasConfirmado = SUM(CASE WHEN ISNULL(LanEftDat,0)<>0 AND LanTip = 'E' THEN LanVal ELSE 0 END),
		@SaidasPrevisto =  SUM(CASE WHEN LanTip = 'S' THEN LanVal ELSE 0 END),
		@SaidasConfirmado =  SUM(CASE WHEN ISNULL(LanEftDat,0)<>0 AND LanTip = 'S' THEN LanVal ELSE 0 END)
   FROM(
		SELECT 
			LanVal,
			LanEftDat,
			LanTip
		FROM Lancamentos JOIN Parcelas ON Lancamentos.LanAno=Parcelas.LanAno AND Lancamentos.LanSeq=Parcelas.LanSeq 
		WHERE 
			UsuCod = @UsuCod
			AND LanDatPag BETWEEN @dataInicio AND @dataFim
			AND (CatCod = @Categoria AND @Categoria > 0)
   )T
END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo usado pelo sistema para não permitir que o usuário exclua a conta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CON', @level2type=N'COLUMN',@level2name=N'ConFix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lançamento ativo?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lancamentos', @level2type=N'COLUMN',@level2name=N'LanAti'
GO
