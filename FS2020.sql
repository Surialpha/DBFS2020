﻿USE [master]
GO
/****** Object:  Database [FabricaSoftware]    Script Date: 12/7/2020 01:21:18 ******/
CREATE DATABASE [FabricaSoftware]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FabricaSoftware', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FabricaSoftware.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FabricaSoftware_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FabricaSoftware_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FabricaSoftware] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FabricaSoftware].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FabricaSoftware] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FabricaSoftware] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FabricaSoftware] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FabricaSoftware] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FabricaSoftware] SET ARITHABORT OFF 
GO
ALTER DATABASE [FabricaSoftware] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FabricaSoftware] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FabricaSoftware] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FabricaSoftware] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FabricaSoftware] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FabricaSoftware] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FabricaSoftware] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FabricaSoftware] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FabricaSoftware] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FabricaSoftware] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FabricaSoftware] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FabricaSoftware] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FabricaSoftware] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FabricaSoftware] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FabricaSoftware] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FabricaSoftware] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FabricaSoftware] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FabricaSoftware] SET RECOVERY FULL 
GO
ALTER DATABASE [FabricaSoftware] SET  MULTI_USER 
GO
ALTER DATABASE [FabricaSoftware] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FabricaSoftware] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FabricaSoftware] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FabricaSoftware] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FabricaSoftware] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FabricaSoftware', N'ON'
GO
ALTER DATABASE [FabricaSoftware] SET QUERY_STORE = OFF
GO
USE [FabricaSoftware]
GO
/****** Object:  Table [dbo].[Adquirir_Servicios]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adquirir_Servicios](
	[id] [int] NOT NULL,
	[nombre] [varchar](200) NOT NULL,
	[descripcion] [varchar](800) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agenda]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agenda](
	[idAgenda] [int] IDENTITY(1,1) NOT NULL,
	[FechaAgenda] [date] NOT NULL,
	[ResponsableAgenda] [int] NOT NULL,
	[ProyectoAgenda] [int] NOT NULL,
	[estadoAgenda] [int] NOT NULL,
	[HoraFinal] [time](7) NOT NULL,
	[Asunto] [varchar](150) NOT NULL,
	[HoraInicio] [time](7) NULL,
	[ActionUser] [varchar](200) NULL,
 CONSTRAINT [PK__Agenda__F7F3D96B9C1DA7C2] PRIMARY KEY CLUSTERED 
(
	[idAgenda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aprendices]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aprendices](
	[id_aprendiz] [int] NOT NULL,
	[inicio_contrato] [date] NULL,
	[fin_contrato] [date] NULL,
	[id_contrato] [int] NULL,
	[descripcion] [varchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_aprendiz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asesores]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asesores](
	[id_asesor] [int] NOT NULL,
	[inicio_contrato] [date] NULL,
	[fin_contrato] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_asesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asignar_Fase]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignar_Fase](
	[id] [int] NOT NULL,
	[id_aprendiz] [int] NULL,
	[id_fase_ciclo] [int] NULL,
	[id_estado] [int] NULL,
	[fecha_asignacion] [date] NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bitacora_Aprendiz]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora_Aprendiz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_aprendiz] [int] NULL,
	[id_bitacora] [int] NULL,
	[fecha_creacion] [date] NULL,
	[archivo] [varchar](250) NULL,
	[descripcion] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bitacora_Asesor]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora_Asesor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_asesor] [int] NULL,
	[id_bitacora] [int] NULL,
	[fecha_creacion] [date] NULL,
	[archivo] [varchar](250) NULL,
	[descripcion] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bitacoras]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacoras](
	[id_bitacora] [int] IDENTITY(1,1) NOT NULL,
	[fecha_creacion] [date] NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_bitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciclos]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciclos](
	[id_ciclo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
	[id_estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ciclo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[id_cliente] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
	[email] [varchar](50) NULL,
	[numero_contacto] [varchar](50) NULL,
	[id_documento] [int] NULL,
	[tipo_cliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Como_Lo_Hacemos]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Como_Lo_Hacemos](
	[id] [int] NOT NULL,
	[descripcion] [varchar](800) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documento]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documento](
	[id_documento] [int] NOT NULL,
	[descripcion] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado_asignacion]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado_asignacion](
	[id_estado] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado_Proyecto]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado_Proyecto](
	[id_estado] [int] NOT NULL,
	[descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado_Solicitud]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado_Solicitud](
	[id_estado] [int] NOT NULL,
	[descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado_Viabilidad]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado_Viabilidad](
	[id_viabilidad] [int] NOT NULL,
	[descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_viabilidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoAgenda]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoAgenda](
	[id] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[id_estado] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados_Ciclos]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados_Ciclos](
	[id_estado] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados_Fases]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados_Fases](
	[id_estado] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fases]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fases](
	[id_fase] [int] NOT NULL,
	[fecha_creacion] [date] NULL,
	[descripcion] [varchar](50) NULL,
	[porcentaje] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_fase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fases_de_Ciclos]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fases_de_Ciclos](
	[id_fase_ciclo] [int] NOT NULL,
	[id_ciclo] [int] NULL,
	[id_fase] [int] NULL,
	[id_estado] [int] NULL,
	[descripcion] [varchar](50) NULL,
	[fecha_creacion] [date] NULL,
	[tiempo_estimado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_fase_ciclo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupo_Aprendices]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo_Aprendices](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_aprendiz] [int] NULL,
	[id_grupo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupos]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupos](
	[id_grupo] [int] IDENTITY(1,1) NOT NULL,
	[id_lider] [int] NULL,
	[descripcion] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_grupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historialGrupos]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historialGrupos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rolUsuario] [varchar](20) NULL,
	[nombreUsuario] [varchar](50) NULL,
	[CorreoUsuario] [varchar](50) NULL,
	[idUsuario] [int] NULL,
	[accion] [varchar](20) NULL,
	[idResponsable] [int] NULL,
	[fechaAccion] [datetime] NULL,
	[idGrupo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Imagenes]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Imagenes](
	[idImage] [int] IDENTITY(1,1) NOT NULL,
	[idTipo] [int] NULL,
	[imageUrl] [varchar](250) NULL,
	[nombreUsuario] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idImage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogAgenda]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogAgenda](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idAgenda] [int] NOT NULL,
	[fechaAgenda] [varchar](20) NOT NULL,
	[Horario] [varchar](20) NOT NULL,
	[descripcion] [varchar](150) NOT NULL,
	[ResponsableAgenda] [int] NOT NULL,
	[ProyectoAgenda] [int] NOT NULL,
	[clienteAgenda] [int] NOT NULL,
	[asistentes] [varchar](400) NOT NULL,
	[estadoAgenda] [int] NOT NULL,
	[grupoAgenda] [int] NOT NULL,
	[idResponsable] [varchar](200) NULL,
	[fechaLog] [datetime] NULL,
	[Asunto] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modulos]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modulos](
	[id_modulo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_modulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nuestros_Servicios]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nuestros_Servicios](
	[id] [int] NOT NULL,
	[descripcion] [varchar](800) NULL,
	[nombre] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operaciones]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operaciones](
	[id_operacion] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
	[id_modulo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_operacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[documento] [int] NOT NULL,
	[nombres] [varchar](50) NULL,
	[apellidos] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
	[numero_contacto] [varchar](50) NULL,
	[id_documento] [int] NULL,
	[id_sexo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pqrs]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pqrs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[correo] [varchar](50) NOT NULL,
	[nombre] [varchar](80) NOT NULL,
	[descripcion] [varchar](450) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyecto]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyecto](
	[id_proyecto] [int] NOT NULL,
	[fecha_inicio] [date] NULL,
	[fecha_terminación] [date] NULL,
	[alcance] [varchar](500) NULL,
	[archivo] [varchar](500) NULL,
	[id_estado] [int] NULL,
	[id_bitacora] [int] NULL,
	[id_grupo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_proyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quienes_Somos]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quienes_Somos](
	[id] [int] NOT NULL,
	[descripcion] [varchar](800) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol_Operaciones]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol_Operaciones](
	[id] [int] NOT NULL,
	[id_rol] [int] NULL,
	[id_operacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id_rol] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexo]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexo](
	[id_sexo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Solicitud]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Solicitud](
	[id_solicitud] [int] NOT NULL,
	[id_cliente] [int] NULL,
	[id_tipoCliente] [int] NULL,
	[tipo_avance] [varchar](2) NOT NULL,
	[archivo_adjunto] [varchar](250) NULL,
	[nombre_solicitante] [varchar](100) NOT NULL,
	[nombre_empresa] [varchar](100) NOT NULL,
	[contraprestacion] [varchar](250) NOT NULL,
	[fecha_solicitud] [date] NULL,
	[tiempo_estimado] [int] NOT NULL,
	[tema_proyecto] [varchar](500) NOT NULL,
	[grupo_afectado] [int] NOT NULL,
	[descripcion] [varchar](max) NOT NULL,
	[area] [varchar](250) NULL,
	[id_viabilidad] [int] NULL,
	[costo_real] [int] NULL,
	[descripcion_costo] [varchar](500) NULL,
	[id_estado_solicitud] [int] NULL,
	[com_admin] [varchar](350) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_solicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Cliente]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Cliente](
	[id_TipoCliente] [int] NOT NULL,
	[descripcion] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_TipoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Contrato]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Contrato](
	[id_tipo_contrato] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_contrato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Documento]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Documento](
	[id_documento] [int] NOT NULL,
	[descripcion] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Imagen]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Imagen](
	[idTipo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Solicitante]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Solicitante](
	[tipo_solicitante] [int] NOT NULL,
	[descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[tipo_solicitante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 12/7/2020 01:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_usuario] [int] NOT NULL,
	[email] [varchar](50) NULL,
	[hash_password] [varchar](250) NULL,
	[fecha_creacion] [date] NULL,
	[id_rol] [int] NULL,
	[id_estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Adquirir_Servicios] ([id], [nombre], [descripcion]) VALUES (1, N'EMPRESARIOS', N'Como empresario solo debes patrocinar y ceder a los aprendices SENA de la Tecnología en Análisis y Desarrollo de Sistemas de Información, Multimedia o afines al desarrollo de Software, los cuales serán beneficiados en su etapa práctica con contratos de aprendizaje de su cuota regular.')
INSERT [dbo].[Adquirir_Servicios] ([id], [nombre], [descripcion]) VALUES (2, N'OTROS CENTROS SENA', N'La Fábrica de Software tiene proyectos en el modelo SENA proveedor SENA, por medio de patrocinios a los desarrolladores del proyecto o por la modalidad de Producción de Centros')
INSERT [dbo].[Adquirir_Servicios] ([id], [nombre], [descripcion]) VALUES (3, N'SENNOVA', N'La Fábrica de Software tiene proyectos articulados con los semilleros de investigación que hacen parte del sistema SENNOVA a nivel Regional y con proyección Nacional')
GO
INSERT [dbo].[Como_Lo_Hacemos] ([id], [descripcion]) VALUES (1, N'Las metodologías de desarrollo de software son un conjunto de procedimientos, técnicas, procesos, políticos y ayudas a la documentación para el desarrollo de productos de software. Las cuales tienen como finalidad garantizar la eficacia y eficiencia en el proceso de generación de software. ')
GO
INSERT [dbo].[Documento] ([id_documento], [descripcion]) VALUES (1, N'Nit')
INSERT [dbo].[Documento] ([id_documento], [descripcion]) VALUES (2, N'Rut')
INSERT [dbo].[Documento] ([id_documento], [descripcion]) VALUES (3, N'Cedula Ciudadania')
GO
INSERT [dbo].[Estado_Proyecto] ([id_estado], [descripcion]) VALUES (1, N'En Desarrollo')
INSERT [dbo].[Estado_Proyecto] ([id_estado], [descripcion]) VALUES (2, N'Terminado')
INSERT [dbo].[Estado_Proyecto] ([id_estado], [descripcion]) VALUES (3, N'Suspendido')
GO
INSERT [dbo].[Estado_Solicitud] ([id_estado], [descripcion]) VALUES (1, N'Enviado')
INSERT [dbo].[Estado_Solicitud] ([id_estado], [descripcion]) VALUES (2, N'Recibido')
INSERT [dbo].[Estado_Solicitud] ([id_estado], [descripcion]) VALUES (3, N'En Revisión')
INSERT [dbo].[Estado_Solicitud] ([id_estado], [descripcion]) VALUES (4, N'Por Modificar')
INSERT [dbo].[Estado_Solicitud] ([id_estado], [descripcion]) VALUES (5, N'Aprobado')
INSERT [dbo].[Estado_Solicitud] ([id_estado], [descripcion]) VALUES (6, N'Descartado')
GO
INSERT [dbo].[Estado_Viabilidad] ([id_viabilidad], [descripcion]) VALUES (1, N'No asignado')
INSERT [dbo].[Estado_Viabilidad] ([id_viabilidad], [descripcion]) VALUES (2, N'Viable')
INSERT [dbo].[Estado_Viabilidad] ([id_viabilidad], [descripcion]) VALUES (3, N'No Viable')
GO
INSERT [dbo].[EstadoAgenda] ([id], [nombre]) VALUES (1, N'Programada')
INSERT [dbo].[EstadoAgenda] ([id], [nombre]) VALUES (2, N'Cancelada')
INSERT [dbo].[EstadoAgenda] ([id], [nombre]) VALUES (3, N'Completada')
GO
INSERT [dbo].[Estados] ([id_estado], [descripcion]) VALUES (1, N'Activo')
INSERT [dbo].[Estados] ([id_estado], [descripcion]) VALUES (2, N'Inactivo')
GO
INSERT [dbo].[Nuestros_Servicios] ([id], [descripcion], [nombre]) VALUES (1, N'Desarrollamos sistemas de información completos en diferentes arquitecturas con interfaz Web, accesible con cualquier navegador. Sitios Web', N'Sitios Web')
INSERT [dbo].[Nuestros_Servicios] ([id], [descripcion], [nombre]) VALUES (2, N'Desarrollamos sistemas de información completos en diferentes arquitecturas con interfaz Web, accesible con cualquier navegador.', N'Web Services')
INSERT [dbo].[Nuestros_Servicios] ([id], [descripcion], [nombre]) VALUES (3, N'Desarrollamos Data Bases en diferentes motores para almacenar de forma ordenada y accesible la información de proyectos en diferentes arquitecturas. Incursionamos en la investigación para manejo de Big Data, la cual es crítica para los sistemas actuales y futuros.', N'Base de Datos')
INSERT [dbo].[Nuestros_Servicios] ([id], [descripcion], [nombre]) VALUES (4, N'Desarrollamos apps con arquitecturas nativas, responsivas, híbridas o progresivas, según sea la necesidad del proyecto. Contamos con licencias de Desarrollador para uso de la Play Store de Android y la App Store de Apple.', N'Desarrollo Móvil')
GO
INSERT [dbo].[Personas] ([documento], [nombres], [apellidos], [email], [fecha_nacimiento], [numero_contacto], [id_documento], [id_sexo]) VALUES (1, N'LIDER', N'FABRICA', N'admin@fabrica.com', CAST(N'2020-01-01' AS Date), N'0000000', 1, 1)
GO
INSERT [dbo].[Quienes_Somos] ([id], [descripcion]) VALUES (1, N'es un proyecto del Centro de Servicios y Gestión Empresarial mediante el cual se brindan soluciones a necesidades reales del SENA y del entorno empresarial de la Región y el país por medio del desarrollo de sistemas de información que cumplan con las necesidades y expectativas de los clientes, con altos estándares de calidad.

La Fábrica de Software está conformada por un equipo altamente comprometido que se encarga de producir sistemas de información siguiendo los estándares y las metodologías de software más actuales tomando como referencia los marcos ágiles para el desarrollo de Software. Johnatan


')
GO
INSERT [dbo].[Roles] ([id_rol], [descripcion]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([id_rol], [descripcion]) VALUES (2, N'Aprendiz')
INSERT [dbo].[Roles] ([id_rol], [descripcion]) VALUES (3, N'Cliente')
INSERT [dbo].[Roles] ([id_rol], [descripcion]) VALUES (4, N'Asesor')
GO
INSERT [dbo].[Sexo] ([id_sexo], [descripcion]) VALUES (1, N'Masculino')
INSERT [dbo].[Sexo] ([id_sexo], [descripcion]) VALUES (2, N'Femenino')
INSERT [dbo].[Sexo] ([id_sexo], [descripcion]) VALUES (3, N'Sin Definir')
GO
INSERT [dbo].[Tipo_Cliente] ([id_TipoCliente], [descripcion]) VALUES (1, N'Cliente Externo')
INSERT [dbo].[Tipo_Cliente] ([id_TipoCliente], [descripcion]) VALUES (2, N'Cliente SENA')
GO
INSERT [dbo].[Tipo_Contrato] ([id_tipo_contrato], [descripcion]) VALUES (1, N'Pasantias')
INSERT [dbo].[Tipo_Contrato] ([id_tipo_contrato], [descripcion]) VALUES (2, N'Practicas')
GO
INSERT [dbo].[Tipo_Documento] ([id_documento], [descripcion]) VALUES (1, N'Cedula Ciudadania')
INSERT [dbo].[Tipo_Documento] ([id_documento], [descripcion]) VALUES (2, N'RUT')
INSERT [dbo].[Tipo_Documento] ([id_documento], [descripcion]) VALUES (3, N'Tarjeta Identidad')
GO
SET IDENTITY_INSERT [dbo].[Tipo_Imagen] ON 

INSERT [dbo].[Tipo_Imagen] ([idTipo], [descripcion]) VALUES (1, N'Lider Fabrica')
INSERT [dbo].[Tipo_Imagen] ([idTipo], [descripcion]) VALUES (2, N'Asesor')
INSERT [dbo].[Tipo_Imagen] ([idTipo], [descripcion]) VALUES (3, N'Aprendiz')
SET IDENTITY_INSERT [dbo].[Tipo_Imagen] OFF
GO
INSERT [dbo].[Tipo_Solicitante] ([tipo_solicitante], [descripcion]) VALUES (1, N'Empresa')
INSERT [dbo].[Tipo_Solicitante] ([tipo_solicitante], [descripcion]) VALUES (2, N'Persona Natural')
INSERT [dbo].[Tipo_Solicitante] ([tipo_solicitante], [descripcion]) VALUES (3, N'No aplica')
GO
INSERT [dbo].[Usuarios] ([id_usuario], [email], [hash_password], [fecha_creacion], [id_rol], [id_estado]) VALUES (1, N'admin@fabrica.com', N'$s2$16384$8$1$MQXXllvNwNMdhBBgLx8dPXwmv/D007dIl0s89NKoNH8=$zRHhlDOPRyj3tCyUtEOpOy63rEfaxDkq9mvPyIIuFiU=', CAST(N'2020-03-14' AS Date), 1, 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [agregar]    Script Date: 12/7/2020 01:21:19 ******/
ALTER TABLE [dbo].[Personas] ADD  CONSTRAINT [agregar] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [fk_Estado_Agenda] FOREIGN KEY([estadoAgenda])
REFERENCES [dbo].[EstadoAgenda] ([id])
GO
ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [fk_Estado_Agenda]
GO
ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [fk_Proyecto_Agenda] FOREIGN KEY([ProyectoAgenda])
REFERENCES [dbo].[Proyecto] ([id_proyecto])
GO
ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [fk_Proyecto_Agenda]
GO
ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [fk_Responsable] FOREIGN KEY([ResponsableAgenda])
REFERENCES [dbo].[Asesores] ([id_asesor])
GO
ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [fk_Responsable]
GO
ALTER TABLE [dbo].[Aprendices]  WITH CHECK ADD  CONSTRAINT [fk_personas_aprendiz] FOREIGN KEY([id_aprendiz])
REFERENCES [dbo].[Personas] ([documento])
GO
ALTER TABLE [dbo].[Aprendices] CHECK CONSTRAINT [fk_personas_aprendiz]
GO
ALTER TABLE [dbo].[Aprendices]  WITH CHECK ADD  CONSTRAINT [fk_tpcontrato_aprendices] FOREIGN KEY([id_contrato])
REFERENCES [dbo].[Tipo_Contrato] ([id_tipo_contrato])
GO
ALTER TABLE [dbo].[Aprendices] CHECK CONSTRAINT [fk_tpcontrato_aprendices]
GO
ALTER TABLE [dbo].[Asesores]  WITH CHECK ADD  CONSTRAINT [fk_personas_asesores] FOREIGN KEY([id_asesor])
REFERENCES [dbo].[Personas] ([documento])
GO
ALTER TABLE [dbo].[Asesores] CHECK CONSTRAINT [fk_personas_asesores]
GO
ALTER TABLE [dbo].[Asignar_Fase]  WITH CHECK ADD  CONSTRAINT [fk_asignarfase_aprendiz] FOREIGN KEY([id_aprendiz])
REFERENCES [dbo].[Aprendices] ([id_aprendiz])
GO
ALTER TABLE [dbo].[Asignar_Fase] CHECK CONSTRAINT [fk_asignarfase_aprendiz]
GO
ALTER TABLE [dbo].[Asignar_Fase]  WITH CHECK ADD  CONSTRAINT [fk_asignarfase_estado] FOREIGN KEY([id_estado])
REFERENCES [dbo].[Estado_asignacion] ([id_estado])
GO
ALTER TABLE [dbo].[Asignar_Fase] CHECK CONSTRAINT [fk_asignarfase_estado]
GO
ALTER TABLE [dbo].[Asignar_Fase]  WITH CHECK ADD  CONSTRAINT [fk_asignarfase_faseciclo] FOREIGN KEY([id_fase_ciclo])
REFERENCES [dbo].[Fases_de_Ciclos] ([id_fase_ciclo])
GO
ALTER TABLE [dbo].[Asignar_Fase] CHECK CONSTRAINT [fk_asignarfase_faseciclo]
GO
ALTER TABLE [dbo].[Bitacora_Aprendiz]  WITH CHECK ADD  CONSTRAINT [fk_bitapren_aprendiz] FOREIGN KEY([id_aprendiz])
REFERENCES [dbo].[Aprendices] ([id_aprendiz])
GO
ALTER TABLE [dbo].[Bitacora_Aprendiz] CHECK CONSTRAINT [fk_bitapren_aprendiz]
GO
ALTER TABLE [dbo].[Bitacora_Aprendiz]  WITH CHECK ADD  CONSTRAINT [fk_bitapren_bitacoras] FOREIGN KEY([id_bitacora])
REFERENCES [dbo].[Bitacoras] ([id_bitacora])
GO
ALTER TABLE [dbo].[Bitacora_Aprendiz] CHECK CONSTRAINT [fk_bitapren_bitacoras]
GO
ALTER TABLE [dbo].[Bitacora_Asesor]  WITH CHECK ADD  CONSTRAINT [fk_bitapas_bitacoras] FOREIGN KEY([id_bitacora])
REFERENCES [dbo].[Bitacoras] ([id_bitacora])
GO
ALTER TABLE [dbo].[Bitacora_Asesor] CHECK CONSTRAINT [fk_bitapas_bitacoras]
GO
ALTER TABLE [dbo].[Bitacora_Asesor]  WITH CHECK ADD  CONSTRAINT [fk_bitapren_asesor] FOREIGN KEY([id_asesor])
REFERENCES [dbo].[Asesores] ([id_asesor])
GO
ALTER TABLE [dbo].[Bitacora_Asesor] CHECK CONSTRAINT [fk_bitapren_asesor]
GO
ALTER TABLE [dbo].[Ciclos]  WITH CHECK ADD  CONSTRAINT [fk_ciclos_estados] FOREIGN KEY([id_estado])
REFERENCES [dbo].[Estados_Ciclos] ([id_estado])
GO
ALTER TABLE [dbo].[Ciclos] CHECK CONSTRAINT [fk_ciclos_estados]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [fk_tipoci_cliente] FOREIGN KEY([tipo_cliente])
REFERENCES [dbo].[Tipo_Cliente] ([id_TipoCliente])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [fk_tipoci_cliente]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [fk_tipodo_cliente] FOREIGN KEY([id_documento])
REFERENCES [dbo].[Documento] ([id_documento])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [fk_tipodo_cliente]
GO
ALTER TABLE [dbo].[Fases_de_Ciclos]  WITH CHECK ADD  CONSTRAINT [fk_fasesdeciclo_estadosfases] FOREIGN KEY([id_estado])
REFERENCES [dbo].[Estados_Fases] ([id_estado])
GO
ALTER TABLE [dbo].[Fases_de_Ciclos] CHECK CONSTRAINT [fk_fasesdeciclo_estadosfases]
GO
ALTER TABLE [dbo].[Fases_de_Ciclos]  WITH CHECK ADD  CONSTRAINT [fk_fasesdeciclo_fases] FOREIGN KEY([id_fase])
REFERENCES [dbo].[Fases] ([id_fase])
GO
ALTER TABLE [dbo].[Fases_de_Ciclos] CHECK CONSTRAINT [fk_fasesdeciclo_fases]
GO
ALTER TABLE [dbo].[Fases_de_Ciclos]  WITH CHECK ADD  CONSTRAINT [fk_fasesdeciclos_ciclos] FOREIGN KEY([id_fase])
REFERENCES [dbo].[Ciclos] ([id_ciclo])
GO
ALTER TABLE [dbo].[Fases_de_Ciclos] CHECK CONSTRAINT [fk_fasesdeciclos_ciclos]
GO
ALTER TABLE [dbo].[Grupo_Aprendices]  WITH CHECK ADD  CONSTRAINT [fk_gruap_aprendices] FOREIGN KEY([id_aprendiz])
REFERENCES [dbo].[Aprendices] ([id_aprendiz])
GO
ALTER TABLE [dbo].[Grupo_Aprendices] CHECK CONSTRAINT [fk_gruap_aprendices]
GO
ALTER TABLE [dbo].[Grupo_Aprendices]  WITH CHECK ADD  CONSTRAINT [fk_gruap_grupos] FOREIGN KEY([id_grupo])
REFERENCES [dbo].[Grupos] ([id_grupo])
GO
ALTER TABLE [dbo].[Grupo_Aprendices] CHECK CONSTRAINT [fk_gruap_grupos]
GO
ALTER TABLE [dbo].[Grupos]  WITH CHECK ADD  CONSTRAINT [fk_asesores_grupos] FOREIGN KEY([id_lider])
REFERENCES [dbo].[Asesores] ([id_asesor])
GO
ALTER TABLE [dbo].[Grupos] CHECK CONSTRAINT [fk_asesores_grupos]
GO
ALTER TABLE [dbo].[Imagenes]  WITH CHECK ADD  CONSTRAINT [fk_tipo] FOREIGN KEY([idTipo])
REFERENCES [dbo].[Tipo_Imagen] ([idTipo])
GO
ALTER TABLE [dbo].[Imagenes] CHECK CONSTRAINT [fk_tipo]
GO
ALTER TABLE [dbo].[Operaciones]  WITH CHECK ADD  CONSTRAINT [fk_modulos_operaciones] FOREIGN KEY([id_modulo])
REFERENCES [dbo].[Modulos] ([id_modulo])
GO
ALTER TABLE [dbo].[Operaciones] CHECK CONSTRAINT [fk_modulos_operaciones]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [fk_sexo_personas] FOREIGN KEY([id_sexo])
REFERENCES [dbo].[Sexo] ([id_sexo])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [fk_sexo_personas]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [fk_tipodo_personas] FOREIGN KEY([id_documento])
REFERENCES [dbo].[Tipo_Documento] ([id_documento])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [fk_tipodo_personas]
GO
ALTER TABLE [dbo].[Proyecto]  WITH CHECK ADD  CONSTRAINT [fk_bitacoras_proyectofa] FOREIGN KEY([id_bitacora])
REFERENCES [dbo].[Bitacoras] ([id_bitacora])
GO
ALTER TABLE [dbo].[Proyecto] CHECK CONSTRAINT [fk_bitacoras_proyectofa]
GO
ALTER TABLE [dbo].[Proyecto]  WITH CHECK ADD  CONSTRAINT [fk_estadopro_proyectofa] FOREIGN KEY([id_estado])
REFERENCES [dbo].[Estado_Proyecto] ([id_estado])
GO
ALTER TABLE [dbo].[Proyecto] CHECK CONSTRAINT [fk_estadopro_proyectofa]
GO
ALTER TABLE [dbo].[Proyecto]  WITH CHECK ADD  CONSTRAINT [fk_grupos_proyectofa] FOREIGN KEY([id_grupo])
REFERENCES [dbo].[Grupos] ([id_grupo])
GO
ALTER TABLE [dbo].[Proyecto] CHECK CONSTRAINT [fk_grupos_proyectofa]
GO
ALTER TABLE [dbo].[Proyecto]  WITH CHECK ADD  CONSTRAINT [fk_proyectocli_proyectofa] FOREIGN KEY([id_proyecto])
REFERENCES [dbo].[Solicitud] ([id_solicitud])
GO
ALTER TABLE [dbo].[Proyecto] CHECK CONSTRAINT [fk_proyectocli_proyectofa]
GO
ALTER TABLE [dbo].[Rol_Operaciones]  WITH CHECK ADD  CONSTRAINT [fk_operaciones_rolop] FOREIGN KEY([id_operacion])
REFERENCES [dbo].[Operaciones] ([id_operacion])
GO
ALTER TABLE [dbo].[Rol_Operaciones] CHECK CONSTRAINT [fk_operaciones_rolop]
GO
ALTER TABLE [dbo].[Rol_Operaciones]  WITH CHECK ADD  CONSTRAINT [fk_rol_rolop] FOREIGN KEY([id_rol])
REFERENCES [dbo].[Roles] ([id_rol])
GO
ALTER TABLE [dbo].[Rol_Operaciones] CHECK CONSTRAINT [fk_rol_rolop]
GO
ALTER TABLE [dbo].[Solicitud]  WITH CHECK ADD  CONSTRAINT [fk_cliente_solicitud] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[Solicitud] CHECK CONSTRAINT [fk_cliente_solicitud]
GO
ALTER TABLE [dbo].[Solicitud]  WITH CHECK ADD  CONSTRAINT [fk_estadosoli_solicitud] FOREIGN KEY([id_estado_solicitud])
REFERENCES [dbo].[Estado_Solicitud] ([id_estado])
GO
ALTER TABLE [dbo].[Solicitud] CHECK CONSTRAINT [fk_estadosoli_solicitud]
GO
ALTER TABLE [dbo].[Solicitud]  WITH CHECK ADD  CONSTRAINT [fk_estadovia_solicitud] FOREIGN KEY([id_viabilidad])
REFERENCES [dbo].[Estado_Viabilidad] ([id_viabilidad])
GO
ALTER TABLE [dbo].[Solicitud] CHECK CONSTRAINT [fk_estadovia_solicitud]
GO
ALTER TABLE [dbo].[Solicitud]  WITH CHECK ADD  CONSTRAINT [fk_tipocli_solicitud] FOREIGN KEY([id_tipoCliente])
REFERENCES [dbo].[Tipo_Solicitante] ([tipo_solicitante])
GO
ALTER TABLE [dbo].[Solicitud] CHECK CONSTRAINT [fk_tipocli_solicitud]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [fk_estados_usuarios] FOREIGN KEY([id_estado])
REFERENCES [dbo].[Estados] ([id_estado])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [fk_estados_usuarios]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [fk_roles_usuarios] FOREIGN KEY([id_rol])
REFERENCES [dbo].[Roles] ([id_rol])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [fk_roles_usuarios]
GO
/****** Object:  Trigger [dbo].[ModificacionAgendasLog]    Script Date: 12/7/2020 01:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[ModificacionAgendasLog]
ON [dbo].[Agenda]
AFTER UPDATE
AS
	DECLARE @idAgenda int = (select [idAgenda] from inserted)
	DECLARE @FechaAgenda date = (select [FechaAgenda] from inserted)
	DECLARE @ResponsableAgenda int = (select [ResponsableAgenda] from inserted)
	DECLARE @ProyectoAgenda int = (select [ProyectoAgenda] from inserted)
	DECLARE @estadoAgenda int = (select [estadoAgenda] from inserted)
	DECLARE @HoraFinal varchar(20) = (select [HoraFinal] from inserted)
	DECLARE @HoraInicio varchar(20) = (select [HoraInicio] from inserted)
	DECLARE @Asunto VARCHAR(100) = (select [Asunto] from inserted)
	DECLARE @Horario varchar(max) = (SELECT top(1) value FROM STRING_SPLIT ( @HoraInicio , '.' )) + ' - ' + (SELECT top(1) value FROM STRING_SPLIT ( @HoraFinal , '.' ))
	DECLARE @clienteAgenda int = (SELECT c.[id_cliente] FROM [dbo].[Solicitud] s inner join [dbo].[Cliente] c on s.[id_cliente] = c.[id_cliente] where s.[id_solicitud] = @ProyectoAgenda)
	DECLARE @grupoAgenda int = (SELECT [id_grupo] FROM [dbo].[Proyecto] WHERE [id_proyecto] = @ProyectoAgenda)
	DECLARE @idResponsable varchar(max) = (select [ActionUser] from inserted)
	DECLARE @descripcion varchar(max)
	DECLARE @fechaLog datetime = SYSDATETIME()
	--SE CUENTA EL NÚMERO DE REGISTROS
	DECLARE @numero int = (SELECT  COUNT(*) FROM  [dbo].[Proyecto] p
	  INNER JOIN [dbo].[Grupos] g on p.id_grupo = g.id_grupo
	  INNER JOIN [dbo].[Grupo_Aprendices] ga on g.id_grupo = ga.id_grupo
	  INNER JOIN [dbo].[Personas] per on ga.id_aprendiz = per.documento
	WHERE p.id_proyecto = @ProyectoAgenda)

	  -- SE CREA LA TABLA 
	DECLARE @TABLE TABLE(ID INT IDENTITY(1,1), ASIS VARCHAR(MAX))

	-- SE INSERTAN LOS DATOS EN LA TABLA TEMPORAL
	INSERT INTO @TABLE(ASIS) SELECT  CAST(ga.id_aprendiz AS varchar(MAX)) + ' - '+ per.nombres +' '+ per.apellidos FROM  [dbo].[Proyecto] p
	  INNER JOIN [dbo].[Grupos] g on p.id_grupo = g.id_grupo
	  INNER JOIN [dbo].[Grupo_Aprendices] ga on g.id_grupo = ga.id_grupo
	  INNER JOIN [dbo].[Personas] per on ga.id_aprendiz = per.documento
	WHERE p.id_proyecto = @ProyectoAgenda

	--SE INICIALIZA LA VARIABLE CON EL ASESOR LIDER DEL GRUPO
	DECLARE @asistentes VARCHAR(MAX) = (SELECT CAST(G.id_lider AS varchar(MAX)) + ' - '+ per.nombres +' '+ per.apellidos FROM  [dbo].[Proyecto] p
	  INNER JOIN [dbo].[Grupos] g on p.id_grupo = g.id_grupo
	  INNER JOIN [dbo].[Personas] per on G.id_lider = per.documento
	WHERE p.id_proyecto = @ProyectoAgenda)

	
	WHILE @numero > 0
	BEGIN
		DECLARE @IDCONTACT VARCHAR(MAX) = (SELECT TOP(1) ID FROM @TABLE ORDER BY ID)
		DECLARE @CONTACT VARCHAR(MAX) = (SELECT TOP(1) ASIS FROM @TABLE ORDER BY ID)
		SET @asistentes = @asistentes + ', ' + @CONTACT
		DELETE @TABLE WHERE ID = @IDCONTACT
		SET @numero = (SELECT COUNT(*) FROM @TABLE)
	END

	IF @idResponsable = 'Sistema'
	BEGIN
		SET @descripcion = 'Completada automáticamente por el sistema'
	END
	ELSE
	BEGIN
		IF @estadoAgenda = 3
		BEGIN
			SET @descripcion = 'Completada manualmente'
		END
		ELSE
		BEGIN
			IF @estadoAgenda = 1
			BEGIN
				SET @descripcion = 'Agenda modificada'
			END
			ELSE
			BEGIN
				SET @descripcion = 'Cancelada manualmente'
			END
		END
	END
	

	INSERT INTO [dbo].[LogAgenda]([idAgenda],[fechaAgenda],[Horario],[descripcion],[ResponsableAgenda],[ProyectoAgenda],[clienteAgenda],[asistentes],[estadoAgenda],[grupoAgenda],[idResponsable],[fechaLog],[Asunto])
	VALUES (@idAgenda,@FechaAgenda,@Horario,@descripcion,@ResponsableAgenda,@ProyectoAgenda,@clienteAgenda,@asistentes,@estadoAgenda,@grupoAgenda,@idResponsable,@fechaLog,@Asunto)
GO
ALTER TABLE [dbo].[Agenda] ENABLE TRIGGER [ModificacionAgendasLog]
GO
/****** Object:  Trigger [dbo].[RegistroAgendasLog]    Script Date: 12/7/2020 01:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[RegistroAgendasLog]
ON [dbo].[Agenda]
AFTER  INSERT
AS
	DECLARE @idAgenda int = (select [idAgenda] from inserted)
	DECLARE @FechaAgenda date = (select [FechaAgenda] from inserted)
	DECLARE @ResponsableAgenda int = (select [ResponsableAgenda] from inserted)
	DECLARE @ProyectoAgenda int = (select [ProyectoAgenda] from inserted)
	DECLARE @estadoAgenda int = (select [estadoAgenda] from inserted)
	DECLARE @HoraFinal varchar(20) = (select [HoraFinal] from inserted)
	DECLARE @HoraInicio varchar(20) = (select [HoraInicio] from inserted)
	DECLARE @Asunto VARCHAR(100) = (select [Asunto] from inserted)
	DECLARE @Horario varchar(max) = (SELECT top(1) value FROM STRING_SPLIT ( @HoraInicio , '.' )) + ' - ' + (SELECT top(1) value FROM STRING_SPLIT ( @HoraFinal , '.' ))
	DECLARE @clienteAgenda int = (SELECT c.[id_cliente] FROM [dbo].[Solicitud] s inner join [dbo].[Cliente] c on s.[id_cliente] = c.[id_cliente] where s.[id_solicitud] = @ProyectoAgenda)
	DECLARE @grupoAgenda int = (SELECT [id_grupo] FROM [dbo].[Proyecto] WHERE [id_proyecto] = @ProyectoAgenda)
	DECLARE @idResponsable varchar(max) = (select [ActionUser] from inserted)
	DECLARE @descripcion varchar(max) = 'Registro de agenda'
	DECLARE @fechaLog datetime = SYSDATETIME()
	--SE CUENTA EL NÚMERO DE REGISTROS
	DECLARE @numero int = (SELECT  COUNT(*) FROM  [dbo].[Proyecto] p
	  INNER JOIN [dbo].[Grupos] g on p.id_grupo = g.id_grupo
	  INNER JOIN [dbo].[Grupo_Aprendices] ga on g.id_grupo = ga.id_grupo
	  INNER JOIN [dbo].[Personas] per on ga.id_aprendiz = per.documento
	WHERE p.id_proyecto = @ProyectoAgenda)

	  -- SE CREA LA TABLA 
	DECLARE @TABLE TABLE(ID INT IDENTITY(1,1), ASIS VARCHAR(MAX))

	-- SE INSERTAN LOS DATOS EN LA TABLA TEMPORAL
	INSERT INTO @TABLE(ASIS) SELECT  CAST(ga.id_aprendiz AS varchar(MAX)) + ' - '+ per.nombres +' '+ per.apellidos FROM  [dbo].[Proyecto] p
	  INNER JOIN [dbo].[Grupos] g on p.id_grupo = g.id_grupo
	  INNER JOIN [dbo].[Grupo_Aprendices] ga on g.id_grupo = ga.id_grupo
	  INNER JOIN [dbo].[Personas] per on ga.id_aprendiz = per.documento
	WHERE p.id_proyecto = @ProyectoAgenda

	--SE INICIALIZA LA VARIABLE CON EL ASESOR LIDER DEL GRUPO
	DECLARE @asistentes VARCHAR(MAX) = (SELECT CAST(G.id_lider AS varchar(MAX)) + ' - '+ per.nombres +' '+ per.apellidos FROM  [dbo].[Proyecto] p
	  INNER JOIN [dbo].[Grupos] g on p.id_grupo = g.id_grupo
	  INNER JOIN [dbo].[Personas] per on G.id_lider = per.documento
	WHERE p.id_proyecto = @ProyectoAgenda)

	
	WHILE @numero > 0
	BEGIN
		DECLARE @IDCONTACT VARCHAR(MAX) = (SELECT TOP(1) ID FROM @TABLE ORDER BY ID)
		DECLARE @CONTACT VARCHAR(MAX) = (SELECT TOP(1) ASIS FROM @TABLE ORDER BY ID)
		SET @asistentes = @asistentes + ', ' + @CONTACT
		DELETE @TABLE WHERE ID = @IDCONTACT
		SET @numero = (SELECT COUNT(*) FROM @TABLE)
	END

	INSERT INTO [dbo].[LogAgenda]([idAgenda],[fechaAgenda],[Horario],[descripcion],[ResponsableAgenda],[ProyectoAgenda],[clienteAgenda],[asistentes],[estadoAgenda],[grupoAgenda],[idResponsable],[fechaLog],[Asunto])
	VALUES (@idAgenda,@FechaAgenda,@Horario,@descripcion,@ResponsableAgenda,@ProyectoAgenda,@clienteAgenda,@asistentes,@estadoAgenda,@grupoAgenda,@idResponsable,@fechaLog,@Asunto)
GO
ALTER TABLE [dbo].[Agenda] ENABLE TRIGGER [RegistroAgendasLog]
GO
USE [master]
GO
ALTER DATABASE [FabricaSoftware] SET  READ_WRITE 
GO
