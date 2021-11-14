-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
USE [db_hr]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE sp_kenaikan_gaji
	@id_pegawai varchar(20),
	@persen_kenaikan decimal(15,2)
AS
BEGIN
	DECLARE @total_gaji_naik decimal (15,2)
	SET @total_gaji_naik = dbo.f_hitung_naik_gaji(@id_pegawai, @persen_kenaikan)
	SELECT @id_pegawai as id, salary from employees where employees.id = @id_pegawai
	SELECT @id_pegawai as id, @total_gaji_naik as Gaji_Naik

END
GO

exec sp_kenaikan_gaji 10101, 0.3

