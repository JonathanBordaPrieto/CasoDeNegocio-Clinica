USE [master]
GO
/****** Object:  Database [BD_ClinicaImperial]    Script Date: 9/10/2022 7:32:05 p. m. ******/
CREATE DATABASE [BD_ClinicaImperial]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_ClinicaImperial', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.CLINICAIMPERIAL\MSSQL\DATA\BD_ClinicaImperial.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_ClinicaImperial_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.CLINICAIMPERIAL\MSSQL\DATA\BD_ClinicaImperial_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BD_ClinicaImperial] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_ClinicaImperial].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_ClinicaImperial] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BD_ClinicaImperial] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_ClinicaImperial] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_ClinicaImperial] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BD_ClinicaImperial] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_ClinicaImperial] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BD_ClinicaImperial] SET  MULTI_USER 
GO
ALTER DATABASE [BD_ClinicaImperial] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_ClinicaImperial] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_ClinicaImperial] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_ClinicaImperial] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD_ClinicaImperial] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD_ClinicaImperial] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BD_ClinicaImperial] SET QUERY_STORE = OFF
GO
USE [BD_ClinicaImperial]
GO
/****** Object:  User [jonathanb]    Script Date: 9/10/2022 7:32:05 p. m. ******/
CREATE USER [jonathanb] FOR LOGIN [jonathanb] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [fhernandez]    Script Date: 9/10/2022 7:32:05 p. m. ******/
CREATE USER [fhernandez] FOR LOGIN [fhernandez] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [jonathanb]
GO
ALTER ROLE [db_owner] ADD MEMBER [fhernandez]
GO
/****** Object:  Table [dbo].[Calendario]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendario](
	[id_calendario] [char](5) NOT NULL,
	[Dispon_especialist] [char](10) NULL,
	[fecha_programada] [date] NULL,
	[hora_programada] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_calendario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cirugia]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cirugia](
	[id_cirugia] [char](5) NOT NULL,
	[fk_id_tipo_evento] [char](5) NULL,
	[fecha_cirugia] [date] NULL,
	[hora_cirugia] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cirugia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[id_ciudad] [char](5) NOT NULL,
	[ciudad] [char](50) NOT NULL,
	[cod_postal] [char](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consulta_externa]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consulta_externa](
	[id_consulta_externa] [char](5) NOT NULL,
	[descripcion] [char](50) NULL,
	[especificaciones] [char](50) NULL,
	[justifficacion] [char](50) NULL,
	[motiv_consulta] [char](50) NULL,
	[numero_orden] [char](10) NULL,
	[fk_id_calendario] [char](5) NULL,
	[fk_estado_cita] [char](5) NULL,
	[fk_id_consultorio] [char](5) NULL,
	[fk_tipo_evento] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_consulta_externa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consultorio]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consultorio](
	[id_consultorio] [char](5) NOT NULL,
	[descrip_consultorio] [char](10) NULL,
	[fk_id_estado_consultorio] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_consultorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contabilidad]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contabilidad](
	[id_contabilidad] [char](5) NOT NULL,
	[concepto] [char](100) NULL,
	[cost_fijos] [real] NULL,
	[cost_variab] [real] NULL,
	[id_nomina] [char](50) NULL,
	[ingresos] [real] NULL,
	[egresos] [real] NULL,
	[fk_id_factura] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_contabilidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Control_vacuna]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Control_vacuna](
	[id_control_vacuna] [char](5) NOT NULL,
	[fk_id_vacuna] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_control_vacuna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Convenios]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Convenios](
	[id_convenio] [char](5) NOT NULL,
	[plan_conv] [char](20) NULL,
	[fk_id_tipo_convenio] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_convenio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_factura]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_factura](
	[id_detalle] [char](5) NOT NULL,
	[fk_id_factura] [char](5) NULL,
	[detalle] [char](50) NULL,
	[fk_id_presentacion] [char](5) NULL,
	[fk_id_ingreso_paciente] [char](5) NULL,
	[fk_id_salida_paciente] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diagnostico]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagnostico](
	[id_diagnostico] [char](5) NOT NULL,
	[fk_doc_paciente] [char](20) NOT NULL,
	[causa] [char](50) NOT NULL,
	[origen] [char](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_diagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entrada_personal]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrada_personal](
	[id_entrada_personal] [char](5) NOT NULL,
	[hora_entrada_personal] [time](7) NULL,
	[fecha_entrada_personal] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_entrada_personal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Est_hospitaliza]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Est_hospitaliza](
	[id_est_hosp] [char](5) NOT NULL,
	[descrip_est_hospit] [char](50) NOT NULL,
	[document_visit] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_est_hosp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Est_medicamento]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Est_medicamento](
	[id_est_medicam] [char](5) NOT NULL,
	[descrip_est_medic] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_est_medicam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estad_consult]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estad_consult](
	[id_estado_consultorio] [char](5) NOT NULL,
	[est_consultorio] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado_consultorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado_cita]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado_cita](
	[id_estado_cita] [char](5) NOT NULL,
	[descrip_est_cita] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado_cita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado_vacuna]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado_vacuna](
	[id_estado_vacuna] [char](5) NOT NULL,
	[descrip_est_vac] [char](50) NULL,
	[id_doc_personal] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado_vacuna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evento](
	[id_evento] [char](5) NOT NULL,
	[fk_doc_paciente] [char](20) NULL,
	[fk_id_tipo_evento] [char](5) NULL,
	[fk_Id_observ_paciente] [char](5) NULL,
	[fk_id_incapacidad] [char](5) NULL,
	[fk_id_tarifa] [char](5) NULL,
	[fk_id_tipo_afiliacion] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_evento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturacion]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturacion](
	[id_factura] [char](5) NOT NULL,
	[fk_doc_paciente] [char](20) NULL,
	[fk_id_tipo_convenio] [char](5) NULL,
	[valor] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formula_medica]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formula_medica](
	[Id_formula] [char](5) NOT NULL,
	[fk_id_evento] [char](5) NULL,
	[fecha] [date] NULL,
	[dosis] [char](20) NULL,
	[cantidad] [char](5) NULL,
	[fk_id_medicam] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_formula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[id_genero] [char](5) NOT NULL,
	[descripcion_genero] [char](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospitalizacion]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospitalizacion](
	[id_hospitalizacion] [char](5) NOT NULL,
	[fk_Id_observ_paciente] [char](50) NOT NULL,
	[fk_doc_paciente] [char](20) NOT NULL,
	[fk_id_tipo_cama] [char](5) NOT NULL,
	[fk_id_est_hosp] [char](5) NULL,
	[fk_document_visit] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_hospitalizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Incapacidad]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Incapacidad](
	[id_incapacidad] [char](5) NOT NULL,
	[fecha_expedicion] [date] NULL,
	[origen] [char](50) NULL,
	[dias] [int] NULL,
	[fecha_final] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_incapacidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingreso_paciente]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingreso_paciente](
	[id_ingreso_paciente] [char](5) NOT NULL,
	[fk_doc_paciente] [char](20) NULL,
	[fecha_entrada] [date] NULL,
	[hora_entrada] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ingreso_paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[id_inventario] [char](5) NOT NULL,
	[cantidad_medicam] [char](3) NULL,
	[lote_medicamento] [char](5) NULL,
	[fecha_vencimiento] [date] NULL,
	[fk_id_proveedor] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Laboratorio]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laboratorio](
	[id_laboratorio] [char](5) NOT NULL,
	[fk_id_tipo_evento] [char](5) NULL,
	[fecha_toma_lab] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_laboratorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicamento]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamento](
	[id_medicam] [char](5) NOT NULL,
	[nombre_medicamento] [char](50) NULL,
	[marca_medicamento] [char](50) NULL,
	[fk_id_est_medicam] [char](5) NULL,
	[fk_id_inventario] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_medicam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicamento_presentac]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamento_presentac](
	[id_med__presentacion] [char](5) NOT NULL,
	[fk_id_presentacion] [char](5) NULL,
	[fk_id_medicam] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_med__presentacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nomina]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nomina](
	[id_nomina] [char](5) NOT NULL,
	[cargo] [char](50) NULL,
	[periodo] [date] NULL,
	[fecha_pago] [date] NULL,
	[descuentos] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_nomina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Observacion_Paciente]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Observacion_Paciente](
	[Id_observ_paciente] [char](5) NOT NULL,
	[detalle] [char](50) NULL,
	[obs_especialista] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_observ_paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacientes](
	[doc_paciente] [char](20) NOT NULL,
	[fk_tipo_documento] [char](5) NOT NULL,
	[nombres_paciente] [char](50) NOT NULL,
	[apellidos_paciente] [char](50) NOT NULL,
	[email_paciente] [char](50) NOT NULL,
	[fk_id_tipo_afiliacion] [char](5) NOT NULL,
	[fk_id_genero] [char](5) NOT NULL,
	[fecha_nacimiento] [date] NULL,
	[edad_paciente] [char](3) NOT NULL,
	[telefono_paciente] [char](10) NOT NULL,
	[direc_paciente] [char](50) NOT NULL,
	[talla_paciente] [real] NOT NULL,
	[peso_paciente] [real] NOT NULL,
	[fk_Id_tipo_rh] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[doc_paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personal](
	[id_doc_personal] [varchar](5) NOT NULL,
	[fk_tipo_documento] [char](5) NOT NULL,
	[nomb_personal] [char](30) NOT NULL,
	[apelli_personal] [char](30) NOT NULL,
	[direcc_personal] [char](50) NULL,
	[fk_id_sede] [char](5) NOT NULL,
	[fecha_nacimiento_personal] [date] NOT NULL,
	[email_personal] [char](50) NOT NULL,
	[fk_id_tipo_persona] [char](5) NOT NULL,
	[especialidad] [char](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_doc_personal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Presentacion]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presentacion](
	[id_presentacion] [char](5) NOT NULL,
	[nombre_presentacion] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_presentacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[id_proveedor] [char](5) NOT NULL,
	[nomb_proveedor] [char](50) NULL,
	[fk_id_tipo_proveedor] [char](5) NULL,
	[direcc_proveedor] [char](50) NULL,
	[telefono] [char](10) NULL,
	[persona_contacto] [char](50) NULL,
	[email_proveedor] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Radiologia]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Radiologia](
	[id_radiologia] [char](5) NOT NULL,
	[detalle] [char](50) NULL,
	[fk_id_tipo_evento] [char](5) NULL,
	[fecha_toma_rad] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_radiologia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salida_paciente]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salida_paciente](
	[id_ingreso_egreso] [char](5) NOT NULL,
	[fecha_salida] [date] NULL,
	[hora_salida] [time](7) NULL,
	[fk_id_ingreso_paciente] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ingreso_egreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salida_personal]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salida_personal](
	[id_salida_personal] [char](5) NOT NULL,
	[hora_salida_personal] [time](7) NULL,
	[fecha_salida_personal] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_salida_personal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sedes]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sedes](
	[id_sede] [char](5) NOT NULL,
	[nom_sede] [char](50) NOT NULL,
	[fk_id_ciudad] [char](5) NOT NULL,
	[direc_sede] [char](5) NULL,
	[tel_sede] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios_urgencia]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios_urgencia](
	[id_servicio_urgencia] [char](5) NOT NULL,
	[fk_id_tipo_evento] [char](5) NULL,
	[detalle_servicio] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_servicio_urgencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subdireccion]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subdireccion](
	[id_subdireccion] [char](5) NOT NULL,
	[detalle_subdireccion] [char](50) NULL,
	[fk_id_tipo_subdireccion] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_subdireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarifa]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarifa](
	[id_tarifa] [char](5) NOT NULL,
	[detalle_tar] [char](10) NULL,
	[fk_id_tipo_tarifa] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tarifa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Afiliacion]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Afiliacion](
	[id_tipo_afiliacion] [char](5) NOT NULL,
	[detalle_afiliacion] [char](50) NULL,
	[fk_id_convenio] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_afiliacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_cama]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_cama](
	[id_tipo_cama] [char](5) NOT NULL,
	[Detalle] [char](50) NULL,
	[numero_cama] [char](10) NULL,
	[piso] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_cama] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_contrato]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_contrato](
	[id_tipo_contrato] [char](5) NOT NULL,
	[detalle_cont] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_contrato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_convenio]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_convenio](
	[id_tipo_convenio] [char](5) NOT NULL,
	[detalle_tip_conv] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_convenio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_documento]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_documento](
	[tipo_documento] [char](5) NOT NULL,
	[Detalle_tipo_documento] [char](20) NOT NULL,
 CONSTRAINT [PK_Tipo_documento] PRIMARY KEY CLUSTERED 
(
	[tipo_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_empleado]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_empleado](
	[id_tipo_empleado] [char](5) NOT NULL,
	[descrip_cargo] [char](50) NOT NULL,
	[fk_id_tipo_subdireccion] [char](5) NOT NULL,
	[fk_id_tipo_contrato] [char](5) NOT NULL,
	[fk_id_turno] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_evento]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_evento](
	[id_tipo_evento] [char](5) NOT NULL,
	[detalle_event] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_evento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_personal]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_personal](
	[id_tipo_persona] [char](5) NOT NULL,
	[tipo_personal] [char](50) NOT NULL,
	[fk_id_tipo_empleado] [char](5) NOT NULL,
	[fk_id_nomina] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_proveedor]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_proveedor](
	[id_tipo_proveedor] [char](5) NOT NULL,
	[tipo_proveedor] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_RH]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_RH](
	[id_tipo_rh] [char](2) NOT NULL,
	[descrip_tipo_rh] [char](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_rh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_subdireccion]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_subdireccion](
	[id_tipo_subdireccion] [char](5) NOT NULL,
	[Detalle_tipo_subd] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_subdireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_tarifa]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_tarifa](
	[id_tipo_tarifa] [char](5) NOT NULL,
	[detalle_tip_tar] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_tarifa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turnos]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turnos](
	[id_turno] [char](5) NOT NULL,
	[fk_id_entrada_personal] [char](5) NULL,
	[fk_id_salida_personal] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_turno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacuna]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacuna](
	[id_vacuna] [char](5) NOT NULL,
	[nombre_vacuna] [char](50) NULL,
	[descripcion_vacuna] [char](50) NULL,
	[fk_id_estado_vacuna] [char](5) NULL,
	[fk_id_presentacion] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_vacuna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Visitantes]    Script Date: 9/10/2022 7:32:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visitantes](
	[document_visit] [char](20) NOT NULL,
	[tipo_doc] [char](2) NOT NULL,
	[nombre_vis] [char](50) NOT NULL,
	[apelli_vis] [char](50) NOT NULL,
	[doc_paciente] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[document_visit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cirugia]  WITH CHECK ADD  CONSTRAINT [FK_Cirugia_Tipo_evento] FOREIGN KEY([fk_id_tipo_evento])
REFERENCES [dbo].[Tipo_evento] ([id_tipo_evento])
GO
ALTER TABLE [dbo].[Cirugia] CHECK CONSTRAINT [FK_Cirugia_Tipo_evento]
GO
ALTER TABLE [dbo].[Consulta_externa]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_externa_Calendario] FOREIGN KEY([fk_id_calendario])
REFERENCES [dbo].[Calendario] ([id_calendario])
GO
ALTER TABLE [dbo].[Consulta_externa] CHECK CONSTRAINT [FK_Consulta_externa_Calendario]
GO
ALTER TABLE [dbo].[Consulta_externa]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_externa_Consultorio] FOREIGN KEY([fk_id_consultorio])
REFERENCES [dbo].[Consultorio] ([id_consultorio])
GO
ALTER TABLE [dbo].[Consulta_externa] CHECK CONSTRAINT [FK_Consulta_externa_Consultorio]
GO
ALTER TABLE [dbo].[Consulta_externa]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_externa_Estado_cita] FOREIGN KEY([fk_estado_cita])
REFERENCES [dbo].[Estado_cita] ([id_estado_cita])
GO
ALTER TABLE [dbo].[Consulta_externa] CHECK CONSTRAINT [FK_Consulta_externa_Estado_cita]
GO
ALTER TABLE [dbo].[Consulta_externa]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_externa_Tipo_evento] FOREIGN KEY([fk_tipo_evento])
REFERENCES [dbo].[Tipo_evento] ([id_tipo_evento])
GO
ALTER TABLE [dbo].[Consulta_externa] CHECK CONSTRAINT [FK_Consulta_externa_Tipo_evento]
GO
ALTER TABLE [dbo].[Consultorio]  WITH CHECK ADD  CONSTRAINT [FK_Consultorio_Estad_consult] FOREIGN KEY([fk_id_estado_consultorio])
REFERENCES [dbo].[Estad_consult] ([id_estado_consultorio])
GO
ALTER TABLE [dbo].[Consultorio] CHECK CONSTRAINT [FK_Consultorio_Estad_consult]
GO
ALTER TABLE [dbo].[Contabilidad]  WITH CHECK ADD  CONSTRAINT [FK_Contabilidad_Facturacion] FOREIGN KEY([fk_id_factura])
REFERENCES [dbo].[Facturacion] ([id_factura])
GO
ALTER TABLE [dbo].[Contabilidad] CHECK CONSTRAINT [FK_Contabilidad_Facturacion]
GO
ALTER TABLE [dbo].[Control_vacuna]  WITH CHECK ADD  CONSTRAINT [FK_Control_vacuna_Vacuna] FOREIGN KEY([fk_id_vacuna])
REFERENCES [dbo].[Vacuna] ([id_vacuna])
GO
ALTER TABLE [dbo].[Control_vacuna] CHECK CONSTRAINT [FK_Control_vacuna_Vacuna]
GO
ALTER TABLE [dbo].[Convenios]  WITH CHECK ADD  CONSTRAINT [FK_Convenios_Tipo_convenio] FOREIGN KEY([fk_id_tipo_convenio])
REFERENCES [dbo].[Tipo_convenio] ([id_tipo_convenio])
GO
ALTER TABLE [dbo].[Convenios] CHECK CONSTRAINT [FK_Convenios_Tipo_convenio]
GO
ALTER TABLE [dbo].[Detalle_factura]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_factura_Facturacion] FOREIGN KEY([fk_id_factura])
REFERENCES [dbo].[Facturacion] ([id_factura])
GO
ALTER TABLE [dbo].[Detalle_factura] CHECK CONSTRAINT [FK_Detalle_factura_Facturacion]
GO
ALTER TABLE [dbo].[Detalle_factura]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_factura_Ingreso_paciente] FOREIGN KEY([fk_id_ingreso_paciente])
REFERENCES [dbo].[Ingreso_paciente] ([id_ingreso_paciente])
GO
ALTER TABLE [dbo].[Detalle_factura] CHECK CONSTRAINT [FK_Detalle_factura_Ingreso_paciente]
GO
ALTER TABLE [dbo].[Detalle_factura]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_factura_Presentacion] FOREIGN KEY([fk_id_presentacion])
REFERENCES [dbo].[Presentacion] ([id_presentacion])
GO
ALTER TABLE [dbo].[Detalle_factura] CHECK CONSTRAINT [FK_Detalle_factura_Presentacion]
GO
ALTER TABLE [dbo].[Detalle_factura]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_factura_Salida_paciente] FOREIGN KEY([fk_id_salida_paciente])
REFERENCES [dbo].[Salida_paciente] ([id_ingreso_egreso])
GO
ALTER TABLE [dbo].[Detalle_factura] CHECK CONSTRAINT [FK_Detalle_factura_Salida_paciente]
GO
ALTER TABLE [dbo].[Diagnostico]  WITH CHECK ADD  CONSTRAINT [FK_Diagnostico_Pacientes] FOREIGN KEY([fk_doc_paciente])
REFERENCES [dbo].[Pacientes] ([doc_paciente])
GO
ALTER TABLE [dbo].[Diagnostico] CHECK CONSTRAINT [FK_Diagnostico_Pacientes]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Incapacidad] FOREIGN KEY([fk_id_incapacidad])
REFERENCES [dbo].[Incapacidad] ([id_incapacidad])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_Incapacidad]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Observacion_Paciente] FOREIGN KEY([fk_Id_observ_paciente])
REFERENCES [dbo].[Observacion_Paciente] ([Id_observ_paciente])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_Observacion_Paciente]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_pacientes] FOREIGN KEY([fk_id_tipo_evento])
REFERENCES [dbo].[Tipo_evento] ([id_tipo_evento])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_pacientes]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_pacientes1] FOREIGN KEY([fk_doc_paciente])
REFERENCES [dbo].[Pacientes] ([doc_paciente])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_pacientes1]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Tarifa] FOREIGN KEY([fk_id_tarifa])
REFERENCES [dbo].[Tarifa] ([id_tarifa])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_Tarifa]
GO
ALTER TABLE [dbo].[Facturacion]  WITH CHECK ADD  CONSTRAINT [FK_Facturacion_Pacientes] FOREIGN KEY([fk_doc_paciente])
REFERENCES [dbo].[Pacientes] ([doc_paciente])
GO
ALTER TABLE [dbo].[Facturacion] CHECK CONSTRAINT [FK_Facturacion_Pacientes]
GO
ALTER TABLE [dbo].[Formula_medica]  WITH CHECK ADD  CONSTRAINT [FK_Formula_medica_Evento] FOREIGN KEY([fk_id_evento])
REFERENCES [dbo].[Evento] ([id_evento])
GO
ALTER TABLE [dbo].[Formula_medica] CHECK CONSTRAINT [FK_Formula_medica_Evento]
GO
ALTER TABLE [dbo].[Formula_medica]  WITH CHECK ADD  CONSTRAINT [FK_Formula_medica_Medicamento] FOREIGN KEY([fk_id_medicam])
REFERENCES [dbo].[Medicamento] ([id_medicam])
GO
ALTER TABLE [dbo].[Formula_medica] CHECK CONSTRAINT [FK_Formula_medica_Medicamento]
GO
ALTER TABLE [dbo].[Hospitalizacion]  WITH CHECK ADD  CONSTRAINT [FK_Hospitalizacion_Est_hospitaliza] FOREIGN KEY([fk_id_est_hosp])
REFERENCES [dbo].[Est_hospitaliza] ([id_est_hosp])
GO
ALTER TABLE [dbo].[Hospitalizacion] CHECK CONSTRAINT [FK_Hospitalizacion_Est_hospitaliza]
GO
ALTER TABLE [dbo].[Hospitalizacion]  WITH CHECK ADD  CONSTRAINT [FK_Hospitalizacion_Pacientes] FOREIGN KEY([fk_doc_paciente])
REFERENCES [dbo].[Pacientes] ([doc_paciente])
GO
ALTER TABLE [dbo].[Hospitalizacion] CHECK CONSTRAINT [FK_Hospitalizacion_Pacientes]
GO
ALTER TABLE [dbo].[Hospitalizacion]  WITH CHECK ADD  CONSTRAINT [FK_Hospitalizacion_tipo_cama] FOREIGN KEY([fk_id_tipo_cama])
REFERENCES [dbo].[tipo_cama] ([id_tipo_cama])
GO
ALTER TABLE [dbo].[Hospitalizacion] CHECK CONSTRAINT [FK_Hospitalizacion_tipo_cama]
GO
ALTER TABLE [dbo].[Hospitalizacion]  WITH CHECK ADD  CONSTRAINT [FK_Hospitalizacion_Visitantes] FOREIGN KEY([fk_document_visit])
REFERENCES [dbo].[Visitantes] ([document_visit])
GO
ALTER TABLE [dbo].[Hospitalizacion] CHECK CONSTRAINT [FK_Hospitalizacion_Visitantes]
GO
ALTER TABLE [dbo].[Ingreso_paciente]  WITH CHECK ADD  CONSTRAINT [FK_Ingreso_paciente_Pacientes] FOREIGN KEY([fk_doc_paciente])
REFERENCES [dbo].[Pacientes] ([doc_paciente])
GO
ALTER TABLE [dbo].[Ingreso_paciente] CHECK CONSTRAINT [FK_Ingreso_paciente_Pacientes]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Proveedor] FOREIGN KEY([fk_id_proveedor])
REFERENCES [dbo].[Proveedor] ([id_proveedor])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Proveedor]
GO
ALTER TABLE [dbo].[Laboratorio]  WITH CHECK ADD  CONSTRAINT [FK_Laboratorio_Tipo_evento] FOREIGN KEY([fk_id_tipo_evento])
REFERENCES [dbo].[Tipo_evento] ([id_tipo_evento])
GO
ALTER TABLE [dbo].[Laboratorio] CHECK CONSTRAINT [FK_Laboratorio_Tipo_evento]
GO
ALTER TABLE [dbo].[Medicamento]  WITH CHECK ADD  CONSTRAINT [FK_Medicamento_Est_medicamento] FOREIGN KEY([fk_id_est_medicam])
REFERENCES [dbo].[Est_medicamento] ([id_est_medicam])
GO
ALTER TABLE [dbo].[Medicamento] CHECK CONSTRAINT [FK_Medicamento_Est_medicamento]
GO
ALTER TABLE [dbo].[Medicamento]  WITH CHECK ADD  CONSTRAINT [FK_Medicamento_Inventario] FOREIGN KEY([fk_id_inventario])
REFERENCES [dbo].[Inventario] ([id_inventario])
GO
ALTER TABLE [dbo].[Medicamento] CHECK CONSTRAINT [FK_Medicamento_Inventario]
GO
ALTER TABLE [dbo].[Medicamento_presentac]  WITH CHECK ADD  CONSTRAINT [FK_Medicamento_presentac_Medicamento1] FOREIGN KEY([fk_id_medicam])
REFERENCES [dbo].[Medicamento] ([id_medicam])
GO
ALTER TABLE [dbo].[Medicamento_presentac] CHECK CONSTRAINT [FK_Medicamento_presentac_Medicamento1]
GO
ALTER TABLE [dbo].[Medicamento_presentac]  WITH CHECK ADD  CONSTRAINT [FK_Medicamento_presentac_Presentacion] FOREIGN KEY([fk_id_presentacion])
REFERENCES [dbo].[Presentacion] ([id_presentacion])
GO
ALTER TABLE [dbo].[Medicamento_presentac] CHECK CONSTRAINT [FK_Medicamento_presentac_Presentacion]
GO
ALTER TABLE [dbo].[Pacientes]  WITH CHECK ADD  CONSTRAINT [FK_pacientes_Genero] FOREIGN KEY([fk_id_genero])
REFERENCES [dbo].[Genero] ([id_genero])
GO
ALTER TABLE [dbo].[Pacientes] CHECK CONSTRAINT [FK_pacientes_Genero]
GO
ALTER TABLE [dbo].[Pacientes]  WITH CHECK ADD  CONSTRAINT [FK_pacientes_Tipo_Afiliacion] FOREIGN KEY([fk_id_tipo_afiliacion])
REFERENCES [dbo].[Tipo_Afiliacion] ([id_tipo_afiliacion])
GO
ALTER TABLE [dbo].[Pacientes] CHECK CONSTRAINT [FK_pacientes_Tipo_Afiliacion]
GO
ALTER TABLE [dbo].[Pacientes]  WITH CHECK ADD  CONSTRAINT [FK_pacientes_Tipo_documento] FOREIGN KEY([fk_tipo_documento])
REFERENCES [dbo].[Tipo_documento] ([tipo_documento])
GO
ALTER TABLE [dbo].[Pacientes] CHECK CONSTRAINT [FK_pacientes_Tipo_documento]
GO
ALTER TABLE [dbo].[Pacientes]  WITH CHECK ADD  CONSTRAINT [FK_pacientes_Tipo_RH] FOREIGN KEY([fk_Id_tipo_rh])
REFERENCES [dbo].[Tipo_RH] ([id_tipo_rh])
GO
ALTER TABLE [dbo].[Pacientes] CHECK CONSTRAINT [FK_pacientes_Tipo_RH]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Ciudad] FOREIGN KEY([fk_id_sede])
REFERENCES [dbo].[Sedes] ([id_sede])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Ciudad]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Tipo_documento] FOREIGN KEY([fk_tipo_documento])
REFERENCES [dbo].[Tipo_documento] ([tipo_documento])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Tipo_documento]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Tipo_personal] FOREIGN KEY([fk_id_tipo_persona])
REFERENCES [dbo].[Tipo_personal] ([id_tipo_persona])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Tipo_personal]
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Proveedor_Tipo_proveedor] FOREIGN KEY([fk_id_tipo_proveedor])
REFERENCES [dbo].[Tipo_proveedor] ([id_tipo_proveedor])
GO
ALTER TABLE [dbo].[Proveedor] CHECK CONSTRAINT [FK_Proveedor_Tipo_proveedor]
GO
ALTER TABLE [dbo].[Radiologia]  WITH CHECK ADD  CONSTRAINT [FK_Radiologia_Tipo_evento] FOREIGN KEY([fk_id_tipo_evento])
REFERENCES [dbo].[Tipo_evento] ([id_tipo_evento])
GO
ALTER TABLE [dbo].[Radiologia] CHECK CONSTRAINT [FK_Radiologia_Tipo_evento]
GO
ALTER TABLE [dbo].[Salida_paciente]  WITH CHECK ADD  CONSTRAINT [FK_Salida_paciente_Ingreso_paciente] FOREIGN KEY([fk_id_ingreso_paciente])
REFERENCES [dbo].[Ingreso_paciente] ([id_ingreso_paciente])
GO
ALTER TABLE [dbo].[Salida_paciente] CHECK CONSTRAINT [FK_Salida_paciente_Ingreso_paciente]
GO
ALTER TABLE [dbo].[Sedes]  WITH CHECK ADD  CONSTRAINT [fk_Ciudad_id_ciudad] FOREIGN KEY([fk_id_ciudad])
REFERENCES [dbo].[Ciudad] ([id_ciudad])
GO
ALTER TABLE [dbo].[Sedes] CHECK CONSTRAINT [fk_Ciudad_id_ciudad]
GO
ALTER TABLE [dbo].[Servicios_urgencia]  WITH CHECK ADD  CONSTRAINT [FK_Servicios_urgencia_Tipo_evento] FOREIGN KEY([fk_id_tipo_evento])
REFERENCES [dbo].[Tipo_evento] ([id_tipo_evento])
GO
ALTER TABLE [dbo].[Servicios_urgencia] CHECK CONSTRAINT [FK_Servicios_urgencia_Tipo_evento]
GO
ALTER TABLE [dbo].[Subdireccion]  WITH CHECK ADD  CONSTRAINT [FK_Subdireccion_Tipo_subdireccion] FOREIGN KEY([fk_id_tipo_subdireccion])
REFERENCES [dbo].[Tipo_subdireccion] ([id_tipo_subdireccion])
GO
ALTER TABLE [dbo].[Subdireccion] CHECK CONSTRAINT [FK_Subdireccion_Tipo_subdireccion]
GO
ALTER TABLE [dbo].[Tarifa]  WITH CHECK ADD  CONSTRAINT [FK_Tarifa_Tipo_tarifa] FOREIGN KEY([fk_id_tipo_tarifa])
REFERENCES [dbo].[Tipo_tarifa] ([id_tipo_tarifa])
GO
ALTER TABLE [dbo].[Tarifa] CHECK CONSTRAINT [FK_Tarifa_Tipo_tarifa]
GO
ALTER TABLE [dbo].[Tipo_Afiliacion]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_Afiliacion_Convenios] FOREIGN KEY([fk_id_convenio])
REFERENCES [dbo].[Convenios] ([id_convenio])
GO
ALTER TABLE [dbo].[Tipo_Afiliacion] CHECK CONSTRAINT [FK_Tipo_Afiliacion_Convenios]
GO
ALTER TABLE [dbo].[Tipo_empleado]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_empleado_tipo_contrato] FOREIGN KEY([fk_id_tipo_contrato])
REFERENCES [dbo].[tipo_contrato] ([id_tipo_contrato])
GO
ALTER TABLE [dbo].[Tipo_empleado] CHECK CONSTRAINT [FK_Tipo_empleado_tipo_contrato]
GO
ALTER TABLE [dbo].[Tipo_empleado]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_empleado_Tipo_subdireccion] FOREIGN KEY([fk_id_tipo_subdireccion])
REFERENCES [dbo].[Tipo_subdireccion] ([id_tipo_subdireccion])
GO
ALTER TABLE [dbo].[Tipo_empleado] CHECK CONSTRAINT [FK_Tipo_empleado_Tipo_subdireccion]
GO
ALTER TABLE [dbo].[Tipo_empleado]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_empleado_Turnos] FOREIGN KEY([fk_id_turno])
REFERENCES [dbo].[Turnos] ([id_turno])
GO
ALTER TABLE [dbo].[Tipo_empleado] CHECK CONSTRAINT [FK_Tipo_empleado_Turnos]
GO
ALTER TABLE [dbo].[Tipo_personal]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_personal_Nomina] FOREIGN KEY([fk_id_nomina])
REFERENCES [dbo].[Nomina] ([id_nomina])
GO
ALTER TABLE [dbo].[Tipo_personal] CHECK CONSTRAINT [FK_Tipo_personal_Nomina]
GO
ALTER TABLE [dbo].[Tipo_personal]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_personal_Tipo_empleado] FOREIGN KEY([fk_id_tipo_empleado])
REFERENCES [dbo].[Tipo_empleado] ([id_tipo_empleado])
GO
ALTER TABLE [dbo].[Tipo_personal] CHECK CONSTRAINT [FK_Tipo_personal_Tipo_empleado]
GO
ALTER TABLE [dbo].[Turnos]  WITH CHECK ADD  CONSTRAINT [FK_Turnos_Entrada_personal] FOREIGN KEY([fk_id_entrada_personal])
REFERENCES [dbo].[Entrada_personal] ([id_entrada_personal])
GO
ALTER TABLE [dbo].[Turnos] CHECK CONSTRAINT [FK_Turnos_Entrada_personal]
GO
ALTER TABLE [dbo].[Turnos]  WITH CHECK ADD  CONSTRAINT [FK_Turnos_Salida_personal] FOREIGN KEY([fk_id_salida_personal])
REFERENCES [dbo].[Salida_personal] ([id_salida_personal])
GO
ALTER TABLE [dbo].[Turnos] CHECK CONSTRAINT [FK_Turnos_Salida_personal]
GO
ALTER TABLE [dbo].[Vacuna]  WITH CHECK ADD  CONSTRAINT [FK_Vacuna_Estado_vacuna] FOREIGN KEY([fk_id_estado_vacuna])
REFERENCES [dbo].[Estado_vacuna] ([id_estado_vacuna])
GO
ALTER TABLE [dbo].[Vacuna] CHECK CONSTRAINT [FK_Vacuna_Estado_vacuna]
GO
ALTER TABLE [dbo].[Vacuna]  WITH CHECK ADD  CONSTRAINT [FK_Vacuna_Presentacion] FOREIGN KEY([fk_id_presentacion])
REFERENCES [dbo].[Presentacion] ([id_presentacion])
GO
ALTER TABLE [dbo].[Vacuna] CHECK CONSTRAINT [FK_Vacuna_Presentacion]
GO
USE [master]
GO
ALTER DATABASE [BD_ClinicaImperial] SET  READ_WRITE 
GO
