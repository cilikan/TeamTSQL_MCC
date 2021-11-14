-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
USE [db_hr]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
ALTER FUNCTION f_hitung_naik_gaji
(
	@employee_id as varchar(20),
	@kenaikan as decimal (15,2)
)
RETURNS decimal (15,2)
AS
BEGIN
	declare @salary decimal, @total decimal
	select @salary = salary from employees where employees.id = @employee_id
	set @kenaikan = @salary*@kenaikan
	set @total = @salary + @kenaikan
	return @total
END
GO


