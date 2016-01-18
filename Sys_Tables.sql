IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_Tables]') AND type in (N'U'))
DROP TABLE [dbo].[Sys_Tables]
GO

CREATE TABLE [dbo].[Sys_Tables](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [varchar](100) NOT NULL,
	[TableID] [bigint] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Sys_Tables_1] PRIMARY KEY CLUSTERED 
(
	[TableName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Tables', @level2type=N'COLUMN',@level2name=N'TableName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表主键编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Tables', @level2type=N'COLUMN',@level2name=N'TableID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Tables', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Tables'
GO


