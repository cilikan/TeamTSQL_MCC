-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
USE [db_hr2]
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
CREATE TRIGGER tg_after_update_employee2
   ON tb_employee
   AFTER UPDATE, INSERT
AS 
BEGIN
	declare @temp1 int, @temp2 int
	select @temp1 = job_id from deleted
	select @temp2 = department_id from deleted

	insert into tb_job_history (job_id, department_id) values (@temp1, @temp2);

END
GO
