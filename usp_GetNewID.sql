/*
=======================================================
存储过程名称：[dbo].[usp_GetNewID]
编写者：WANGYX
编写时间：2015/11/13 10:57:18
作用描述：生成Id
------------------------------------------------------
修改者：
修改时间：
修改描述：
=======================================================
*/
ALTER PROCEDURE [dbo].[usp_GetNewID]
    @TableName VARCHAR(50),
    @TableID BIGINT OUTPUT,
    @RequestAmount INT=1--生成Id个数
AS
BEGIN
    DECLARE @TblName_Count INT
    IF (@RequestAmount<=0)
    BEGIN
        SET @RequestAmount=1
    END
    SELECT @TblName_Count=COUNT(1) FROM [dbo].Sys_Tables
    WHERE [TableName]=@TableName
    IF (@TblName_Count=0)
    BEGIN
        INSERT INTO [dbo].Sys_Tables VALUES (@TableName,@RequestAmount,GETDATE()) 
        SET @TableID=@RequestAmount
    END
    ELSE
    BEGIN
        UPDATE [dbo].Sys_Tables SET @TableID=[TableID]=[TableID]+@RequestAmount
        WHERE [TableName]=@TableName
    END
END