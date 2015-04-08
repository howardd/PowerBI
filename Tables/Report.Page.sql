CREATE TABLE [Report].[Page]
(
[PageID] [int] NOT NULL IDENTITY(1, 1),
[DefinitionID] [int] NOT NULL,
[PageNumber] [int] NOT NULL,
[PageTitle] [varchar] (1024) COLLATE Latin1_General_CI_AS NOT NULL,
[PageLogoURL] [varchar] (255) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Report].[Page] ADD CONSTRAINT [PK_Report_Page] PRIMARY KEY CLUSTERED  ([PageID]) ON [PRIMARY]
GO
ALTER TABLE [Report].[Page] ADD CONSTRAINT [UQ_Report_Page] UNIQUE NONCLUSTERED  ([DefinitionID], [PageNumber]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FK_Report_Definition] ON [Report].[Page] ([DefinitionID]) INCLUDE ([PageLogoURL], [PageNumber], [PageTitle]) ON [PRIMARY]
GO
ALTER TABLE [Report].[Page] ADD CONSTRAINT [FK_Report_Definition] FOREIGN KEY ([DefinitionID]) REFERENCES [Report].[Definition] ([DefinitionID])
GO
